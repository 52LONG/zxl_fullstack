let  url = 'https://www.baidu.com?a=1&b=2&c=3&d=4#h'
function getParams(url, b){
    let v = url.split("?")
    for(let i =0;i<v.length;i++){
        let p = v[1].split("&") 
        // console.log(p);
        let z = p[1].split("=")
        // console.log(z[0]);
        if(z[0]==b){
            return z[1]
        }
    }
   return null;;

    // console.log(v);
}
console.log(getParams(url, 'b'));
