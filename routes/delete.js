const express = require('express');
const router = express.Router();
const deleteController=require('../controllers/delete')


router.get('/agentSupplier/delete/:id',deleteController.deleteAgentSupplier);
router.get('/clinicalEngineer/delete/:id',deleteController.deleteClinicalEngineer);
router.get('/equipment/delete/:id',deleteController.deleteEquipment);


module.exports=router;