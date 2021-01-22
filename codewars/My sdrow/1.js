// Stop gninnipS My sdroW!
// 将字符串中单词字母个数大于4个的反转
function spinWords(){
    //TODO Have fun :)
       var str = '';
       var str1 = '';
       var arr = [];
       str += arguments[0];
       str1 = str.split(' ');
       for(let i =0;i<str1.length;i++){
           if(str1[i].length>=5){
                arr.push(str1[i].split('').reverse().join(''));
           }else{
               arr.push(str1[i])
           }
       
       }
         return arr.join(' ');
  }
 console.log(spinWords('a sss jksdj jjjaaa dd')); 