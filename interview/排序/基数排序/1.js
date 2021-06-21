var counter =1;
const radixSort=(arr,maxDigit)=>{
    var mod = 10;
    var dev = 1;
    for(var i=0;i<maxDigit;i++){
        for(var j= 0;j<arr.length;j++){
             var buket = parseInt((arr[j]%mod)/dev);
             if(counter[buket]==null){
                 counter[buket] = [];
             }
             counter[buket].push(arr[j])
        }
        var pos =0;
        for(var j=0;j<counter.length;j++){

            var value = null;
            if(counter[j]!=null){
                while((value = counter[j].shift())!=null){
                    arr[pos++] = value;
                }
            }
        }
       
    }
    return arr;
}
