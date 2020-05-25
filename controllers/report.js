Equipment=require('../models/equipment')
AgentSupplier=require('../models/agent_supplier')
ClinicalEngineer=require('../models/clinical_engineer')
Department=require('../models/department')
SparePart=require('../models/spare_part')
DialyInspection=require('../models/dialy_inspection')
BreakDown=require('../models/break_down')
Maintenance=require('../models/maintenance')
PPM =require('../models/ppm')
PPMQuestions=require('../models/ppm_questions')

exports.departmentEquipmentsReport=(req,res) => {
code=req.params.code
var name=null 
    Department.findByPk(code).then(dep => {
        name=dep.dataValues.Name

    })
Equipment.findAll({where:{DepartmentCode:code},include:[{model:AgentSupplier}]}).then(equipments => {
    if(equipments){

        const eq = equipments.map(equipment => {
            return {
              Code: equipment.Code,
              Name: equipment.Name,
              Cost: equipment.Cost,
              InstallationDate: equipment.InstallationDate,
              Model:equipment.Model,
              SerialNumber:equipment.SerialNumber,
              Manufacturer:equipment.Manufacturer,
              Location:equipment.Location,
              Agent:equipment.AgentSupplier.Name
            }
    
    
        })
        res.render('reportDepartmentEquipments',{layout:'departmentReportLayout',pageTitle:'Equipments',
                                                code:code,equipments:eq,hasEquipments:eq.length>0,
                                                Equipment:true,name:name})
    }

    else{
        res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!! Couldn\'t Find  Any Equipment For This Department',href:'/report/department/equipments/'+code})        
    }
}).catch(err => {
    if(err)
     res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!! Couldn\'t Find  Any Equipment For This Department',href:'/report/department/equipments/'+code})
})

}


exports.departmentEngineersReport=(req,res) => {
    code=req.params.code
    var name=null 
    Department.findByPk(code).then(dep => {
        name=dep.dataValues.Name

    })
    ClinicalEngineer.findAll({where:{DepartmentCode:code}}).then(engineers => {
        if(engineers){
            const en = engineers.map(engineer => {
                return{
                    DSSN:engineer.DSSN,
                    FName:engineer.FName,
                    LName:engineer.LName,
                    Adress:engineer.Adress,
                    Phone:engineer.Phone,
                    Email:engineer.Email,
                    Age:engineer.Age,
                    WorkHours:engineer.WorkHours,
                }
        
        
            })
            res.render('reportDepartmentEngineers',{layout:'departmentReportLayout',pageTitle:'Clinical Engineer',
                                                    code:code,engineers:en,hasEngineers:en.length>0,
                                                CE:true,name:name})
        }
        else{
            res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!! Couldn\'t Find  Any Engineers For This Department',href:'/report/department/enginers/'+code})            
        }
    }).catch(err => {
        if(err)
        res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!!  Error happend while getting Engineers For This Department',href:'/report/department/enginers/'+code})
    })


}



exports.agentSparePartsReport=(req,res)=>{
    id=req.params.Id
    var name=null
    AgentSupplier.findByPk(id).then(agent => {
        name=agent.dataValues.Name
    })
    SparePart.findAll({where:{AgentSupplierId:id}}).then(spareparts => {
        if(spareparts){
            const sp = spareparts.map(sparepart => {
                return {
                  Code:sparepart.Code,
                  Name:sparepart.Name,
                  Amount:sparepart.Amount
                }
              })
              res.render('reportAgentSpareParts',{layout:'agentReportLayout',pageTitle:'Spare Parts',
                                    Id:id,name:name,SP:true,spareParts:sp,hasSP:sp.length>0})
        }
        else{
            res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!! Couldn\'t Find  Any Spare Parts For This Agent',href:'/report/department/enginers/'+code})            

        }
    }).catch(err => {
        if(err)
        res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!!  Error happend while getting Spare Parts For This Agent',href:'/report/department/enginers/'+code})
    })
}

exports.agentEquipmentsReport=(req,res)=>{
    id=req.params.Id
    var name=null
    AgentSupplier.findByPk(id).then(agent => {
        name=agent.dataValues.Name
    })
    Equipment.findAll({where:{AgentSupplierId:id},include:[{model:Department}]}).then(equipments => {
        if(equipments){
            const eq = equipments.map(equipment => {
                return {
                    Code: equipment.Code,
                    Name: equipment.Name,
                    Cost: equipment.Cost,
                    InstallationDate: equipment.InstallationDate,
                    Model:equipment.Model,
                    SerialNumber:equipment.SerialNumber,
                    Manufacturer:equipment.Manufacturer,
                    Location:equipment.Location,
                    Department:equipment.Department.Name
                }
              })
              res.render('reportAgentEquipments',{layout:'agentReportLayout',pageTitle:'Equipments',
                                    Id:id,name:name,Equipment:true,equipments:eq,hasEquipments:eq.length>0})
        }
        else{
            res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!! Couldn\'t Find  Any Equipment For This Agent',href:'/report/department/enginers/'+code})            

        }
    }).catch(err => {
        if(err)
        res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!!  Error happend while getting Equipments For This Agent',href:'/report/department/enginers/'+code})
    })
}



