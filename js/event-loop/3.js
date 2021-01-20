let promise = new Promise(function(resolve, reject){
    console.log("AAA");
    resolve()
});
 Promise.resolve().then(data=>{
            console.log('BBB');
        })
        
     console.log("DDD")