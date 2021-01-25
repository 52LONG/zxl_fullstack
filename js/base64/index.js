const webp = require('webp-converter'); 
// -q float
// 为RGB通道指定压缩参数0-100， 默认值75

// 如果是在有损压缩中（默认为有损压缩）参数越小，图片质量越低，文件越小。最好的质量参数是100

webp.cwebp("1.jpg","output.webp","-q 80",function(status,error){
    console.log(status);
})