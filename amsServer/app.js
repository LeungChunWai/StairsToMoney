//入口文件
var express = require('express')
var Koa = require('Koa')
var bodyParser = require('body-parser')
var { connect,initSchemas } = require('./init')
var router = require('./router')
var consola = require('consola')

var app = new Koa()

// 声明访问地址
const host = process.env.HOST || '127.0.0.1'
const port = process.env.PORT || 3000



//     app.use(ctx => {
//         ctx.status = 200 // koa defaults to 404 when it sees that status is unset
        
//         return new Promise((resolve) => {
//             ctx.res.on('close', resolve)
//             ctx.res.on('finish', resolve)
//             ctx.body='hello koa'
//         })
        

async function start() {
 
    // 连接数据库
  await connect()
  initSchemas()
  app
      .use(router.routes())
      .use(router.allowedMethods())
}  

app.use(async ctx => {
    ctx.body = 'Hello koa';
  });
  
app.listen(port, host)
    consola.ready({
        message:`服务器已启动成功：Server listening on http://${host}:${port}`
});

start()