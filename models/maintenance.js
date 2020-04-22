const Sequelize=require('sequelize');
const sequelize=require('../util/db.js');


const Maintenance=sequelize.define('Maintenance',{
Id:{
    type:Sequelize.INTEGER,
    allowNull:false,
    autoIncrement:true,
    primaryKey:true
},
StartDate:{
    type:Sequelize.DATE,
    allowNull:false
},
EndDate:{
    type:Sequelize.DATE,
    allowNull:false
},
Description:{
    type:Sequelize.TEXT,
    allowNull:false
}


})
module.exports=Maintenance