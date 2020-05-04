const AgentSupplier = require('../models/agent_supplier')
const ClinicalEngineer=require('../models/clinical_engineer')
exports.deleteAgentSupplier=(req,res)=>{
    id=req.params.id
    AgentSupplier.findByPk(id).then(agentSupplier =>{ 
     agentSupplier.destroy()
     res.redirect('/agentSupplier')
 })
     .catch(err => console.log("ERROR!!!!!!",err) )
 
 
 }


 exports.deleteClinicalEngineer=(req,res)=>{
    dssn=req.params.id
    ClinicalEngineer.findByPk(dssn).then(clinicalEngineer =>{ 
     clinicalEngineer.destroy()
     res.redirect('/clinicalEngineer')
 })
     .catch(err => console.log("ERROR!!!!!!",err) )
 
 
 }


 


