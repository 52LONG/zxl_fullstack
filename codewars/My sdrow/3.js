function spinWords(str){
    return str.split(' ').map( w => w.length<5 ? w : w.split('').reverse().join('') ).join(' ');
  }
  console.log(spinWords('a sss jksdj jjjaaa dd')); 