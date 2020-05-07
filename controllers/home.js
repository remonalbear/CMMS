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
Department.findAll({
    include:[{model:ClinicalEngineer},{model:Equipment}]
    }).then(departments => {
        const deps = departments.map(department => {
            console.log(department)        
            return {
                        Name: department.Name,
                        Code: department.Code,
                        Location: department.Location,
                        Engineers:department.ClinicalEnginners.length,
                        Equipments:department.Equipment.length
                    }
                })      

    res.render('department',{pageTitle:'Department',
                            Department:true,
                            departments:deps,
                            hasDepartment:deps.length>0});
                    
}).catch(err => {
    if(err)    
        res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get Departments'})
    })


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
    .catch(err => {
        if(err)
         res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get Engineers'})
    })
    
}

exports.sparePart=(req,res)=>{
    SparePart.findAll({include:[{model:AgentSupplier}]}).then(sparepart => {
        const sp = sparepart.map(sparepart => {
                  return {
                    Code:sparepart.Code,
                    Name:sparepart.Name,
                    Amount:sparepart.Amount,
                    AgentSupplierId:sparepart.AgentSupplier.dataValues.Id,
                    AgentSupplierName:sparepart.AgentSupplier.dataValues.Name
                  }
                })
    res.render('sparePart',{pageTitle:'SpareParts',SP:true,SpareParts:sp,
                                                    hasPart:sp.length>0});
}).catch( err=> {
    if (err)
     res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get Spare Parts'})
})
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
    }).catch(err => {
        if(err)
        res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get Agents'})
    })
}

exports.workOrder=(req,res)=>{

  WorkOrder.findAll().then(workorders => {
        const wd = workorders.map(workD => {
                  return {
                    Code:workD.Code,
                    Cost:workD.Cost,
                    DATE:workD.DATE,
                    EquipmentCode:workD.EquipmentCode,
                    Priority:workD.Priority,
                    ClinicalEngineerDSSN:workD.ClinicalEngineerDSSN             
                  }
                })

    res.render('workOrder',{pageTitle:'WorkOrder',
                                WorkOrder:true,WorkOrders:wd,
                                hasWorkOrder:wd.length>0});
    }).catch(err => {
        if(err)
          console.log(err)
          res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get WorkOrders'})
    })
// res.render('workOrder',{pageTitle:'WorkOrder',WorkOrder:true});

}

exports.breakDown=(req,res)=>{
    BreakDown.findAll().then(breakdowns => {
        const bd = breakdowns.map(breakD => {
                  return {
                    Code:breakD.Code,
                    Reason:breakD.Reason,
                    DATE:breakD.DATE,
                    EquipmentCode:breakD.EquipmentCode
                  }
                })

    res.render('breakDown',{pageTitle:'BreakDown',
                                BreakDown:true,breakDowns:bd,
                                hasBreakDown:bd.length>0});
    }).catch(err => {
        if(err)
        res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get BreakDowns'})
    })
}

exports.equipment=(req,res)=>{
    Equipment.findAll({
        include:[{model:Department},{model:AgentSupplier}]
        }).then(equipments => {
        const eq = equipments.map(equipment => {
                  return {
                    Code: equipment.Code,
                    Name: equipment.Name,
                    Cost: equipment.Cost,
                    InstallationDate: equipment.InstallationDate,
                    ModelNumber:equipment.ModelNumber,
                    SerialNumber:equipment.SerialNumber,
                    Manufacturer:equipment.Manufacturer,
                    Location:equipment.Location,
                    DepartmentCode:equipment.Department.dataValues.Name,
                    AgentSupplierId:equipment.AgentSupplier.dataValues.Name
                  }
                })
        res.render('equipment',{pageTitle:'Equipment',Equipment:true,
                                equipments:eq,hasEquipments:eq.length>0});
    }).catch( err => {
        if(err)
         res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get Equipments'})
        })


   
}










