const bcrypt = require('bcryptjs')
const Department = require('../models/department')
const AgentSupplier = require('../models/agent_supplier')
const ClinicalEngineer=require('../models/clinical_engineer')
const Equipment =require('../models/equipment')
const SpareParts = require('../models/spare_part')
const BreakDowns = require('../models/break_down')
const WorkOrders = require('../models/work_order')
const Maintenance = require('../models/maintenance')






exports.addDepartment=(req,res)=>{
 code=req.body.Code
 name=req.body.Name
 location=req.body.Location
 Department.create({Code:code,Name:name,Location:location}).then(dep =>{
 res.redirect('/department');
 }).catch(err=> {
    console.log("ERROR!!!!!!",err)
    })


}



exports.addAgentSupplier=(req,res)=>{
    id=req.body.Id
    name=req.body.Name
    address=req.body.Address
    phone=req.body.Phone
    email=req.body.Email
    notes=req.body.Notes
    AgentSupplier.findByPk(id).then(agentSupplier => {
        if(agentSupplier){
            agentSupplier.Id=id;
            agentSupplier.Name=name;
            agentSupplier.Address=address;
            agentSupplier.Phone=phone;
            agentSupplier.Email=email;
            agentSupplier.Notes=notes;
            return agentSupplier.save();
        }
        else{
            return AgentSupplier.create({Id:id,Name:name,Adress:address,
                    Phone:phone,Email:email,Notes:notes})
        }
   
   }).then(r => res.redirect('/agentSupplier'))
   .catch(err => console.log("ERROR!!!!!!",err))
}


exports.addClinicalEngineer=(req,res)=>{
    dssn=req.body.DSSN
    fname=req.body.FName
    lname=req.body.LName
    address=req.body.Address
    phone=req.body.Phone
    email=req.body.Email
    if(req.body.edit){
        image=req.body.Image
    }
    else{
        image=req.file.path.split('\\')
        if (image.length>1)
            image=req.file.path.split('\\').pop()
        else    
            image=req.file.path.split('/').pop()

    }
    age=req.body.Age
    workhours=req.body.workHours
    department=req.body.Department
    var departmentCode=null
    if(req.body.Password)   
    bcrypt.genSalt(10, (err, salt) => {
        bcrypt.hash(req.body.Password, salt, (err, hash) => {
            pass=hash 
        });
        
    });
    
    
    
    Department.findOne({where:{Name:department}}).then(department => { 
        if (department){

            departmentCode=department.Code
            ClinicalEngineer.findByPk(dssn).then(clinicalEngineer=>{
                if(clinicalEngineer){
                    clinicalEngineer.DSSN=dssn
                    clinicalEngineer.FName=fname
                    clinicalEngineer.LName=lname
                    clinicalEngineer.Adress=address
                    clinicalEngineer.Phone=phone
                    clinicalEngineer.Email=email
                    clinicalEngineer.Image=image
                    clinicalEngineer.Age=age
                    clinicalEngineer.WorkHours=workhours
                    clinicalEngineer.DepartmentCode=departmentCode
                    clinicalEngineer.save().then(r => res.redirect('/clinicalEngineer'))
                }
                else{
                    
                    ClinicalEngineer.create({DSSN:dssn,FName:fname,
                            LName:lname,Adress:address,Phone:phone,Image:image,
                            Email:email,Age:age,WorkHours:workhours,
                            DepartmentCode:departmentCode,Password:pass
                        }).then(r => res.redirect('/clinicalEngineer'))
                }
            })
        }
        else{
            res.render('error',{layout:false,pageTitle:'Error',href:'/clinicalEngineer',message:'Sorry !!! Could Not Get this Department'})                

        }
    })
    .catch(err =>res.render('error',{layout:false,pageTitle:'Error',href:'/equipment',message:'Sorry !!! Could Not Get Engineers'})                
    )

}

