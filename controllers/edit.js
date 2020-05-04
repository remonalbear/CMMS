const AgentSupplier = require('../models/agent_supplier');
const ClinicalEngineer = require('../models/clinical_engineer');

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

