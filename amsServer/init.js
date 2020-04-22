// 该文件用于连接MongoDB数据库
// 通过入口文件 app.js 引用并调用方法连接数据库
var mongoose = require('mongoose')
var db = 'mongodb://192.168.118.10/amsdb'
var glob = require('glob')
var { resolve } = require('path')

exports.initSchemas = () => {
    glob.sync(resolve(__dirname, './schema', '**/*.js')).forEach(require)
  }

// 连接数据库
exports.connect = () => connect() 

function connect() {
    mongoose.connect(db)

    mongoose.connection.on('disconnected', () => {
        console.log('与' + db + '失去连接')
    })

    mongoose.connection.on('error', err => {
        console.log('连接到'+ db + '错误：' + err)
    })

    mongoose.connection.once('open', () => {
        console.log('成功连接到' + db)
    })

    module.exports = mongoose;
}

connect()
    