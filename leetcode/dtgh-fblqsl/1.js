//动态规划  斐波那契数组
function feiBoLaQie(n) {
    //创建一个数组，用于存放斐波拉契数组的数值
    let val = [];
    //将数组初始化，将数组的每一项都置为0
    for(let i =0 ;i<=n;i++){
        val[i] = 0;
    }
    if (n==1 || n==2){
        return 1;
    } else{
        val[1] = 1;
        val[2] = 2;
        for (let j =3; j<=n;j++){
            val[j] = val[j-1] + val[j-2];
        }
    }
    return val[n-1];
}

console.log(feiBoLaQie(4));