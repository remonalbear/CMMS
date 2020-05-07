const Sequelize=require('sequelize');
const sequelize=require('../util/db.js');


const Break_down=sequelize.define('BreakDown',{
Code:{
    type:Sequelize.INTEGER,
    allowNull:false,
    autoIncrement:true,
    primaryKey:true
},
Reason:{
    type:Sequelize.TEXT,
    allowNull:false,
},
DATE:{
    type:Sequelize.TEXT,
    allowNull:false  
}


})
module.exports=Break_down