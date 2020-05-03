const express = require('express');
const router = express.Router();
const tableController=require('../controllers/add')

router.post('/department/add',tableController.addDepartment)
router.post('/agentSupplier/add',tableController.addAgentSupplier)


module.exports=router;