function debounce(func,wait,immediate){
	let timer,result;
	return function(){
		//改变执行函数内部的this指向
        // console.log(this);
		let context = this;
		let args = arguments;
		clearTimeout(timer);
        // if(immediate){
        //     //立即执行
        //     let callNow = !timer;
        //     timer = setTimeout(()=>{
        //         callNow = null;
        //     },wait)
        //     if(callNow)  func.apply(context,args)
        // }else{
        //     // 不会立即执行
        //     timer = setTimeout(function(){
		//  	func.apply(context,args)
		//  },wait)
        // }
        timer = setTimeout(function(){
            func.apply(context,args)
        },wait)
        // return result;
	}
	
}

// function debounce(func, wait) {
//       let timeout;
//       return function () {
//         // console.log(this);  //=>从中可以测试出this指向的container
//         //保存this
//         let _this = this;
//         // 解决前面的event指向问题
//         let args = arguments;
//         // 清空上从定时器
//         clearTimeout(timeout);
//         timeout = setTimeout(function () {
//           // console.log(this)  //=>这里面的this指向window，也就是前面的count那的this是指向window
//           //但是防抖函数的this应该是指向container
//           func.apply(_this, args);
//         }, wait)
//       }
    
//     }
// function debounce(func, wait) {
//   let timeout;
//   return function () {
//     // 清空上从定时器
//     clearTimeout(timeout);
//     timeout = setTimeout(func, wait)
//   }

// }
let count = 0;
let container = document.getElementById('container');
function doSomeThing(e){
    console.log(this);
    console.log(e);
    container.innerHTML = count++;
    return '想要的结果'
}
//第三个参数为true为立即执行
// container.onmousemove = debounce(doSomeThing,1000,true)
// container.onmousemove = debounce(doSomeThing,1000)
container.onmousemove = debounce(doSomeThing,1000)