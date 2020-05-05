const Sequelize=require('sequelize');
const sequelize=require('../util/db.js');


const Equipment=sequelize.define('Equipment',{
Code:{
    type:Sequelize.INTEGER,
    allowNull:false,
    primaryKey:true
},
Name:{
    type:Sequelize.STRING,
    allowNull:false
},
Cost:{
    type:Sequelize.BIGINT(12),
    allowNull:false
},
ModelNumber:{
    type:Sequelize.BIGINT(25),
    allowNull:false
},
SerialNumber:{
    type:Sequelize.BIGINT(25),
    allowNull:false
},
InstallationDate:{
    type:Sequelize.TEXT,
    allowNull:false
},
Manufacturer:{
    type:Sequelize.TEXT,
    allowNull:true
},
Location:{
    type:Sequelize.STRING,
    allowNull:false
}


})
module.exports=Equipment