var maxSlidingWindow = function(nums, k) {
    const res =[]
    for(let i =0;i<nums.length-k+1;i++){
        res.push(Math.max(...nums.slice(i, i + k)));
    }
    return res;
};
let  nums = [1,3,-1,-3,5,3,6,7]
console.log( maxSlidingWindow(nums,3));

//超出时间限制