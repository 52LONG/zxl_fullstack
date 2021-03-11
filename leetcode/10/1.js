var isMatch = function(s, p) {
    return new RegExp('^' + p + '$').test(s)
    };
    console.log(isMatch('aaa','a*'));
    console.log(isMatch('aacb','a*cd'));