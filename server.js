const express = require('express');
const path = require('path')
const exphbs=require('express-handlebars');
const bodyParser=require('body-parser');
const DirName=require('./util/path');
const sequelize=require('./util/db')
const clinical_engineer=require('./models/clinical_engineer');
const spare_parts=require('./models/spare_part');
const department=require('./models/department');
const agent_supplier=require('./models/agent_supplier');
const equipment=require('./models/equipment');
const work_order=require('./models/work_order');
const break_down=require('./models/break_down');
const maintenance=require('./models/maintenance');
const homeController=require('./routes/main');
const addController=require('./routes/add');
const deleteController=require('./routes/delete')
const editController=require('./routes/edit')
const reportController=require('./routes/report')




const app = express();
app.use(bodyParser.urlencoded({extended:false}))

app.use(express.static(DirName+'/public/'));

app.engine('handlebars', exphbs({layoutsDir:'views/layouts/',defaultLayout:'main-layout',partialsDir:'views/includes/'}));
app.set('view engine', 'handlebars');
app.set('views','views');



app.use(reportController);
app.use(editController);
app.use(deleteController);
app.use(addController);
app.use(homeController);
app.use((req,res)=>{
  res.render('error',{layout:false,href:'/home',pageTitle:'404 Error',message:'404 Sorry !!! Could Not Get This Page'})
})


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

// synchronizing with database 
 sequelize.sync()
// sequelize.sync({force:true})
.then(res => { 
    app.listen(30,() => {
        console.log('Running')
       })
      
    })
    .catch(err => {
      console.log("err:" ,err);
    })

