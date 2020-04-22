var mongoose = require('../init.js')
var Schema = mongoose.Schema

// 主办方表
var OgnSchema = new Schema({
    ONO:{
        type:Number,
        require: true
    },
    OPass:{
        type:String,
        require: true
    },
    OName:{
        type:String,
        require: true
    },
    ONature:{
        type:String,
        require: true
    },
    OAct:{
        type:Array,
        require: true
    }
})

module.exports = mongoose.model('Ogn',OgnSchema)