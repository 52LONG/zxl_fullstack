// function findEvenIndex(arr)
// {
//   //Code goes here!
//     for (var i = 1; i < arr.length - 1; i++) {

//                             if (arr.slice(0, i).reduce((a, b) => a + b) === arr.slice(i + 1).reduce((a, b) => a + b)) {

//                                    return i;
//                             }
//                      }

//                      return i;
// }
 function findEvenIndex(arr) {
      var add    = (a, b) => a + b;
      var sum    = a => a.reduce(add, 0);
   var isEven = (e, i, a) => sum(a.slice(0, i)) === sum(a.slice(i+1));
     
       return arr.findIndex(isEven);
     }
console.log(findEvenIndex([20,10,-80,10,10,15,35])); 