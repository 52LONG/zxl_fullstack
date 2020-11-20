/**
 * @author zxl
 * @date 20-11-20
 * @param {number[]} nums
 * @param {number} target
 * @return {number[]}
 * 
 **/
//箭头函数
const twoSum = (nums,target)=>{
    // console.log('两数相加');
    let map={}; //json object hasmap 空间复杂度有花销O(n)
    let res = [];
    //编写功能 一个函数完成一个功能
    // nums.forEach((e,i)=>{
    //     console.log(e,i);
    // })
    //   return res;
    //callback for+执行功能
    nums.forEach((e,i)=>map[e]=i);//O(n)空间换时间
    // console.log(map);
    for(let i=0;i<nums.length;i++){//O(n)
        let j=map[target-nums[i]];//undefined
        if(j && j!==i) {
            res=[i,j];
            break;
        }
        
    }
    return res;
}
console.log(twoSum([2, 7, 11, 15], 9));