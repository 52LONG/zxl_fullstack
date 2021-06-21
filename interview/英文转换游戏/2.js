var englishNameTransition =(name1,name2)=>{
   let  name1Arr =  name1.split('');
   let  name2Arr =  name2.split('');
    let i=j= 0;
    let arr1 =[]
    let arr2 =[]
    let arr3=[]
    let len1 = name1Arr.length;
    let len2 = name2Arr.length;
    let length = (len1>len2?len1:len2)
    while(length>1){
        if(len1>len2 && len1-1 == len2){
        // name1Arr[i] == name2Arr[j] ? (name1Arr.splice(i,1),name2Arr.splice(j,1)):(arr1.push(name1Arr[i]),arr2.push(name2Arr[j]))
          name1Arr[i] == name2Arr[j] ? (name1Arr.shift(),name2Arr.shift()):(arr1.push(name1Arr[i]),arr2.push(name2Arr[j]))
        }
        if(len1<len2 && len2-1 == len1){
        // name1Arr[i] == name2Arr[j] ? (name1Arr.splice(j,1),name2Arr.splice(i,1)):(arr1.push(name1Arr[j]),arr2.push(name2Arr[i]))
        name1Arr[i] == name2Arr[j] ? (name1Arr.shift(),name2Arr.shift()):(arr1.push(name1Arr[i]),arr2.push(name2Arr[j]))
       
        // console.log(name1Arr);
        // console.log(name2Arr);
        }
        if(len1==len2 ){
        name1Arr[i] == name2Arr[j] ? (name1Arr.splice(i,1),name2Arr.splice(j,1)):(arr1.push(name1Arr[i]),arr2.push(name2Arr[j]))
                
        }

        // console.log(name1Arr);
        // console.log(name2Arr);

    }
    // console.log(arr1);
    // console.log(arr2);
    for(length;length>=0;length--){
        arr1[len1] == arr2[len2] ? ( arr1.splice(len1,1)&&arr2.splice(len2,1)):arr3.push( arr1[len1])
        len2--
        len1--
    }
    // console.log(arr3);
    return arr3.length == 1 ? 1 :0
}

console.log( englishNameTransition("apple","applee"));