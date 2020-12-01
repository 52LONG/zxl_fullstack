// const AipOcrClient = require('baidu-aip-sdk').cor;
// //内置模块 fs模块 fileSystem
// const  fs=require('fs');
//  //1.读入文件 I/O操作 文件从硬盘中读入内存中
// const APP_ID="23078071"
// const API_KEY="w8Om4AkAFPGACtvtO5sAbUTE"
// const SECRET_KEY="GNZdAwpNDSh1kvDQW9H9GMqzSPxw8ldC"
// const client = new AipOcrClient (APP_ID,API_KEY,SECRET_KEY);
// const image=fs.readFileSync("2.jpg").toString("base64");
// const options={};
//   options["multi_detect"]="true";
//   client
//      .licensePlate(image,options)
//      .then(function(result){
//          console.log(result);
//      })
//      .catch(function(err){
//          console.log(err);;
//      })
    // console.log('AI','来了')

// node 引入模块关键字
const AipOciClient = require('baidu-aip-sdk').ocr;//图像识别

//  1. 读入文件 I/O操作 从硬盘中读入内存中
const fs = require('fs');// 内置模块 文件系统 fileSystem
const APP_ID = "23078071";
const API_KEY = "w8Om4AkAFPGACtvtO5sAbUTE";
const Secret_Key = "GNZdAwpNDSh1kvDQW9H9GMqzSPxw8ldC";

const client = new AipOciClient(APP_ID, API_KEY, Secret_Key);
const immage = fs.readFileSync("2.jpg").toString("base64");
const options = {};
options["multi_detect"] = "true"

client
    .licensePlate(immage, options)
    .then(function(result){
        console.log(result);
    })
    .catch(function(err){
        console.log(err);
    })
