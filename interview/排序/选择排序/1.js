// function selectSort(array){
//     let {length} = array.length;
//     if(length<=1){
//         return array;
//     }
//     let min;
//     for(let i = 0;i<length-1;i++){
//         min = i;
//         for(let j=i;i<length;j++){
//             if(array[j]<array[min]){
//                 min = j;
//             }
//         }
//         [array[i],array[min]]=[array[min],array[i]];
//         console.log(`第${i+1}次循环`,array);
//     }
//     return array;
// }
// let array = [8,5,4,3,6,7,9,2,1];
// console.log(selectSort(array));

function  selectSort(arr){
    const len=arr.length
    if(len<=1){
        return
    }
    for(let i=0;i<len;i++){
        let min=i;
        for(let j=i+1;j<len;j++){
            if(arr[j]<arr[min]){
                min=j
            }
        }
        [arr[min],arr[i]]=[arr[i],arr[min]]
    }
    return arr
}
let arr = [8,5,4,3,6,7,9,2,1]
console.log( selectSort(arr))

