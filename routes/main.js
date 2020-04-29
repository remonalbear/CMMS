const bcrypt = require('bcryptjs')
const DirName=require('../util/path');
const express = require('express');
const router = express.Router();
const controller=express.require('../controllers/table')



app.get('/home',controller.home);
app.get('/department',controller.derpartment);
app.get('/addDepartment',controller.addDepartment);










module.exports=router;