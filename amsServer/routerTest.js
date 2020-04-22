const express = require('express')
const bodyParser = require('body-parser')
var mongoose = require('mongoose')
var act = require('./db/ActSchema')
var stu = require('./db/StuSchema')
var ogn = require('./db/OgnSchema')

var router = express.Router()

// function getByConditions(){
//     //var wherestr = {'AName' : '歌唱大赛'}
    
//     //设置不输出 _id 字段
//     //var opt = {'_id': 0}

//     act.find(/*wherestr, opt,*/ function(err,res){
//         if(err){
//             console.log('error' + err);
//         }else{
//             console.log('res:' + res)
//         }
//     })
// }

router.get('/Activity', function (req, res) {
    act.find(function (err, data){
        if(err) {
            return res.status(500),send('Server error.')
        }else{
        console.log('已发送data如下'+data)
        res.render('index.html',{data:data})
         data:data
        }   
    })
})

router.get('/stuLogin',function (req, res){
    // var returndata = new Map()
    
    // var stusno = req.query.sNo
    // var stupass = req.query.password

    console.log(req)
    
    // if (stusno == null||stupass == null){
    //     returnData.set("code","E19999");
    //     returnData.set("msg","用户名或密码不能为空");
    // }else if (!req.sNo.equals(stu.sNo)||!req.password.equals(password)){
    //     returnData.set("code","E19999");
    //     returnData.set("msg","用户名或密码错误");
    // }else {
    //     returnData.set("code","S10000");
    //     returnData.set("msg","登录成功");
    // }

})

// router.get('/ognLogin',function (req, res){
    

// })

module.exports = router