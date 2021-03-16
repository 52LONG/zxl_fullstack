var romanToInt = function(s) {
    const map = {
        I: 1,
        V: 5,
        X: 10,
        L: 50,
        C: 100,
        D: 500,
        M: 1000
    }
    let sum = 0;
    for(i = 0; i < s.length; i++) {
        const item = s[i];
        let val = map[item]; 
        if(val < map[s[i+1]]) {
            // 前面小于后面 后面 - 前面
            val = map[s[i+1]] - val;
            i++;
        }
        sum += val;
    }
    return sum;
};
console.log(romanToInt('LX'));