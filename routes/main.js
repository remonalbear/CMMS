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
router.get('/installation',homeController.installation)
router.get('/ppm',homeController.ppm)
router.get('/dialyInspection',homeController.dailyInspection)
router.get('/home',homeController.home)
router.get('/engineer/dialyInspection',homeController.dialyInspectionEngineer)
router.post('/engineer/dialyInspection',homeController.dialyInspectionEngineerPost)
router.get('/engineer/ppm',homeController.ppmEngineer)
router.post('/engineer/ppm/equipment',homeController.ppmEngineerPost)
router.post('/engineer/ppmEquipment/:Code',homeController.ppmEngineerEquipmentPost)
router.get('/engineer/workOrder',homeController.workorder)
router.get('/engineer/workOrder/description/:code',homeController.workorderDescription)
router.get('/engineer/ppm/:code',homeController.ppmEngineerEquipment)
router.post('/signIn',homeController.signIn);
router.get('/',homeController.homeSignIn);










module.exports=router;