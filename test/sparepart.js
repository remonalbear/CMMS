const Sparepart=require('../models/spare_part');
const sequelize=require('../util/db.js');

// synchronizing with database 
sequelize.sync()
.then(res => {       
    Sparepart.create({Code:1234,Name:'ecg',Image:'image_romana.jpg',Amount:3,AgentSupplierId:1234})
    })
    .catch(err => {
      console.log("err:" ,err);
    })