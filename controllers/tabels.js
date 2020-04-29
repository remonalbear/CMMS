const DirName=require('../util/path')


exports.home=(req,res,next)=>{
    res.render('home',{layout:false})
}


exports.department=(req,res,next)=>{
    res.render('department',{layout:false})
}

exports.addDepartment=(req,res,next)=>{
    res.render('addDepartment',{layout:false})
}