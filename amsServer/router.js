//该文件从数据库获取数据 P269
var Router = require('koa-router')
var mongoose = require('mongoose')
var koaBody = require('koa-body')
var router = new Router()

router.get('/Activity',async (ctx) => {
    var activity = mongoose.model('Act')
    var activitys = await activity.find({})

    ctx.body = {
        'data': {
          activitys
        }
    }
})

router.get('/',function(req,res){
  console.log('1')
})

module.exports = router