exports.equipmentInstallationReport=(req,res)=>{
    id=req.params.Id
    layout=req.query.report ? 'main-layout' :'equipmentReportLayout' 
    Id=req.query.report ? false : true
    Reports=req.query.report ? true : false
    var date = Date(Date.now()).toString().split('GMT')[0]; 
    Equipment.findOne({where:{Code:id},include:[{model:AgentSupplier},{model:Department}]}).then(equipment => {
        if(equipment){
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
                Department:equipment.Department.Name,
                Agent:equipment.AgentSupplier.Name
              }

              res.render('installationReport',{layout:layout,pageTitle:'Installation',
                  code:id,equipment:eq,Date:date,ID:Id,Reports:Reports})
        }
        else
            res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!!  Error happend while getting Data for This Equipment ',href:'/report/department/enginers/'+code})


    })



}



exports.equipmentDialyInspectionReport=(req,res) => {
    id=req.params.Id
    var name=null
    var model =null
    var image=null
    Equipment.findByPk(id).then(eq => {
        name=eq.Name
        model=eq.Model
        image=eq.Image
        DialyInspection.findAll({where:{EquipmentCode:id},include:[{model:Equipment},{model:ClinicalEngineer}]})
        .then(reports => {
            const reps=reports.map(report => {
                return{
                    Code:report.Code,
                    DATE:report.DATE,
                    Engineer:report.ClinicalEnginner.FName +' '+ report.ClinicalEnginner.LName ,
                    Equipment:report.Equipment.Name,
                    EquipmentModel:report.Equipment.Model
                }
            })

            res.render('dialyinspectionTable',{layout:'equipmentReportLayout',pageTitle:'Dialy Inspection',
                    code:id,DI:true,reports:reps,hasReports:reps.length>0,name:name,model:model,image:image })   
        } )
    }).catch( err => {
        if(err)
        {
            console.log(err)
            res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!!  Error happend while getting Dialy Inspection Reports for This Equipment ',href:'/equipment'})
        }
    })
}


exports.dialyInspectionReport = (req,res) =>{
 code=req.params.code
 layout=req.query.report ? 'main-layout' :'equipmentReportLayout' 
 di=req.query.report ? false : true
 Reports=req.query.report ? true : false
 DialyInspection.findOne({where:{Code:code},include:[{model:ClinicalEngineer},{model:Equipment}]}).then(report =>{
    const rep = {
        DATE:report.DATE,
        Engineer:report.ClinicalEnginner.FName+' '+report.ClinicalEnginner.LName,
        EquipmentName:report.Equipment.Name,
        EquipmentCode:report.Equipment.Code,
        EquipmentModel:report.Equipment.Model,
        Q1:report.Q1,
        Q2:report.Q2,
        Q3:report.Q3,
        Q4:report.Q4,
        Q5:report.Q5,
        Q6:report.Q6,
        Q7:report.Q7,
        Q8:report.Q8,

    }
    rep.Q1 = rep.Q1 == "on" ? true: false
    rep.Q2 = rep.Q2 == "on" ? true: false
    rep.Q3 = rep.Q3 == "on" ? true: false
    rep.Q4 = rep.Q4 == "on" ? true: false
    rep.Q5 = rep.Q5 == "on" ? true: false
    rep.Q6 = rep.Q6 == "on" ? true: false
    rep.Q7 = rep.Q7 == "on" ? true: false
    rep.Q8 = rep.Q8 == "on" ? true: false   
    res.render('dialyinspection',{layout:layout,pageTitle:'Dialy Inspection',
        code:rep.EquipmentCode,DI:di,report:rep,Reports:Reports })  
 })
}



exports.equipmentPpmReport=(req,res) => {
    id=req.params.Id
    var name=null
    var model =null
    var image =null
    Equipment.findByPk(id).then(eq => {
        name=eq.Name
        model=eq.Model
        image=eq.Image
        PPM.findAll({where:{EquipmentCode:id},include:[{model:Equipment},{model:ClinicalEngineer}]})
        .then(reports => {
            const reps=reports.map(report => {
                return{
                    Code:report.Code,
                    DATE:report.DATE,
                    Engineer:report.ClinicalEnginner.FName +' '+ report.ClinicalEnginner.LName ,
                    Equipment:report.Equipment.Name,
                    EquipmentModel:report.Equipment.Model
                }
            })

            res.render('ppmTable',{layout:'equipmentReportLayout',pageTitle:'PPM',
                    code:id,PPM:true,reports:reps,hasReports:reps.length>0,name:name,model:model ,image:image})   
        } )
    }).catch( err => {
        if(err)
        {
            console.log(err)
            res.render('error',{layout:false,pageTitle:'Error',message:'Sorry!!  Error happend while getting Dialy Inspection Reports for This Equipment ',href:'/equipment'})
        }
    })
}


