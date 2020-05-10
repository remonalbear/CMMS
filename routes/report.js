const express = require('express');
const router = express.Router();
const reportController=require('../controllers/report')


router.get('/report/department/equipments/:code',reportController.departmentEquipmentsReport);
router.get('/report/department/engineers/:code',reportController.departmentEngineersReport);
router.get('/report/agent/spareParts/:Id',reportController.agentSparePartsReport);
router.get('/report/agent/equipments/:Id',reportController.agentEquipmentsReport);
router.get('/report/equipment/installation/:Id',reportController.equipmentInstallationReport);
router.get('/report/equipment/dailyInspection/:Id',reportController.equipmentDialyInspectionReport);
router.get('/report/dialyInspection/:code',reportController.dialyInspectionReport);
router.get('/report/equipment/ppm/:Id',reportController.equipmentPpmReport);
router.get('/report/ppm/:code',reportController.PpmReport);

module.exports=router;