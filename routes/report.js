const express = require('express');
const router = express.Router();
const reportController=require('../controllers/report')


router.get('/report/department/:code',reportController.departmentReport);




module.exports=router;