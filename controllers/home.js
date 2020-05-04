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
   if(email == 'admin@gmail.com' && pass==0000){
    res.redirect('/home');  
   }
   else{
       ClinicalEngineer.findOne({where:{Email:email}}).then(clinicalengineer => {
           if(clinicalengineer){
            bcrypt.compare(pass, clinicalengineer.Password).then(result => {
                if(result)
                 res.redirect('/home');  
                else
                 res.redirect('/')    
                })
           }
           else
           res.redirect('/')    
            
       })
   }
   
}

exports.home=(req,res) =>{
    res.render('home',{pageTitle:'Home',Home:true});
}


exports.department=(req,res)=>{
var engs=[]
Department.findAll({include:[{model:ClinicalEngineer}]}).then(departments => {
        const deps = departments.map(department => {
                    return {
                        Name: department.Name,
                        Code: department.Code,
                        Location: department.Location,
                        Engineers:department.ClinicalEnginners.length,
                        Equipments:0
                    }
                })      

console.log(engs)
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
    ClinicalEngineer.findAll().then(clinicalEngineers=>{
        const clinicalengineers=clinicalEngineers.map(clinicalengineer => {     
            return{
                DSSN:clinicalengineer.DSSN,
                FName:clinicalengineer.FName,
                LName:clinicalengineer.LName,
                Adress:clinicalengineer.Adress,
                Phone:clinicalengineer.Phone,
                Email:clinicalengineer.Email,
                Age:clinicalengineer.Age,
                WorkHours:clinicalengineer.WorkHours,
                DepartmentCode:clinicalengineer.DepartmentCode
            }

        })
        clinicalengineers.map(clinicalEngineer => {
            Department.findOne({where:{Code:clinicalEngineer.DepartmentCode}}).then(department => {
                clinicalEngineer.DepartmentCode=department.dataValues.Name
        })
            
        }) 
        res.render('clinicalEngineer',{pageTitle:'clinicalEngineer',CE:true,
                                clinicalEngineers:clinicalengineers,hasEngineers:clinicalengineers.length>0});
    })

    
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










