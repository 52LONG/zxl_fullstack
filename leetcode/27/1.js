var removeElement = (nums, val) => {
    let index = 0
    for (let i = 0; i < nums.length; i++) {
      if (nums[i] !== val) {
        nums[index] = nums[i]
        index++
      } 
    }
    return index
  }
  console.log( removeElement([1,2,3,4,3,5,6,7],3));