exports.addEquipment=(req,res) => {
    code=req.body.Code
    name=req.body.Name
    cost=req.body.Cost
    if(req.body.edit){
        image=req.body.Image
    }
    else{
        image=req.file.path.split('\\')
        if (image.length>1)
            image=req.file.path.split('\\').pop()
        else    
            image=req.file.path.split('/').pop()
    }
    model=req.body.Model
    serialnumber=req.body.SerialNumber
    installationdate=req.body.InstallationDate
    arrivaldate=req.body.ArrivalDate
    warrantydate=req.body.WarrantyDate
    manufacturer=req.body.Manufacturer
    location=req.body.Location
    department=req.body.Department
    agent=req.body.Agent
    pm=req.body.PM
    notes=req.body.Notes
    var departmentCode=null
    var agentCode=null
    Department.findOne({where:{Name:department}}).then(department => { 
        if (department){
            departmentCode=department.Code
            AgentSupplier.findOne({where:{Id:agent}}).then(agent =>{
                if(agent){
                    agentCode=agent.Id
                    Equipment.findByPk(code).then(equipment=>{
                        if(equipment){
                            equipment.Code=code
                            equipment.Name=name
                            equipment.Cost=cost
                            equipment.Image=image
                            equipment.Model=model
                            equipment.PM=pm
                            equipment.ArrivalDate=arrivaldate
                            equipment.WarrantyDate=warrantydate
                            equipment.Notes=notes
                            equipment.InstallationDate=installationdate
                            equipment.SerialNumber=serialnumber
                            equipment.Manufacturer=manufacturer
                            equipment.Location=location
                            equipment.DepartmentCode=departmentCode
                            equipment.AgentSupplierId=agentCode
                            equipment.save().then(equipment => res.redirect('/equipment'))
                        }
        
                        else
                        {
                            Equipment.create({Code:code,Name:name,Image:image,ArrivalDate:arrivaldate,WarrantyDate:warrantydate,PM:pm,
                                    Cost:cost,Model:model,SerialNumber:serialnumber,AgentSupplierId:agentCode,Notes:notes,
                                    Location:location,Manufacturer:manufacturer,InstallationDate:installationdate,DepartmentCode:departmentCode})
                                    .then(equipment => res.redirect('/equipment') )
                        }
                    })
                }
                else
                  res.render('error',{layout:false,pageTitle:'Error',href:'/equipment',message:'Sorry !!! Could Not Get this Agent'})                
            })
        }
        else{
            res.render('error',{layout:false,pageTitle:'Error',href:'/equipment',message:'Sorry !!! Could Not Get this Department'})
        }
    }).catch(err => {
        if(err)
         res.render('error',{layout:false,pageTitle:'Error',href:'/sparePart',message:'Sorry !!! Could Not Add This Engineer '})

          
    })

}


exports.addSpareParts=(req,res)=>{
    code=req.body.Code
    name=req.body.Name
    amount=req.body.Amount
    agentId=req.body.AgentSupplierId
    equipmentCode=req.body.EquipmentCode
    if(req.body.edit){
        image=req.body.Image
    }
    else{
        image=req.file.path.split('\\')
        if (image.length>1)
            image=req.file.path.split('\\').pop()
        else    
            image=req.file.path.split('/').pop()
           
       }
    AgentSupplier.findOne({where:{Id:agentId}}).then(agent =>{
        if(agent){
            SpareParts.findByPk(code).then(part=>{
                if(part){
                    part.Code=code
                    part.Name=name
                    part.Amount=amount
                    part.AgentSupplierId=agentId
                    part.EquipmentCode=equipmentCode
                    part.Image=image
                    part.save().then(p => res.redirect('/sparePart'))
                }
                else{
                    SpareParts.create({Code:code,Name:name,Amount:amount,AgentSupplierId:agentId,Image:image,EquipmentCode:equipmentCode})
                    .then(res.redirect('/sparePart'))
                }
        
            })
        }
        else
         return res.render('error',{layout:false,pageTitle:'Error',href:'/sparePart',message:'Sorry !!! Could Not Get this Agent'})
        
    }).catch(err=> {
        res.render('error',{layout:false,pageTitle:'Error',href:'/sparePart',message:'Sorry !!! Could Not Gey rhis page'})
        })

}



