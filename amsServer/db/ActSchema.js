var mongoose = require('../init.js')
const { Schema } = mongoose

// 活动信息表
var ActSchema = new Schema({
    AName:{
        type:String,
        require: true
    },
    ATime:{
        type:String,
        require: true
    },
    APlace:{
        type:String,
        require: true
    },
    AContent:{
        type:String,
        require: true
    },
    ANature:{
        type:String,
        require: true
    }
})

module.exports = mongoose.model('Act',ActSchema)