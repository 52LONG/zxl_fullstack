var isValid = function (s) {
    let valid = true;
    const stack = [];//数组栈
    const mapper = {
      "{": "}",
      "[": "]",
      "(": ")",
    };
  
    for (let i in s) {//时间复杂度 O(n)
      const v = s[i];
      //indexOf() 方法可返回某个指定的字符串值在字符串中首次出现的位置。
      if (["(", "[", "{"].indexOf(v) > -1) {
        stack.push(v);
      } else {
        // pop 返回删除的元素。
        const peak = stack.pop();
        // console.log( v );
        console.log(mapper[peak]);
        if (v !== mapper[peak]) {
          return false;  
        }
      }
    }
  
    if (stack.length > 0) return false;
  
    return valid;
  };
  // console.log(isValid('(){)'));
  // console.log(isValid('(){}'));
  console.log(isValid('([{}])'));