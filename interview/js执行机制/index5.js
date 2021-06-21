function bar() {
    var myName = '嘉新'
    let test1 = 100
    {
        let test = 123
    }
    if (1) {
      let myName = 'chrome浏览器'
      console.log(test);
    } 
  }
  
  function foo() {
    var myName = '王嘉新'
    let test = 2
    {
      let test = 3
      bar()
    }
  }
  
  var myName = '队长'
  let myAge = 10  // myAge 和 test 是在同一个块级作用域中
  let test = 1
  {
      let  test = 1;  //会产生块级作用域，加{} 是自己强行独创块级元素 
  }
  foo()
  
  