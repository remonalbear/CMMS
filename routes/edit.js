const express = require('express');
const router = express.Router();
const editController=require('../controllers/edit')


router.get('/agentSupplier/edit/:id',editController.editAgentSupplier);
router.get('/clinicalEngineer/edit/:id',editController.editClinicalEngineer);
router.get('/equipment/edit/:id',editController.editEquipment);
router.get('/sparePart/edit/:id',editController.editSparePart);
router.get('/breakDown/edit/:id',editController.editBreakDown);
router.get('/workOrder/edit/:id',editController.editWorkOrder);
router.get('/maintenance/edit/:id',editController.editMaintenance);








module.exports=router;