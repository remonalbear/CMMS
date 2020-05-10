const express = require('express');
const router = express.Router();
const addController=require('../controllers/add')

router.post('/department/add',addController.addDepartment)
router.post('/agentSupplier/add',addController.addAgentSupplier)
router.post('/clinicalEngineer/add',addController.addClinicalEngineer)
router.post('/equipment/add',addController.addEquipment)
router.post('/sparePart/add',addController.addSpareParts)
router.post('/breakDown/add',addController.addBreakDown)
router.post('/workOrder/add',addController.addWorkOrder)
router.post('/maintenance/add',addController.addMaintenance)


module.exports=router;