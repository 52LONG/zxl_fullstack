// function merge(){

// }
//JS 变量的类型是由值决定的 .弱类型
//m+n<=nums1.length
// const merge=(nums1,m,nums2,n)=>{//箭头函数 es6
//     //把nums2 合并到nums1中
//     // [1,2,3,0,0,0]
//     // 重新排序
//     let current2=0;//定义一个指针
//     for(let i=nums1.length-1;i>=nums1.length-n;i--)
//     {
//     nums1[i]=nums2[current2++];//好理解 nums2有个可遍历
// }
// console.log(nums1);
// }
// merge([1,2,3,0,0,0],3,[2,5,6],3);
// [ 1, 2, 3, 6, 5, 2 ]
// const marge = (nums1, m, nums2, n) => { //箭头函数 es6
//     // 把nums2合并到nums1之中
//     //[1,2,3,0,0,0]
//     //重新排序
//     //多定义一个变量
//     let current2 = 0; //定义一个指针
//     for (let i = nums1.length - n; i <= nums1.length - 1; i++) {
//         nums1[i] = nums2[current2++]; //好理解 nums2 有可遍历
//     }
//     console.log(nums1);
// }

// marge([1,2,3,0,0,0,],3,[2,5,6],3);
// [ 1, 2, 3, 2, 5, 6 ]
// const merge  = (nums1,m,nums2,n) => {          //  箭头函数  es6
//     //吧nums2  放入 nums1 中
//     //[1,2,3,0,0,0]  变为  [1,2,3,2,5,6]  再排序

//     let current2 = n-1;
//     for(let i = nums1.length-1;i >= nums1.length-n;i--){
//         nums1[i]=nums2[current2--];
//     }
//     // console.log(nums1);
//     return nums1.sort((a,b)=>a-b);//(a,b)为参数  a-b 返回是布尔值 a-b>0 真 假则调换位置 是小到大排序      b-a 真  假则调换位置 为大到小排序


// }
// console.log(merge([1,2,3,0,0,0],3,[2,5,6],3));
const merge  = (nums1,m,nums2,n) => {  
    let i=m-1;
    let j=n-1;
    let k=m+n-1;
    for(;i>=0&&j>=0;k--){
        if(nums1[i]>nums2[j]){
            nums1[k]=nums1[i];
            i--;
        }else{
            nums1[k]=nums2[j];
            j--;
        }

    }
    for(;j>=0;k--){
        nums1p[k]=nums2[j]
		j--
    }
    console.log(nums1);
}
marge([1,2,3,0,0,0,],3,[2,5,6],3);