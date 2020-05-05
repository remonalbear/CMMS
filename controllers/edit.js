const AgentSupplier = require('../models/agent_supplier');
const ClinicalEngineer = require('../models/clinical_engineer');
const Equipment =require('../models/equipment')
const SparePart =require('../models/spare_part');

exports.editAgentSupplier=(req,res)=>{
    id=req.params.id
    AgentSupplier.findByPk(id).then(agentSupplier =>{ 
        const as = {
              Name: agentSupplier.Name,
              Id: agentSupplier.Id,
              Adress: agentSupplier.Adress,
              Phone:agentSupplier.Phone,
              Email:agentSupplier.Email,
              Notes:agentSupplier.Notes
            }
    
        
    res.render('editAgentSupplier',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
                                     AS:true,agentSupplier:as});
 })
    .catch(err => console.log("ERROR!!!!!!",err) )
 
 
 }



exports.editClinicalEngineer=(req,res) => {
    dssn=req.params.id
    ClinicalEngineer.findByPk(dssn).then(clinicalEngineer => { 
        const cs = {
              FName: clinicalEngineer.FName,
              LName: clinicalEngineer.LName,
              DSSN: clinicalEngineer.DSSN,
              Adress: clinicalEngineer.Adress,
              Phone:clinicalEngineer.Phone,
              WorkHours:clinicalEngineer.WorkHours,
              Email:clinicalEngineer.Email,
              Department:clinicalEngineer.Department,
              Age:clinicalEngineer.Age
            }
    
        
    res.render('editClinicalEngineer',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
                                     CE:true,clinicalEngineer:cs});
 })
    .catch(err => console.log("ERROR!!!!!!",err) )
 
 
 }



 exports.editEquipment=(req,res)=>{
    code=req.params.id
    Equipment.findByPk(code).then(equipment => { 
        const eq = {
              Code: equipment.Code,
              Name: equipment.Name,
              Cost: equipment.Cost,
              InstallationDate: equipment.InstallationDate,
              ModelNumber:equipment.ModelNumber,
              SerialNumber:equipment.SerialNumber,
              Manufacturer:equipment.Manufacturer,
              Location:equipment.Location,
              DepartmentCode:equipment.DepartmentCode,
              AgentSupplierId:equipment.AgentSupplierId
            }
    
        
    res.render('editEquipment',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
                                     Equipment:true,equipment:eq});
 })
    .catch(err => console.log("ERROR!!!!!!",err) )

 }



 exports.editSparePart=(req,res)=>{
   code=req.params.id
   SparePart.findByPk(code).then(sparePart =>{ 
       const sp = {
             Name: sparePart.Name,
             Code: sparePart.Code,
             Amount:sparePart.Amount,
             AgentSupplierId:sparePart.AgentSupplierId
           }
   
       
   res.render('editSparePart',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
                                    SP:true,sparePart:sp});
})
   .catch(err => console.log("ERROR!!!!!!",err) )


}