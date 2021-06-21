function test(n){
    let dp = [0,1]
  var f=function(n){
       if(n<2){
        return dp[n]
        }
    for(let i = 2;i<=n;i++){
        dp[i]  = dp[i-1] + dp[i-2]
         return dp[i];
    } 
      
}
    return f(n);
    // return dp[n-1]
};
console.log(test(5));




// new String('a') 和 'a' 是一样的么?

function test(o){
     o.name = 'li';
     o = new Object();
     o.name="liu";
    //  console.log(o.name);
    }; 
var a = new Object(); 
test(a);
console.log(a.name);
