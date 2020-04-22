const Sequelize=require('sequelize');
const sequelize=require('../util/db.js');


const Agent_supplier=sequelize.define('AgentSupplier',{
Id:{
    type:Sequelize.INTEGER,
    allowNull:false,
    autoIncrement:true,
    primaryKey:true
},
Name:{
    type:Sequelize.STRING,
    allowNull:false
},
Adress:{
    type:Sequelize.STRING,
    allowNull:false
},
Phone:{
    type:Sequelize.BIGINT(20),
    allowNull:false,
    },
Email:{
    type:Sequelize.STRING,
    allowNull:false,    
    },
Notes:{
    type:Sequelize.TEXT,
    allowNull:true,
    }    

})
module.exports=Agent_supplier