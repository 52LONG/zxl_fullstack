this.addEventListener('message',(e)=>{//消息监听
    // console.log(e);
    // 不能操纵dom 要不然会报错
    // console.log(document.body); 
    this.postMessage('Yout said:'+e.data);
})