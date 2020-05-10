const Sequelize=require('sequelize');
const sequelize=require('../util/db.js');


const Ppm_questions=sequelize.define('PpmQuestions',{
EquipmentCode:{
    type:Sequelize.INTEGER,
    allowNull:false,
    primaryKey:true,
},
Q1:{
    type:Sequelize.TEXT,
    allowNull:true,
},
Q2:{
    type:Sequelize.TEXT,
    allowNull:true,
},
Q3:{
    type:Sequelize.TEXT,
    allowNull:true,
},
Q4:{
    type:Sequelize.TEXT,
    allowNull:true,
},
Q5:{
    type:Sequelize.TEXT,
    allowNull:true,
}
})
module.exports=Ppm_questions