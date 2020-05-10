const AgentSupplier = require('../models/agent_supplier')
const ClinicalEngineer=require('../models/clinical_engineer')
const Equipment =require('../models/equipment')
const SparePart=require('../models/spare_part')
const BreakDown=require('../models/break_down')
const WorkOrder=require('../models/work_order')
const Maintenance = require('../models/maintenance')


exports.deleteAgentSupplier=(req,res)=>{
    id=req.params.id
    AgentSupplier.findByPk(id).then(agentSupplier =>{ 
     agentSupplier.destroy().then(res.redirect('/agentSupplier'))
     
 })
     .catch(err => console.log("ERROR!!!!!!",err) )
 
 
 }


 exports.deleteClinicalEngineer=(req,res)=>{
    dssn=req.params.id
    ClinicalEngineer.findByPk(dssn).then(clinicalEngineer =>{ 
     clinicalEngineer.destroy().then( res.redirect('/clinicalEngineer'))
    
 })
    .catch(err => console.log("ERROR!!!!!!",err) )
 
 
 }


 exports.deleteEquipment=(req,res)=>{
    code=req.params.id
    Equipment.findByPk(code).then(equipment =>{ 
     equipment.destroy().then(res.redirect('/equipment'))
     
 })
    .catch(err => console.log("ERROR!!!!!!",err) )
 }

 exports.deleteSparePart=(req,res)=>{
    code=req.params.id
    SparePart.findByPk(code).then(sparepart=>{ 
    sparepart.destroy().then(res.redirect('/sparePart'))
        
 })
    .catch(err => console.log("ERROR!!!!!!",err) )
 }


 exports.deleteBreakDown=(req,res)=>{
    code=req.params.id
    BreakDown.findByPk(code).then(breakdown=>{ 
    console.log(code)
     breakdown.destroy().then(res.redirect('/breakDown'))
     
 })
    .catch(err => console.log("ERROR!!!!!!",err) )
 }

 exports.deleteWorkOrder=(req,res)=>{
    code=req.params.id
    WorkOrder.findByPk(code).then(workorder=>{ 
    console.log(code)
     workorder.destroy().then( res.redirect('/workOrder'))
    
 })
    .catch(err => console.log("ERROR!!!!!!",err) )
 }

 exports.deleteMaintenance=(req,res)=>{
   code=req.params.id
   Maintenance.findByPk(code).then(maintenance=>{ 
   console.log(code)
    maintenance.destroy().then( res.redirect('/maintenance'))
   
})
   .catch(err => console.log("ERROR!!!!!!",err) )
}

