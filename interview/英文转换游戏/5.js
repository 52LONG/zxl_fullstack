function test(a, b) {
    if (a === b) {
        return 0            
    }
    if (Math.abs(a.length - b.length) > 1) {
        return 0
    }
    const [arrA, arrB] = a.length > b.length ? [a.split(''), b.split('')] : [b.split(''), a.split('')]
    let lf = 0
    let rh = 0
    let count = 0
    while(arrB[rh]&arrA[lf]) {
        if (arrA[lf] !== arrB[rh] ) { 
             count++;
            if (count>1) return 0
           
        } else {
            rh++
        }
        lf++
    }
    return 1 
}
// console.log(test('eea','eec'));

// console.log(test('apple', 'pple'));
// console.log(test('applee','apple'));
console.log(test('lappl','pple'));
