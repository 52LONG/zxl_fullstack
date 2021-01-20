// Promise 对象代表了未来将要发生的事件，用来传递异步操作的消息。
console.log('enent-loop');//1
// setTimeout()=>{}挂起
setTimeout(()=>{//event-loop event-task 任务队列 -> 属于主线程 队列结构 当事件信息
    // 当主线程停下来后 轮询 enent-loop task-queue
    console.log('setTimeout1');//2
    Promise.resolve().then(data=>{//promise
        console.log(2222);//3
    })
},0)
setTimeout(()=>{//宏任务
    console.log('setTimeout2');//4
},0)
Promise.resolve().then(data=>{//promise-> 微任务
    console.log(1111);//5
})
console.log('enent-loop end');//6