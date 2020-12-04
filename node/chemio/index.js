const fetch = require("node-fetch");
let cheerio = require('cheerio');


let url = 'https://movie.douban.com/top250';

const main = async () => {//async 关键字
    fetch(url)
        .then(res=>res.text())
        .then(body=>{
            let $ = cheerio.load(body);
            let movieNodes = $('#content .item');
            console.log(movieNodes)
        });
    }
  
main();

// let request = require('request-promise');//第三方npm
// let cheerio = require('cheerio');
// let url ="https://movie.douban.com/top250"
// const main= async()=>{//async关键字
//     let html= await request({//等着去爬取一下
//         url
//     });
//     console.log(html);
// }
// main();
