var isMatch = function(s, p) {
   let arr=s.match(new RegExp(`${p}`,'g'));
//    console.log(arr);
//    console.log(arr[0]);
    if(arr&&arr[0]==s){ //如果arr不存在的话arr是null；
    return true;
    }else{
    return false;
    }
};
 console.log(isMatch('aaa','a*'));
console.log(isMatch('aacb','a*cd'));