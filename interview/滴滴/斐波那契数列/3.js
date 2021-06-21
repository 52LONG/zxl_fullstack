const fibonacci = function(){
    var mem = [0,1];
    var f = function(n){
        var res = mem[n];
        if(typeof res !== 'number'){
            mem[n] = f(n-1) + f(n-2);
            res = mem[n];
        }
        return res;
    }
    return f;
}();

console.log(fibonacci(2)); 