var reverse = function(x) {
    let str = x.toString() //转化为字符串

    let arr = str.split('') //转为数组

    //判断是否有“-”
    if(arr[0]!=="-"){
        let res = Number(arr.reverse().join('')) 
        if(res>= -2147483648 && res<= 2147483647){
            return res
        }else{
            return 0
        }
    }else if(arr[0]==='-'){
        delete arr[0]
        let res = Number(arr.reverse().join(''))
        if(res>= -2147483648 && res<= 2147483647){
            return -res
        }else{
            return 0
        }
    }

};
console.log(reverse(-2334)); 