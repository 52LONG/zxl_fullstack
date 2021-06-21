function bubbleSort (array) {
    let {length} = array
    if(length<=1){
        return array;
    }
    for(let i = 0; i<array.length-1;i++){
        let swapped = false;
        for(let j = 0;j<array.length-i-1;j++){ 
        if(array[j]>=array[j+1]){
            [array[j],array[j+1]] = [array[j+1], array[j]]  // 使用解构进行交换
            
        }
    }
    if(swapped == false){
        return array;
    }
    }
    return array;
}
let array = [1,2,3,4,5,6,7,8];
console.log(bubbleSort(array));