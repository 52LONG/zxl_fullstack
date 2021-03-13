var removeDuplicates = function(nums) {
    let index = 0
    for( let i=0,len=nums.length; i<len; i++ ){
        if( nums[i] != nums[i+1] ) {
            nums[index] = nums[i]
            index++
        }
    }
    return index
};

console.log(removeDuplicates([1,1,1,2,3,3,4])); 