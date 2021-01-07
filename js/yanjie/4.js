function duplicateCount(text){
    var flag=0;
    var a=text.toLowerCase();
    while(a.length>0){
      var reg=a.substring(0,1);
      
      a=a.substring(1);
      if(a.indexOf(reg)!=-1){
        a=a.replace(new RegExp(reg,'g'),"");
        flag+=1;
      
      }
    }
    return flag; 
  }
  console.log(duplicateCount('aadsdjfwuhh'));