exports.PpmReport = (req,res) =>{
    code=req.params.code
    layout=req.query.report ? 'main-layout' :'equipmentReportLayout' 
    ppm=req.query.report ? false : true
    Reports=req.query.report ? true : false
    PPM.findOne({where:{Code:code},include:[{model:ClinicalEngineer},{model:Equipment}]}).then(report =>{
       const rep = {
           DATE:report.DATE,
           Engineer:report.ClinicalEnginner.FName+' '+report.ClinicalEnginner.LName,
           EquipmentName:report.Equipment.Name,
           EquipmentCode:report.Equipment.Code,
           EquipmentModel:report.Equipment.Model,
           Q1:report.Q1,
           Q2:report.Q2,
           Q3:report.Q3,
           Q4:report.Q4,
           Q5:report.Q5,
           N1:report.N1,
           N2:report.N2,
           N3:report.N3,
           N4:report.N4,
           N5:report.N5,

       }
       rep.Q1 = rep.Q1 == "on" ? true: false
       rep.Q2 = rep.Q2 == "on" ? true: false
       rep.Q3 = rep.Q3 == "on" ? true: false
       rep.Q4 = rep.Q4 == "on" ? true: false
       rep.Q5 = rep.Q5 == "on" ? true: false
       PPMQuestions.findOne({where:{EquipmentCode:rep.EquipmentCode}}).then(questions => {
           const q={
               Q1:questions.Q1,
               Q2:questions.Q2,
               Q3:questions.Q3,
               Q4:questions.Q4,
               Q5:questions.Q5,
           }
           res.render('ppm',{layout:layout,pageTitle:'PPM',
               code:rep.EquipmentCode,PPM:ppm,Reports:Reports,report:rep ,questions:q})  
       })
    })
   }


exports.equipmentBreakDownReport=(req,res)=>{
code=req.params.Id
var name=null
var model =null
var image=null
Equipment.findByPk(code).then(eq => {
    name=eq.Name
    model=eq.Model
    image=eq.Image
    BreakDown.findAll({where:{EquipmentCode:code}}).then(breakdowns => {
        const bds=breakdowns.map(breakdown => {
            return {
                Code:breakdown.Code,
                Reason:breakdown.Reason,
                Date:breakdown.DATE
            }
        })
        res.render('equipmentBreakDowns',{layout:'equipmentReportLayout',pageTitle:'Break Downs',
            code:code,BD:true,breakDowns:bds,hasBreakDowns:bds.length>0,name:name,model:model,image:image })   
    })
})
}

exports.equipmentMaintenaceReport=(req,res) => {
    code=req.params.Id
    var name=null
    var model =null
    var image=null
    Equipment.findByPk(code).then(eq => {
        name=eq.Name
        model=eq.Model
        image=eq.Image
        Maintenance.findAll({include:[{model:BreakDown,where:{EquipmentCode:code}}]}).then(maintenances => {
            const ms=maintenances.map(maintenance => {
                return {
                    Id:maintenance.Id,
                    Description:maintenance.Description,
                    StartDate:maintenance.StartDate,
                    EndDate:maintenance.EndDate,
                    BreakDownCode:maintenance.BreakDown.Code,
                    BreakDownReason:maintenance.BreakDown.Reason
                }
            })
            res.render('equipmentMaintenance',{layout:'equipmentReportLayout',pageTitle:'Maintenances',
                code:code,M:true,maintenance:ms,hasMaintenances:ms.length>0,name:name,model:model ,image:image})   
        })
    })
}

exports.equipmentSparePartsReport=(req,res) => {
code=req.params.Id
var name=null
var model =null
var image=null
Equipment.findByPk(code).then(eq => {
    name=eq.Name
    model=eq.Model
    image=eq.Image
    SparePart.findAll({where:{EquipmentCode:code},include:[{model:AgentSupplier}]}).then(spareParts => {
        const sps=spareParts.map(sparePart => {
            return {
                Code:sparePart.Code,
                Name:sparePart.Name,
                Amount:sparePart.Amount,
                AgentName:sparePart.AgentSupplier.Name
            }
        })
        res.render('equipmentSpareParts',{layout:'equipmentReportLayout',pageTitle:'Break Downs',
            code:code,SP:true,spareParts:sps,hasSpareParts:sps.length>0,name:name,model:model,image:image })   
    })
})
}