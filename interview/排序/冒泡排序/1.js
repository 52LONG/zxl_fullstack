function bubbleSort (array) {
    let {length} = array
    if(length<=1){
        return array;
    }
    for(let i = 0; i<array.length-1;i++){
        for(let j = 0;j<array.length-i-1;j++){
        if(array[j]>=array[j+1]){
            [array[j],array[j+1]] = [array[j+1], array[j]]  // 使用解构进行交换
        }
    }
    }
    return array;
}
let array = [2,8,9,6,5,4,2,1];
console.log(bubbleSort(array));