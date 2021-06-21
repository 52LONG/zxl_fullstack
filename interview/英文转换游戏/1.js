var englishNameTransition =(name1,name2)=>{
   let  name1Arr =  name1.split('');
   let name2Arr =  name2.split('');
   let len1 = name1Arr.length;
   let len2 = name2Arr.length
//    console.log(len1);
   let arr = []
    // console.log(name1Arr);
    for(let i =0;i<len1;i++){
        for(let j = 0;j<len2;j++){
            if(len1>len2 && len1-1 ==len2){
            name1Arr[i] != name2Arr[j] ?  arr.push(name1Arr[i]): 1
             return arr.length==1?1:0
            }else if(len2>len1 &&len2-1 ==len1){
                name1Arr[i] == name2Arr[j] ? name2Arr.splice(j,1) : arr.push((name1Arr[j]))
                return arr.length==1?1:0
            }else if(name1Arr == name2Arr){
                return 1
            }else{
                return 0
            }
            // if(name1Arr[i] == name2Arr[j]||name1Arr[i+1] == name2Arr[j]){
            //     return 1
            // }
        }  
        
    }
  
}
console.log( englishNameTransition("apple","aple"));