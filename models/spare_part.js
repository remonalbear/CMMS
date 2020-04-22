const Sequelize=require('sequelize');
const sequelize=require('../util/db.js');


const Spare_part=sequelize.define('SparePart',{
Code:{
    type:Sequelize.INTEGER,
    allowNull:false,
    primaryKey:true
},
Name:{
    type:Sequelize.STRING,
    allowNull:false
},
Number:{
    type:Sequelize.INTEGER,
    allowNull:false
}


})
module.exports=Spare_part