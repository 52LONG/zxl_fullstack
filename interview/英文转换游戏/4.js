function convert(name1, name2) {
    var arr1 = name1.split("");
    var arr2 = name2.split("");
    console.log(arr1,arr2);
    for (var i = 0; i < arr1.length; i++) {
      for (var j = 0; j < arr2.length; j++) {
        if (arr1[i] == arr2[j]) {
          arr1.splice(i, 1)
          arr2.splice(j, 1)
          console.log(arr1,arr2,'+++++++++');
          i--;
          j--;
        }
      }
    }
    if ((arr1.length == 0 && arr2.length == 1) || (arr1.length == 1) && (arr2.length == 0) || (arr1.length == arr2.length)) {
      return 1
    }
    else
      return 0
  
  }
  
//   console.log(convert('appl', 'apple'));
  console.log(convert('leapp', 'appl'));

  