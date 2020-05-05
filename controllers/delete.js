const AgentSupplier = require('../models/agent_supplier')
const ClinicalEngineer=require('../models/clinical_engineer')
const Equipment =require('../models/equipment')
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


 exports.deleteEquipment=(req,res)=>{
    code=req.params.id
    Equipment.findByPk(code).then(equipment =>{ 
     equipment.destroy()
     res.redirect('/equipment')
 })
     .catch(err => console.log("ERROR!!!!!!",err) )
 }

 


