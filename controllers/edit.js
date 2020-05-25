const AgentSupplier = require('../models/agent_supplier');
const ClinicalEngineer = require('../models/clinical_engineer');
const Equipment =require('../models/equipment')
const SparePart =require('../models/spare_part');
const BreakDown =require('../models/break_down');
const WorkOrder =require('../models/work_order');
const Maintenance =require('../models/maintenance');




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
    .catch(err => res.render('error',{layout:false,pageTitle:'Error',href:'/agentSupplier',message:'Sorry !!! Could Not Get this Agent'}))
    
 
 
 }



exports.editClinicalEngineer=(req,res) => {
    dssn=req.params.id
    ClinicalEngineer.findOne({where:{DSSN:dssn},include:[{model:Department}]}).then(clinicalEngineer => { 
        const cs = {
              FName: clinicalEngineer.FName,
              LName: clinicalEngineer.LName,
              DSSN: clinicalEngineer.DSSN,
              Adress: clinicalEngineer.Adress,
              Phone:clinicalEngineer.Phone,
              WorkHours:clinicalEngineer.WorkHours,
              Email:clinicalEngineer.Email,
              Age:clinicalEngineer.Age,
              Image:clinicalEngineer.Image,
              OR:clinicalEngineer.Department.Name =='OR' ? true : false,
              CSSD:clinicalEngineer.Department.Name =='CSSD' ? true:false,
              ICU:clinicalEngineer.Department.Name=='ICU' ? true:false,
              Radiology:clinicalEngineer.Department.Name == 'Radiology' ? true:false
            }
    
    console.log(cs)    
    res.render('editClinicalEngineer',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
                                     CE:true,clinicalEngineer:cs});
 })
 .catch(err => 
   {
   console.log(err)
   res.render('error',{layout:false,pageTitle:'Error',href:'/agentSupplier',message:'Sorry !!! Could Not Get this Engineer'})
   })
 
 }





 exports.editEquipment=(req,res)=>{
    code=req.params.id
    console.log("here")
    Equipment.findOne({where:{Code:code},include:[{model:Department}]}).then(equipment => {
        const eq = {
              Code: equipment.Code,
              Name: equipment.Name,
              Cost: equipment.Cost,
              InstallationDate: equipment.InstallationDate,
              WarrantyDate: equipment.WarrantyDate,
              ArrivalDate: equipment.InstallationDate,
              Model:equipment.Model,
              SerialNumber:equipment.SerialNumber,
              Manufacturer:equipment.Manufacturer,
              Location:equipment.Location,
              Notes:equipment.Notes,
              PM:equipment.PM,
              Image:equipment.Image,
              DepartmentCode:equipment.DepartmentCode,
              AgentSupplierId:equipment.AgentSupplierId,
              OR:equipment.Department.Name =='OR' ? true : false,
              CSSD:equipment.Department.Name =='CSSD' ? true:false,
              ICU:equipment.Department.Name=='ICU' ? true:false,
              Radiology:equipment.Department.Name == 'Radiology' ? true:false
            }
   if(eq.PM =="Annualy"){
      res.render('editEquipment',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
                                       Equipment:true,equipment:eq,A:true});

   }else{
      res.render('editEquipment',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
            Equipment:true,equipment:eq,M:true});
   }     
   // res.render('editEquipment',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
   //                                    Equipment:true,equipment:eq});  
    
        
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
             Image:sparePart.Image,
             AgentSupplierId:sparePart.AgentSupplierId,
             EquipmentCode:sparePart.EquipmentCode
           }
       
   res.render('editSparePart',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
                                    SP:true,sparePart:sp});
})
   .catch(err => console.log("ERROR!!!!!!",err) )


}

exports.editBreakDown=(req,res)=>{
   code=req.params.id
   BreakDown.findByPk(code).then(breakDown =>{ 
       const bd = {
         Code:breakDown.Code,
         Reason:breakDown.Reason,
         DATE:breakDown.DATE,
         EquipmentCode:breakDown.EquipmentCode
           }
   
       
   res.render('editBreakDown',{layout:'main-layout.handlebars' ,pageTitle:'Edit',
                                                   BreakDown:true,breakDown:bd});
})
   .catch(err => console.log("ERROR!!!!!!",err) )


}

exports.editWorkOrder=(req,res)=>{
   code = req.params.id
   WorkOrder.findByPk(code).then(workOrder=>{
      const wd = {
         Code:workOrder.Code,
         Cost:workOrder.Cost,
         StartDate:workOrder.StartDate,
         EndDate:workOrder.EndDate,
         Description:workOrder.Description,
         EquipmentCode:workOrder.EquipmentCode,
         Priority:workOrder.Priority,
         med:workOrder.Priority=='Medium'?true:false,
         high:workOrder.Priority=='High'?true:false,
         low:workOrder.Priority=='Low'?true:false,
         ClinicalEnginnerDSSN:workOrder.ClinicalEnginnerDSSN 

      }

   res.render('editWorkOrder',{layout:'main-layout.handlebars',pageTitle:'Edit',
                                       WO:true,workOrder:wd});



   })

     .catch(err=>console.log("errorrrrr",err))

}


exports.editMaintenance=(req,res)=>{
   id = req.params.id
   Maintenance.findByPk(id).then(maintenance=>{
      const m = {
         Id:maintenance.Id,
         StartDate:maintenance.StartDate,
         EndDate:maintenance.EndDate,
         BreakDownCode:maintenance.BreakDownCode,
         Description:maintenance.Description,
         ClinicalEnginnerDSSN:maintenance.ClinicalEnginnerDSSN
         
      }

   res.render('editMaintenance',{layout:'main-layout.handlebars',pageTitle:'Edit',
                                       Maintenance:true,maintenance:m});



   })

     .catch(err=>console.log("errorrrrr",err))

}