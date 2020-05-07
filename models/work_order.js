const Sequelize=require('sequelize');
const sequelize=require('../util/db.js');


const Work_order=sequelize.define('WorkOrder',{
Code:{
    type:Sequelize.INTEGER,
    allowNull:false,
    autoIncrement:true,
    primaryKey:true
},
DATE:{
    type:Sequelize.TEXT,
    allowNull:false
},
Cost:{
    type:Sequelize.INTEGER,
    allowNull:false
},
Priority:{
    type:Sequelize.STRING,
    allowNull:false
}


})
module.exports=Work_order