exports.addBreakDown=(req,res)=>{
    code=req.body.Code
    reason=req.body.Reason
    date=req.body.DATE
    equipmentId=req.body.EquipmentCode
    Equipment.findOne({where:{Code:equipmentId}}).then(Equipment =>{
        if(Equipment){
            BreakDowns.findByPk(code).then(breakD=>{
                if(breakD){
                    breakD.Code=code
                    breakD.Reason=reason
                    breakD.DATE=date
                    breakD.EquipmentCode=equipmentId
                    breakD.save().then(res.redirect('/breakDown'))
                }
        
                BreakDowns.create({Code:code,Reason:reason,DATE:date,EquipmentCode:equipmentId})
                .then(res.redirect('/breakDown'))
                .catch(err=> {
                    console.log("ERROR!!!!!!",err)
                    })
                })
        }
        else
         return res.render('error',{layout:false,pageTitle:'Error',href:'/breakDown',message:'Sorry !!! Could Not Get this Equipment'})
        
    })

}

exports.addWorkOrder=(req,res) => {
    code =req.body.Code
    cost=req.body.Cost
    startdate=req.body.StartDATE
    enddate=req.body.EndDATE
    description=req.body.Description
    priority = req.body.Priority
    equipmentId=req.body.EquipmentCode
    engineerId=req.body.ClinicalEngineerDSSN
    var equId=null
    var engId=null
    Equipment.findOne({where:{Code:equipmentId}}).then(equipment => { 
        if(equipment){
            equId=equipment.Code
            ClinicalEngineer.findOne({where:{DSSN:engineerId}}).then(clinicalengineer =>{
                if(clinicalengineer){
                    engId = clinicalengineer.DSSN
                    WorkOrders.findByPk(code).then(workorder=>{
                        if(workorder){
                            workorder.StartDATE=startdate
                            workorder.EndDATE=enddate
                            workorder.Description=description
                            workorder.Cost=cost
                            workorder.EquipmentCode=equId
                            workorder.ClinicalEngineerDSSN=engId
                            workorder.Priority=priority
                            workorder.save().then(workorder => res.redirect('/workOrder'))
                        }
                        else {
                            WorkOrders.create({StartDate:startdate,EndDate:enddate,Description:description,
                            Cost:cost,EquipmentCode:equId,ClinicalEnginnerDSSN:engId,Priority:priority})
                            .then(workorder => res.redirect('/workOrder') )
                            }
                   })
                }
            
       

                else
                  res.render('error',{layout:false,pageTitle:'Error',href:'/workOrder',message:'Sorry !!! Could Not Get this Engineer'})  
                  
                  
            })
            
        }
        else{
            res.render('error',{layout:false,pageTitle:'Error',href:'/workOrder',message:'Sorry !!! Could Not Get this Equipment'})
        }
    }).catch(err => {
        if(err)
         res.render('error',{layout:false,pageTitle:'Error',href:'/workOrder',message:'Sorry !!! Could Not Add This Work Order '})

          
    })

}


exports.addMaintenance=(req,res)=>{
    code=req.body.Id
    dssn=req.body.DSSN
    startdate=req.body.StartDate
    enddate=req.body.EndDate
    breakdowncode=req.body.BreakDownID
    description=req.body.Description
    var breakdown = null
    BreakDowns.findOne({where:{Code:breakdowncode}}).then(breakdown =>{
        if(breakdown){
            Maintenance.findByPk(code).then(main=>{
                if(main){
                    main.StartDate=startdate
                    main.EndDate=enddate
                    main.BreakDownCode=breakdowncode
                    main.Description=description
                    main.ClinicalEnginnerDSSN=dssn
                    main.save().then(p => res.redirect('/maintenance'))
                }
                else{
                    Maintenance.create({StartDate:startdate,EndDate:enddate,ClinicalEnginnerDSSN:dssn,BreakDownCode:breakdowncode,Description:description})
                    .then(res.redirect('/maintenance'))
                }
        
            })
        }
        else
         return res.render('error',{layout:false,pageTitle:'Error',href:'/maintenance',message:'Sorry !!! Could Not Get this Break down'})
         console.log(err)
        
    }).catch(err=> {
        console.log("ERROR!!!!!!",err)
        })

}
