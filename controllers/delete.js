const AgentSupplier = require('../models/agent_supplier')

exports.deleteAgentSupplier=(req,res)=>{
    id=req.params.id
    AgentSupplier.findByPk(id).then(agentSupplier =>{ 
     agentSupplier.destroy()
     res.redirect('/agentSupplier')
 })
     .catch(err => console.log("ERROR!!!!!!",err) )
 
 
 }



