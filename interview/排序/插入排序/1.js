function insertionSort(arr) {
    for (let i = 0; i < arr.length - 1; i++) {
        for (let j = i + 1; j > 0; j--) {
            //从第二位开始和前面的比
            if (arr[j] < arr[j - 1]) {
              [arr[j],arr[j-1]] = [arr[j-1],arr[j]]
            } else {
                // 当不小于已排序好的最大值时
                // 退出每次遍历，进行下一次
                break
            }
        }

        console.log(`第${i + 1}次循环`, arr)
    }

    return arr;
}
let array = [2,8,9,6,5,4,2,1];
console.log(insertionSort(array));