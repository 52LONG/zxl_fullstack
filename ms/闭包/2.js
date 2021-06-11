// function foo(){
//     var a = 2;
//     function bar(){
//        console.log(a);
//     }
//     return bar;
// }
// foo()();
// // console.log(baz);


// var a = 10;
// function f1(){
//     var a = 20;
// console.log(a);
// }
// f1();//输出 10

// function f2(){
//   var b = 1;
//   console.log(b);
// }
// f2();
// console.log(b);
// function fun(){
//     return k;
//     function k(){
//        return '555 '
//     }
    
// }
// var a=fun;
// var b=fun();
// var kk=fun()();
// console.log(a); //[Function:fun]
// console.log(b);// [Function:k]
// console.log(kk); //555   
// var a = '函数外'
// function fo(){
//     var a = ' fo 函数内'
//     function foo(){
//         console.log(a)
//     }
//     return foo
// }

// function f(p){
//     var a = 'f 函数内'
//     p()()
// }
// f(fo)//输出为fo函数内 

// function wait(m){
//     setTimeout(function timer(){
//         console.log(m);
//     },1000)
   
// } 
// wait("Hello");
// for(let i = 1;i<=5;i++ ){
//     (function(){
//         // console.log(i);
//            setTimeout(function timer(){
//             console.log(i);
//             },i*1000)
//      })();
//     }

    // for(var i = 1;i<=5;i++ ){
    //     (function(){
    //             var j=i;
    //            setTimeout(function timer(){
    //             console.log(j);
    //             },j*1000)
    //      })();
    //     }

    // for(let i = 1;i<=5;i++ ){
    //     (function(){
    //            setTimeout(function timer(){
    //             console.log(i);
    //             },i*1000)
    //      })();
    // //     }
    // for(let i = 0;i<=5;i++){
    //     console.log(i);
    // }
    // console.log(i,'----');
    // for(var i = 0;i<5;i++){
    //     console.log(i);
    // }
    // console.log(i,'+++++');
    function foo(){
        var a = 2;
        function bar(){
            console.log(a);
        }
        return bar;
    }
    foo()();