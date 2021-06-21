const PENDING = 'pending'
const RESOLVED = 'resolved'
const REJECTED = 'rejected'

function MyPromise (fn){
    const that = this;
    that.state = PENDING;
    that.value = null;
    //装
    that.resolvedCallbacks=[]
    that.rejectedCallbacks=[]

    function resolve(value){
        if(that.state == PENDING){
            that.state = PESOLVED;
            that.value = value;
            that.resolvedCallbacks.map(cb=>{
                cb(that.value)
            })
        }
        
    }
    function reject(value){
        if(that.state == PENDING){
            that.state = PEJECTED;
            this.value = value;
        }

    
    }
    MyPromise.prototype.then = function(onFulfilled,onRejected){
        const that = this;
        onFulfilled = typeof onFulfilled  === 'function' ? onFulfilled : v => v
        onRejected = typeof onRejected === 'function ' ? onFulfilled :  r =>{throw r }

        if(that.state === PENDING){
            that.resolvedCallbacks.push(onFulfilled)
        }
        if(that.state === PESOLVED){
            onFulfilled()
        }

    }
    try{
        fn(resolve,reject)
    }catch(e){
        reject(e)
    }


}

new MyPromise((resolve,reject)=>{
    resolve('ok')
}).then((res)=>{

})