const Sequelize=require('sequelize');
const sequelize=require('../util/db.js');


const Clinical_enginner=sequelize.define('ClinicalEnginner',{
    DSSN: {
        type:Sequelize.BIGINT(20),
       allowNull:false,
       primaryKey:true
    },
   FName: {
    type:Sequelize.STRING,
    allowNull:false
    },
    LName:{
        type:Sequelize.STRING,
        allowNull:false
    },
    Phone:{
        type:Sequelize.BIGINT(20),
        allowNull:false,
    },
    Image:{
        type:Sequelize.STRING,
        allowNull:true
    },
    Age:{
        type:Sequelize.INTEGER,
        allowNull:false,
    },
    Email:{
        type:Sequelize.STRING,
        allowNull:false,    
    },
    Adress:{
     type:Sequelize.STRING,
     allowNull:false   
    },
    WorkHours:{
        type:Sequelize.INTEGER,
        allowNull:true
    },
    Password:{
        type:Sequelize.STRING,
        allowNull:false
    }
})

module.exports=Clinical_enginner;