const express = require('express');
const path = require('path')
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




const app = express();
app.use(bodyParser.urlencoded({extended:false}))
app.use(express.static(DirName+'/public/'));

app.get('/' ,(req,res) =>{
 console.log('test')
 res.sendFile(path.join(DirName,'views','index.html'));
})

// synchronizing with database 
sequelize.sync().then(res => { 
    app.listen(3000,() => {
        console.log('Running')
       })
      
    })
    .catch(err => {
      console.log("err:" ,err);
    })