function fibonacci(n){
    if(n < 0) throw new Error('输入的数字不能小于0');
    let arr = [0,1];//在外部函数中定义数组，内部函数给数组添加值
    function calc(n){
        if(n<2){
            return arr[n];
        }
        if(arr[n] != undefined){
            return arr[n];
        }
        let data = calc(n-1) + calc(n-2);//使用data将每次递归得到的值保存起来
        arr[n] = data;//将每次递归得到的值放到数组中保存
        return data;
    }
    return calc(n);  
}
console.log(fibonacci(3)); 