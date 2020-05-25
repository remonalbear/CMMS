const bcrypt = require('bcryptjs')
const Department =require('../models/department');
const AgentSupplier =require('../models/agent_supplier');
const BreakDown =require('../models/break_down');
const ClinicalEngineer =require('../models/clinical_engineer');
const Equipment =require('../models/equipment');
const Maintenance =require('../models/maintenance');
const SparePart =require('../models/spare_part');
const WorkOrder=require('../models/work_order');
const DailyInspection = require('../models/dialy_inspection');
const PpmQuestions =require('../models/ppm_questions')
const PPM =require('../models/ppm')
const moment=require('moment')

exports.homeSignIn=(req,res) => {
    res.render('newHome',{layout:false});
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
                if(result){
                 req.session.DSSN=clinicalengineer.DSSN
                 res.redirect('/engineer/dialyInspection');  
                }
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
exports.dialyInspectionEngineer=(req,res) =>{
    engineerId=req.session.DSSN
    Equipment.findAll({include:[{model:Department}]}).then(equipments => {
        const eqs=equipments.map(equipment => {
            return{
                Name:equipment.Name,
                Code:equipment.Code,
                Department:equipment.Department.Name
            }
        })
        ClinicalEngineer.findByPk(engineerId).then(engineer => {
            const Engineer ={
                Image:engineer.Image,
                FName:engineer.FName,
                LName:engineer.LName
            }
        res.render('dialyInspectionForm',{layout:'clinicalEngineerLayout',pageTitle:'Dialy Inspection',
        DI:true,equipments:eqs,Engineer:Engineer})
        })
    })
}

exports.dialyInspectionEngineerPost=(req,res) =>{
 code = req.body.Code
 date = req.body.DATE
 q1 = req.body.Q1
 q2 = req.body.Q2
 q3 = req.body.Q3
 q4 = req.body.Q4
 q5 = req.body.Q5
 q6 = req.body.Q6
 q7 = req.body.Q7
 q8 = req.body.Q8
 equipmentId = req.body.Device
 engineerId=req.session.DSSN


 q1 = q1 == "on" ? "on": "off"
 q2 = q2 == "on" ? "on": "off"
 q3 = q3 == "on" ? "on": "off"
 q4 = q4 == "on" ? "on": "off"
 q5 = q5 == "on" ? "on": "off"
 q6 = q6 == "on" ? "on": "off"
 q7 = q7 == "on" ? "on": "off"
 q8 = q8 == "on" ? "on": "off"

 
     

 
 Equipment.findByPk(equipmentId).then(equipment => { 
     if(equipment){
         ClinicalEngineer.findByPk(engineerId).then(clinicalengineer =>{
             if(clinicalengineer){
                    DailyInspection.create({DATE:date,Q1:q1,Q2:q2,Q3:q3,Q4:q4,Q5:q5,Q6:q6,Q7:q7,Q8:q8,EquipmentCode:equipmentId,ClinicalEnginnerDSSN:engineerId})
                        .then(dailyinspection => res.redirect('/engineer/dialyInspection') )
            }
            else{
                res.render('error',{layout:false,pageTitle:'Error',href:'/engineer/dialyInspection',message:'Sorry !!! Could Not Get this Engineer'})
            } 
         })   
     }
     else{
         res.render('error',{layout:false,pageTitle:'Error',href:'/engineer/dialyInspection',message:'Sorry !!! Could Not Get this Equipment'})
     }
 }).catch(err => {
     if(err){
         console.log(err)
      res.render('error',{layout:false,pageTitle:'Error',href:'/engineer/dialyInspection',message:'Sorry !!! Could Not Add This Report '})
     }
       
 })

}



exports.ppmEngineer=(req,res) =>{
    engineerId=req.session.DSSN
    PpmQuestions.findAll({include:[{model:Equipment,include:[{model:Department}]}]}).then(reports=>{
        const eqs=reports.map(report => {
            return {
                Name:report.Equipment.Name,
                Code:report.Equipment.Code,
                Department:report.Equipment.Department.Name
            }
        })
        ClinicalEngineer.findByPk(engineerId).then(engineer => {
            const Engineer ={
                Image:engineer.Image,
                FName:engineer.FName,
                LName:engineer.LName
            }
            res.render('deviceForm',{layout:'clinicalEngineerLayout',pageTitle:'Dialy Inspection',
                PPM:true,equipments:eqs,Engineer:Engineer})
        })
    })

}
exports.ppmEngineerPost=(req,res) =>{
    code=req.body.Code
    res.redirect('/engineer/ppm/'+code);
}

exports.ppmEngineerEquipment =(req,res) => {
    code=req.params.code
    engineerId=req.session.DSSN
    PpmQuestions.findOne({where:{EquipmentCode:code}}).then(ppm => {
        const Ppm={
            Q1:ppm.Q1,
            Q2:ppm.Q2,
            Q3:ppm.Q3,
            Q4:ppm.Q4,
            Q5:ppm.Q5
        }
        ClinicalEngineer.findByPk(engineerId).then(engineer => {
            const Engineer ={
                Image:engineer.Image,
                FName:engineer.FName,
                LName:engineer.LName
            }

        res.render('ppmForm',{layout:'clinicalEngineerLayout',pageTitle:'Dialy Inspection',
            PPM:true,ppm:Ppm,Code:code,Engineer:Engineer})
        })
    })
}
exports.ppmEngineerEquipmentPost=(req,res) =>{
    date=req.body.DATE
    equipmentId=req.params.Code
    engineerId=req.session.DSSN
    q1 = req.body.Q1
    q2 = req.body.Q2
    q3 = req.body.Q3
    q4 = req.body.Q4
    q5 = req.body.Q5
    n1 = req.body.N1
    n2 = req.body.N2
    n3 = req.body.N3
    n4 = req.body.N4
    n5 = req.body.N5
    q1 = q1 == "on" ? "on": "off"
    q2 = q2 == "on" ? "on": "off"
    q3 = q3 == "on" ? "on": "off"
    q4 = q4 == "on" ? "on": "off"
    q5 = q5 == "on" ? "on": "off"

    Equipment.findByPk(equipmentId).then(equipment => { 
        if(equipment){
            ClinicalEngineer.findByPk(engineerId).then(clinicalengineer =>{
                if(clinicalengineer){
                       PPM.create({DATE:date,Q1:q1,Q2:q2,Q3:q3,Q4:q4,Q5:q5,N1:n1,N2:n2,N3:n3,N4:n4,N5:n5,EquipmentCode:equipmentId,ClinicalEnginnerDSSN:engineerId})
                           .then(dailyinspection => res.redirect('/engineer/ppm') )
               }
               else{
                   res.render('error',{layout:false,pageTitle:'Error',href:'/engineer/ppm',message:'Sorry !!! Could Not Get this Engineer'})
               } 
            })   
        }
        else{
            res.render('error',{layout:false,pageTitle:'Error',href:'/engineer/ppm',message:'Sorry !!! Could Not Get this Equipment'})
        }
    }).catch(err => {
        if(err){
            console.log(err)
         res.render('error',{layout:false,pageTitle:'Error',href:'/engineer/ppm',message:'Sorry !!! Could Not Add This Report '})
        }
          
    })
   



}

exports.department=(req,res)=>{
Department.findAll({
    include:[{model:ClinicalEngineer},{model:Equipment}]
    }).then(departments => {
        const deps = departments.map(department => {       
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
    if(err){
        console.log(err)    
        res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get Departments'})
     }
    })


}

exports.maintenance=(req,res)=>{
    Maintenance.findAll({include:[{model:BreakDown,include:[{model:Equipment,include:[{model:Department}]}]},{model:ClinicalEngineer}]}).then(maintenances => {
        const m = maintenances.map(main => {
                  return {
                    Id:main.Id,
                    StartDate:main.StartDate,
                    EndDate:main.EndDate,
                    BreakDownCode:main.BreakDown.Code,
                    EquipmentName:main.BreakDown.Equipment.Name,
                    EquipmentCode:main.BreakDown.Equipment.Code,
                    EquipmentImage:main.BreakDown.Equipment.Image,
                    ClinicalEngineer:main.ClinicalEnginner.FName+' '+main.ClinicalEnginner.LName,
                    ClinicalEngineerImage:main.ClinicalEnginner.Image,
                    Department:main.BreakDown.Equipment.Department.Name,
                    Description:main.Description             
                  }
                    
                })
    BreakDown.findAll({include:[{model:Equipment}]}).then(breakDowns => {
        const bd=breakDowns.map(breakDown => {
            return {
                Code:breakDown.Code,
                Date:breakDown.DATE,
                EquipmentName:breakDown.Equipment.Name,
                EquipmentCode:breakDown.Equipment.Code,
                Reason:breakDown.Reason
            }

        })
     
    ClinicalEngineer.findAll().then(clinicalEngineers => {
        const en=clinicalEngineers.map(clinicalEngineer => {
            return {
                FName:clinicalEngineer.FName,
                LName:clinicalEngineer.LName,
                DSSN:clinicalEngineer.DSSN
            }
        })
        res.render('maintenance',{pageTitle:'Maintenance',
                                    Maintenance:true,Maintenances:m,
                                    hasMaintenance:m.length>0,Engineers:en,breakDowns:bd});
    })    
    })


    }).catch(err => {
        if(err)
          console.log(err)
          res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not get any maintenance'})
    })


}


exports.clinicalEngineer=(req,res)=>{
    ClinicalEngineer.findAll({include:[{model:Department}]}).then(clinicalEngineers=>{
        const clinicalengineers=clinicalEngineers.map(clinicalengineer => {     
            return{
                DSSN:clinicalengineer.DSSN,
                FName:clinicalengineer.FName,
                LName:clinicalengineer.LName,
                Image:clinicalengineer.Image,
                Adress:clinicalengineer.Adress,
                Phone:clinicalengineer.Phone,
                Email:clinicalengineer.Email,
                Age:clinicalengineer.Age,
                WorkHours:clinicalengineer.WorkHours,
                DepartmentCode:clinicalengineer.Department.Name
            }

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
    SparePart.findAll({include:[{model:AgentSupplier},{model:Equipment}]}).then(sparepart => {
        const sp = sparepart.map(sparepart => {
                  return {
                    Code:sparepart.Code,
                    Name:sparepart.Name,
                    Amount:sparepart.Amount,
                    Image:sparepart.Image,
                    AgentSupplierId:sparepart.AgentSupplier.dataValues.Id,
                    AgentSupplierName:sparepart.AgentSupplier.dataValues.Name,
                    EquipmentCode:sparepart.Equipment.dataValues.Code,
                    EquipmentName:sparepart.Equipment.dataValues.Name


                  }
                })
        Equipment.findAll({include:[{model:Department}]}).then(equipments => {
            const eq = equipments.map(equipment => {
                return{
                    Code:equipment.Code,
                    Name:equipment.Name,
                    DepartmentName:equipment.Department.Name
                }
            })
        AgentSupplier.findAll().then(agents => {
            const ag = agents.map(agent => {
                return {
                    Name:agent.Name,
                    Id:agent.Id
                }
            })
        res.render('sparePart',{pageTitle:'SpareParts',SP:true,SpareParts:sp,
                                hasPart:sp.length>0,Equipments:eq,Agents:ag});
        })    
        })             

}).catch( err=> {
    if (err)
     console.log(err)
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

  WorkOrder.findAll({include:[{model:ClinicalEngineer},{model:Equipment}]}).then(workorders => {
        const wd = workorders.map(workD => {
                  return {
                    Code:workD.Code,
                    Cost:workD.Cost,
                    StartDate:workD.StartDate,
                    EndDate:workD.EndDate,
                    med:workD.Priority=='Medium'?true:false,
                    high:workD.Priority=='High'?true:false,
                    low:workD.Priority=='Low'?true:false,
                    EquipmentCode:workD.Equipment.Code,
                    EquipmentName:workD.Equipment.Name,
                    EquipmentImage:workD.Equipment.Image,
                    Priority:workD.Priority,
                    Description:workD.Description,
                    ClinicalEnginner:workD.ClinicalEnginner.FName+' '+workD.ClinicalEnginner.LName,
                    ClinicalEnginnerImage:workD.ClinicalEnginner.Image             
                  }
                })

        ClinicalEngineer.findAll().then(clinicalEngineers => {
            const en=clinicalEngineers.map(clinicalEngineer => {
                return {
                    FName:clinicalEngineer.FName,
                    LName:clinicalEngineer.LName,
                    DSSN:clinicalEngineer.DSSN
                }
            })
        Equipment.findAll({include:[{model:Department}]}).then(equipments => {
            const eq = equipments.map(equipment => {
                return{
                    Code:equipment.Code,
                    Name:equipment.Name,
                    DepartmentName:equipment.Department.Name
                }
            }) 
            res.render('workOrder',{pageTitle:'WorkOrder',
                                        WorkOrder:true,Workorders:wd,
                                        hasWorkOrder:wd.length>0,WO:true,Engineers:en,Equipments:eq});
        })    
        })       

    }).catch(err => {
        if(err)
          console.log(err)
          res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get WorkOrders'})
    })

}

exports.breakDown=(req,res)=>{
    BreakDown.findAll({include:[{model:Equipment,include:[{model:Department}]}]}).then(breakdowns => {
        const bd = breakdowns.map(breakD => {
                  return {
                    Code:breakD.Code,
                    Reason:breakD.Reason,
                    DATE:breakD.DATE,
                    EquipmentCode:breakD.EquipmentCode,
                    EquipmentName:breakD.Equipment.Name,
                    EquipmentImage:breakD.Equipment.Image,
                    Department:breakD.Equipment.Department.Name
                  }
                })
        Equipment.findAll({include:[{model:Department}]}).then(equipments => {
            const eqs = equipments.map(equipment => {
                return{
                    Name:equipment.Name,
                    Code:equipment.Code,
                    Department:equipment.Department.Name
                }
            })
        res.render('breakDown',{pageTitle:'BreakDown',BreakDown:true,breakDowns:bd,
                                    hasBreakDown:bd.length>0,Equipments:eqs});
        })

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
                    PM:equipment.PM,
                    Image:equipment.Image,
                    InstallationDate: equipment.InstallationDate,
                    ArrivalDate:equipment.ArrivalDate,
                    WarrantyDate:equipment.WarrantyDate,
                    Model:equipment.Model,
                    SerialNumber:equipment.SerialNumber,
                    Manufacturer:equipment.Manufacturer,
                    Location:equipment.Location,
                    Notes:equipment.Notes,
                    DepartmentCode:equipment.Department.dataValues.Name,
                    AgentSupplierId:equipment.AgentSupplier.dataValues.Name
                  }
                })

            AgentSupplier.findAll().then(agents => {
                const ag = agents.map(agent => {
                    return {
                        Name:agent.Name,
                        Id:agent.Id
                    }
                })        
        res.render('equipment',{pageTitle:'Equipment',Equipment:true,
                                equipments:eq,hasEquipments:eq.length>0,Agents:ag});
            })               
    }).catch( err => {
        if(err)
         res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get Equipments'})
        })


   
}


exports.installation=(req,res)=>{
    Equipment.findAll({
        include:[{model:Department},{model:AgentSupplier}]
        }).then(equipments => {
        const eq = equipments.map(equipment => {
                  return {
                    Code: equipment.Code,
                    Name: equipment.Name,
                    Cost: equipment.Cost,
                    PM:equipment.PM,
                    Image:equipment.Image,
                    InstallationDate: equipment.InstallationDate,
                    ArrivalDate:equipment.ArrivalDate,
                    WarrantyDate:equipment.WarrantyDate,
                    Model:equipment.Model,
                    SerialNumber:equipment.SerialNumber,
                    Manufacturer:equipment.Manufacturer,
                    Location:equipment.Location,
                    Notes:equipment.Notes,
                    DepartmentCode:equipment.Department.dataValues.Name,
                    AgentSupplierId:equipment.AgentSupplier.dataValues.Name
                  }
                })
        res.render('installationTable',{pageTitle:'Installation',Reports:true,
                                reports:eq,hasReports:eq.length>0});
    }).catch( err => {
        if(err)
         res.render('error',{layout:false,pageTitle:'Error',href:'/',message:'Sorry !!! Could Not Get Reports'})
        })
}

exports.ppm=(req,res) =>{
PPM.findAll({include:[{model:Equipment,include:[{model:PpmQuestions}]},{model:ClinicalEngineer}]}).then(reports => {
    const reps=reports.map(report =>{
        return {
        Code:report.Code,
        DATE:report.DATE,
        Engineer:report.ClinicalEnginner.FName+' '+report.ClinicalEnginner.LName,
        EquipmentName:report.Equipment.Name,
        EquipmentCode:report.Equipment.Code,
        EquipmentModel:report.Equipment.Model,
        Qs:report.Equipment.PpmQuestion,
        Q1: report.Q1 == "on" ? true: false,
        Q2: report.Q2 == "on" ? true: false,
        Q3: report.Q3 == "on" ? true: false,
        Q4: report.Q4 == "on" ? true: false,
        Q5: report.Q5 == "on" ? true: false,
        N1:report.N1,
        N2:report.N2,
        N3:report.N3,
        N4:report.N4,
        N5:report.N5
        }
    })
    res.render('ppmReportTable',{pageTitle:'PPM',
        Reports:true,reports:reps,hasReports:reps.length>0,rep:true })   
    
}).catch(err => {
    res.render('error',{layout:false,pageTitle:'Error',href:'/home',message:'Sorry !!! Could Not Get Reports'})

})
}

exports.dailyInspection=(req,res)=>{
 DailyInspection.findAll({include:[{model:Equipment},{model:ClinicalEngineer}]})
 .then(reports => {
    const reps=reports.map(report => {
        return{
            Code:report.Code,
            DATE:report.DATE,
            Engineer:report.ClinicalEnginner.FName +' '+ report.ClinicalEnginner.LName ,
            Equipment:report.Equipment.Name,
            eq:true,
            EquipmentModel:report.Equipment.Model
        }

 })
 res.render('dialyinspectionTable',{pageTitle:'Daily Inspection',
    Reports:true,eq:true,reports:reps,hasReports:reps.length>0 })  
}).catch(err => {
    res.render('error',{layout:false,pageTitle:'Error',href:'/',message:'Sorry !!! Could Not Get Report'})

})

}


exports.workorder=(req,res) =>{
dssn=req.session.DSSN
WorkOrder.findAll({where:{ClinicalEnginnerDSSN:dssn}}).then(orders => {
    var events=orders.map(order => {
        return{
            title:order.Description,
            color:order.Priority == 'Low' ? 'green' :order.Priority == 'High' ? 'red': 'blue' ,
            start:(order.StartDate.split('-')[0]+'-'+order.StartDate.split('-')[1]+'-'+order.StartDate.split('-')[2])+' '+'00:00:00Z',
            end:(order.EndDate.split('-')[0]+'-'+order.EndDate.split('-')[1]+'-'+order.EndDate.split('-')[2])+' '+'23:00:00Z',
            url:'/engineer/workOrder/description/'+order.Code
        }

    })

    ClinicalEngineer.findByPk(engineerId).then(engineer => {
        const Engineer ={
            Image:engineer.Image,
            FName:engineer.FName,
            LName:engineer.LName
        }
        
    res.render('calender',{layout:false,WO:true,events:events,pageTitle:'calender',Engineer:Engineer})
    })

}).catch(err => {
    res.render('error',{layout:false,pageTitle:'Error',href:'/',message:'Sorry !!! Could Not Get Orders'})

})

}

exports.workorderDescription=(req,res)=>{
    code=req.params.code
    engineerId=req.session.DSSN
    WorkOrder.findOne({where:{Code:code},include:[{model:Equipment}]}).then(order => {
        var order={
            Code:order.Code,
            EquipmentName:order.Equipment.Name,
            EquipmentModel:order.Equipment.Model,
            EquipmentCode:order.Equipment.Code,
            Priority:order.Priority,
            Cost:order.Cost,
            StartDate:order.StartDate,
            EndDate:order.EndDate,
            Description:order.Description

        }
        ClinicalEngineer.findByPk(engineerId).then(engineer => {
            const Engineer ={
                Image:engineer.Image,
                FName:engineer.FName,
                LName:engineer.LName
            }
        res.render('workOrderDetails',{layout:'clinicalEngineerLayout',pageTitle:'Work Order',
                WO:true,order:order,Engineer,Engineer})
        })    
    }).catch(err => {
        res.render('error',{layout:false,pageTitle:'Error',href:'/',message:'Sorry !!! Could Not Get Work Orders'})

    })
}





