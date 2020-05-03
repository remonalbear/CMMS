const DirName=require('../util/path');
const express = require('express');
const router = express.Router();
const homeController=require('../controllers/home')




// app.get('/addDepartment',controller.addDepartment);
router.get('/department',homeController.department);
router.get('/breakdown',homeController.breakDown)
router.get('/equipment',homeController.equipment)
router.get('/workOrder',homeController.workOrder)
router.get('/agentSupplier',homeController.agentSupplier)
router.get('/sparePart',homeController.sparePart)
router.get('/clinicalEngineer',homeController.clinicalEngineer)
router.get('/maintenance',homeController.maintenance)
router.get('/home',homeController.home)
router.post('/signIn',homeController.signIn);
router.get('/',homeController.homeSignIn);










module.exports=router;