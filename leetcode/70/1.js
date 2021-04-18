//使用递归算法 
// 爬楼梯问题用递归算法 易造成超时 需要优化 尾递归
const climbStairs = function(n){
    if(n==1){
        return 1;
    }
    if(n==2){
        return 2;
    }
    return climbStairs(n-1)+climbStairs(n-2);
}
//递归的算法
console.log(climbStairs(2) ); 