var act = require('./db/ActSchema');

//初始数据
// var activity = new act({
//     AName:'歌唱大赛',
//     ATime:'2020年6月1日',
//     APlace:'艺术楼报告厅',
//     AContent:'为庆祝国际儿童节，计算机科学系艺术团曲艺队组织一次歌唱大赛，欢迎各位踊跃参与',
//     ANature:'比赛'
// })
// 
// var organization = new ogn({
//     ONO:001,
//     OPass:'123456',
//     OName:'计算机科学系艺术团曲艺队',
//     ONature:'组织',
//     OAct:['歌唱大赛'],
// })

function getByConditions(){
    //var wherestr = {'AName' : '歌唱大赛'}
    
    //设置不输出 _id 字段
    //var opt = {'_id': 0}

    act.find(/*wherestr, opt,*/ function(err,res){
        if(err){
            console.log('error' + err);
        }else{
            console.log('res:' + res)
        }
    })
}

getByConditions()

