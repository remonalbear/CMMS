const bcrypt = require('bcryptjs')
const Department = require('../models/department')
const AgentSupplier = require('../models/agent_supplier')
const ClinicalEngineer=require('../models/clinical_engineer')
const Equipment =require('../models/equipment')


exports.addDepartment=(req,res)=>{
 code=req.body.Code
 name=req.body.Name
 location=req.body.Location
 Department.create({Code:code,Name:name,Location:location}).then(dep =>{
 }).catch(err=> {
    console.log("ERROR!!!!!!",err)
    })
res.redirect('/department');


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
    age=req.body.Age
    workhours=req.body.workHours
    department=req.body.Department
    var departmentCode=null
    Department.findOne({where:{Name:department}}).then(department => { departmentCode=department.Code})
    if(req.body.Password)   
        bcrypt.genSalt(10, (err, salt) => {
        bcrypt.hash(req.body.Password, salt, (err, hash) => {
        pass=hash 
        });
            
        });



    ClinicalEngineer.findByPk(dssn).then(clinicalEngineer=>{
        if(clinicalEngineer){
            clinicalEngineer.DSSN=dssn
            clinicalEngineer.FName=fname
            clinicalEngineer.LName=lname
            clinicalEngineer.Adress=address
            clinicalEngineer.Phone=phone
            clinicalEngineer.Email=email
            clinicalEngineer.Age=age
            clinicalEngineer.WorkHours=workhours
            clinicalEngineer.DepartmentCode=departmentCode
            return clinicalEngineer.save()
        }
        else{
            return ClinicalEngineer.create({DSSN:dssn,FName:fname,
                    LName:lname,Adress:address,Phone:phone,
                    Email:email,Age:age,WorkHours:workhours,
                    DepartmentCode:departmentCode,Password:pass})
        }
    }).then(r => res.redirect('/clinicalEngineer'))
    .catch(err => console.log("ERROR!!!!!!",err))

}

exports.addEquipment=(req,res) => {
    code=req.body.Code
    name=req.body.Name
    cost=req.body.Cost
    modelnumber=req.body.ModelNumber
    serialnumber=req.body.SerialNumber
    installationdate=req.body.InstallationDate
    manufacturer=req.body.Manufacturer
    location=req.body.Location
    department=req.body.Department
    agent=req.body.Agent
    var departmentCode=null
    var agentCode=null
    Department.findOne({where:{Name:department}}).then(department => { departmentCode=department.Code})
    AgentSupplier.findOne({where:{Id:agent}}).then(agent =>{
        if(agent){
            agentCode=agent.Id
        }
        else
        console.log("ERROR!!!!!!",err)
        
    })
    Equipment.findByPk(code).then(equipment=>{
        if(equipment){
            equipment.Code=code
            equipment.Name=name
            equipment.Cost=cost
            equipment.ModelNumber=modelnumber
            equipment.InstallationDate=installationdate
            equipment.SerialNumber=serialnumber
            equipment.Manufacturer=manufacturer
            equipment.Location=location
            equipment.DepartmentCode=departmentCode
            equipment.AgentSupplierId=agentCode
            return equipment.save()
        }
        else{
            return Equipment.create({Code:code,Name:name,
                    Cost:cost,ModelNumber:modelnumber,SerialNumber:serialnumber,AgentSupplierId:agentCode,
                    Location:location,Manufacturer:manufacturer,InstallationDate:installationdate,DepartmentCode:departmentCode})
        }
    }).then(r => res.redirect('/equipment'))
    .catch(err => console.log("ERROR!!!!!!",err))

}
