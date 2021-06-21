const heapify=(arr,i,len)=>{
    let root = largest = i;
    let left = 2*i+1;
    let right = 2*i+2;
    if(arr[largest] <arr[left]&&left<len){
        largest = left;
    }
    if(arr[largest]<arr[right] && right<len){
        largest = right;
    }
    if(largest === root){
        return 
    }else{
        [arr[largest],arr[root]] = [arr[root],arr[largest]]
        heapify(arr,largest,len)
    }
}

const bulidMaxHeap=(arr)=>{
  var len = arr.length;
    // 初始化最大堆，从最后一个非叶子节点开始倒序遍历所有的非叶子节点
    for(let i = parseInt(len/2-1);i>=0;i--){
        heapify(arr,i,len)
    }
    for(let i = len - 1;i>=0;i--){
        //把根节点和最后一个节点进行交换
        [arr[0],arr[i]]=[arr[i],arr[0]]
        //重新平衡二叉堆
        heapify(arr,0,i)
    }
}

let arr = [27,21,33,14,18,11,9,17,19]
bulidMaxHeap(arr)
console.log(arr);