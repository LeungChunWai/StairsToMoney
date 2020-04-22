var mongoose = require('../init.js')
var Schema = mongoose.Schema

// 参与者表
var StuSchema = new Schema({
    SNO:{
        type:Number,
        require: true
    },
    SName:{
        type:String,
        require: true
    },
    SPass:{
        type:String,
        require: true
    },
    SSex:{
        type:String,
        require: true
    },
    SAct:{
        type:Array,
        require: true
    },
    SClass:{
        type:String,
        require: true
    }
})

module.exports = mongoose.model('Stu',StuSchema)