
var englishNameTransition =(name1,name2)=>{
    let  name1Arr =  name1.split('');
    let  name2Arr =  name2.split('');
    let len1 = name1Arr.length;
    let len2 = name2Arr.length;

    if(Math.abs(len1-len2)>1){
        return 0 ;
    }else if(len1>=len2){
            let j =0;
        for(let i = 0;i<len1;i++){
            if(name1Arr[i] != name2Arr[j] ){
            name1Arr.splice(i,1)
            name2Arr.splice(j,1) 
            // console.log(name1Arr);
            // console.log(name2Arr);
            if( name1Arr.toString() == name2Arr.toString()){
                return 1;
            }  
            else if(name1Arr[i+1] == name2Arr[j]){
        
                return 1;
            }else{
                return 0
            }
        }
        j++    
         
    }
   return 0 ; 
}else{
    let j = 0;
    let tag = 0;
    for(let i = 0;i<len2;i++){
    if(name2Arr[i] != name1Arr[j]){
        name2Arr.splice(i,1)
        name1Arr.splice(j,1) 
        if( name1Arr.toString() == name2Arr.toString()){
            return 1;
        }  
        else if(name1Arr[i+1] == name2Arr[j]){
    
            return 1;
        }else{
            return 0
        }
    }
    j++    

}
   return 0
}
 
}
console.log( englishNameTransition("apple","apeele"));
// console.log(englishNameTransition('leapp', 'appl')); 
// console.log(englishNameTransition('appe', 'aeepe'));
// 