function spinWords(str){
    return str.replace(/\w{5,}/g, function(w) { return w.split('').reverse().join('') })
  }
  console.log(spinWords('a sss jksdj jjjaaa dd')); 