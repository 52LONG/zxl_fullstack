var removeDuplicates = function(nums) {
    let i = 0;
    for(let n of nums) {
        if(i < 2 || n > nums[i - 2]) nums[i++] = n;
        console.log(n);
    }
    return i;
}
var arr = [1,1,1,2,2,3,3,3,4,4];
console.log(removeDuplicates(arr));