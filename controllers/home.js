const bcrypt = require('bcryptjs')
const Department =require('../models/department');
const AgentSupplier =require('../models/agent_supplier');
const BreakDown =require('../models/break_down');
const ClinicalEngineer =require('../models/clinical_engineer');
const Equipment =require('../models/equipment');
const Maintenance =require('../models/maintenance');
const SparePart =require('../models/spare_part');
const WorkOrder=require('../models/work_order');




exports.homeSignIn=(req,res) => {
    res.render('homeSignIn',{layout:false});
}


exports.signIn=(req,res) => {
   email=req.body.email
   pass=req.body.password
    res.redirect('/home');  
}

exports.home=(req,res) =>{
    res.render('home',{pageTitle:'Home',Home:true});
}


exports.department=(req,res)=>{
Department.findAll().then(departments => {
const deps = departments.map(department => {
          return {
            Name: department.Name,
            Code: department.Code,
            Location: department.Location
          }
        })
      
res.render('department',{pageTitle:'Department',
                        Department:true,
                        departments:deps,
                        hasDepartment:deps.length>0});
                    
}).catch(err => console.log("ERROR!!!!!!",err))

}

exports.maintenance=(req,res)=>{


    res.render('maintenance',{pageTitle:'Maintenance',Maintenance:true});
}


exports.clinicalEngineer=(req,res)=>{


    res.render('clinicalEngineer',{pageTitle:'clinicalEngineer',CE:true});
}

exports.sparePart=(req,res)=>{


    res.render('sparePart',{pageTitle:'SpareParts',SP:true});
}

exports.agentSupplier=(req,res)=>{
    AgentSupplier.findAll().then(agentsuppliers => {
        const as = agentsuppliers.map(agentsupplier => {
                  return {
                    Name: agentsupplier.Name,
                    Id: agentsupplier.Id,
                    Adress: agentsupplier.Adress,
                    Phone:agentsupplier.Phone,
                    Email:agentsupplier.Email,
                    Notes:agentsupplier.Notes
                  }
                })

    res.render('agentSupplier',{pageTitle:'AgentSupplier',
                                AS:true,agentSuppliers:as,
                                hasAgentSupplier:as.length>0});
    }).catch(err => console.log("ERROR!!!!!!",err))
}

exports.workOrder=(req,res)=>{


    res.render('workOrder',{pageTitle:'WorkOrder',WO:true});
}

exports.breakDown=(req,res)=>{


    res.render('breakDown',{pageTitle:'breakDown',BreakDown:true});
}

exports.equipment=(req,res)=>{


    res.render('equipment',{pageTitle:'Equipment',Equipment:true});
}










// bcrypt.genSalt(10, (err, salt) => {
//     bcrypt.hash(pass, salt, (err, hash) => {
        
//     });
           
// });