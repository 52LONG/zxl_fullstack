var s="abcxxxabc";

var largeGroupPositions = function (S) {

    let start = 0, end = 0
    let arr = []
    for (let i = 1; i <= s.length; i++) {
      if (s[i] === s[i - 1]) {
        end++
      }
      else {
        if (end - start >= 2) {
          arr.push([start, end])
        }
        start = end = i
      }
    }
    
    return arr;
  };
  console.log(largeGroupPositions(s));
