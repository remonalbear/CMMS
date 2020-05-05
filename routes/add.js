const express = require('express');
const router = express.Router();
const addController=require('../controllers/add')

router.post('/department/add',addController.addDepartment)
router.post('/agentSupplier/add',addController.addAgentSupplier)
router.post('/clinicalEngineer/add',addController.addClinicalEngineer)
router.post('/equipment/add',addController.addEquipment)
module.exports=router;