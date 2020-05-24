const express = require('express');
const path = require('path')
const exphbs=require('express-handlebars');
const bodyParser=require('body-parser');
const multer =require('multer');
const DirName=require('./util/path');
const sequelize=require('./util/db')
const session=require('express-session');
const clinical_engineer=require('./models/clinical_engineer');
const spare_parts=require('./models/spare_part');
const department=require('./models/department');
const agent_supplier=require('./models/agent_supplier');
const equipment=require('./models/equipment');
const work_order=require('./models/work_order');
const break_down=require('./models/break_down');
const dialy_inspection=require('./models/dialy_inspection');
const ppm_questions=require('./models/ppm_questions')
const ppm=require('./models/ppm')
const maintenance=require('./models/maintenance');
const homeController=require('./routes/main');
const addController=require('./routes/add');
const deleteController=require('./routes/delete')
const editController=require('./routes/edit')
const reportController=require('./routes/report')




const app = express();
app.use(bodyParser.urlencoded({extended:false}))
app.use(session({secret:'anysecret',resave:false,saveUninitialized:false}));
const filestorage =multer.diskStorage ({
  destination:(req,file,cb) => {
    cb(null,'public/images');
  },
  filename:(req,file,cb) => {
    cb(null,'image'+'_'+file.originalname);
  }
})
const filefilter = ( req ,file,cb) => {
if(file.mimetype === 'image/png' || file.mimetype === 'image/jpg' || file.mimetype === 'image/jpeg'  )
{
  cb(null,true);
} else{
 cb(null,false);
}
}

app.use(multer({storage:filestorage,fileFilter:filefilter}).single('image'));


app.use(express.static(DirName+'/public/'));
app.engine('handlebars', exphbs({layoutsDir:'views/layouts/',defaultLayout:'main-layout',partialsDir:'views/includes/'}));
app.set('view engine', 'handlebars');
app.set('views','views');



// app.use(multer({dest:'images/'}).single('image'))
app.use(reportController);
app.use(editController);
app.use(deleteController);
app.use(addController);
app.use(homeController);
app.use((req,res)=>{
  res.render('error',{layout:false,href:'/',pageTitle:'404 Error',message:'404 Sorry !!! Could Not Get This Page'})
})


ppm_questions.belongsTo(equipment,{foreignKey:'EquipmentCode'})
equipment.hasOne(ppm_questions,{foreignKey:'EquipmentCode'})
clinical_engineer.belongsTo(department);
department.hasMany(clinical_engineer);
work_order.belongsTo(clinical_engineer);
clinical_engineer.hasMany(work_order);
spare_parts.belongsTo(agent_supplier);
agent_supplier.hasMany(spare_parts);
equipment.belongsTo(agent_supplier);
agent_supplier.hasMany(equipment);
equipment.belongsTo(department);
department.hasMany(equipment);
work_order.belongsTo(equipment);
equipment.hasMany(work_order);
break_down.belongsTo(equipment);
equipment.hasMany(break_down);
maintenance.belongsTo(break_down);
break_down.hasMany(maintenance);
dialy_inspection.belongsTo(equipment);
equipment.hasMany(dialy_inspection);
dialy_inspection.belongsTo(clinical_engineer);
clinical_engineer.hasMany(dialy_inspection)
ppm.belongsTo(equipment);
equipment.hasMany(ppm);
ppm.belongsTo(clinical_engineer);
clinical_engineer.hasMany(ppm)
maintenance.belongsTo(clinical_engineer)
clinical_engineer.hasMany(maintenance)
spare_parts.belongsTo(equipment)
equipment.hasMany(spare_parts)

// synchronizing with database 
sequelize.sync()
//sequelize.sync({force:true})
.then(res => {
    app.listen(5000,() => {
        console.log('Running')
       })
      
    })
    .catch(err => {
      console.log("err:" ,err);
    })

