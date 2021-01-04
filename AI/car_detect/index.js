// console.log('AI 来了，帅！ ');
//node 引入模块关键字 imageClassify图像识别
const ApiImageClassifyClient = require('baidu-aip-sdk').imageClassify;
//内置模块 fs模块 fileSystem
const  fs=require('fs');
 //1.读入文件 I/O操作 文件从硬盘中读入内存中
const APP_ID="23077975"
const API_KEY="Q2MPAVLpZo5jjldlI4Xm8PGO"
const SECRET_KEY="TZbBCyLLkmIWZVBhewxw2V5ihrepTQsh"
const client = new ApiImageClassifyClient(APP_ID,API_KEY,SECRET_KEY);
const image=fs.readFileSync("1.webp").toString("base64");
client
    .carDetect(image)
    .then(function(result){
        console.log(result);
    })
    .catch(function(err){
        console.log(err);
    })