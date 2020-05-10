const Sequelize=require('sequelize');
const sequelize=require('../util/db.js');


const Ppm=sequelize.define('PPM',{
Code:{
    type:Sequelize.INTEGER,
    allowNull:false,
    autoIncrement:true,
    primaryKey:true
},
DATE:{
   type:Sequelize.STRING,
   allowNull:false 
},
Q1:{
    type:Sequelize.STRING,
    allowNull:false,
},
Q2:{
    type:Sequelize.STRING,
    allowNull:false,
},
Q3:{
    type:Sequelize.STRING,
    allowNull:false,
},
Q4:{
    type:Sequelize.STRING,
    allowNull:false,
},
Q5:{
    type:Sequelize.STRING,
    allowNull:false,
},
N1:{
    type:Sequelize.TEXT,
    allowNull:true,
},
N2:{
    type:Sequelize.TEXT,
    allowNull:true,
},
N3:{
    type:Sequelize.TEXT,
    allowNull:true,
},
N4:{
    type:Sequelize.TEXT,
    allowNull:true,
},
N5:{
    type:Sequelize.TEXT,
    allowNull:true,
}

})
module.exports=Ppm