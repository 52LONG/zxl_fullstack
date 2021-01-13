var longestCommonPrefix = function(strs) {
    var s = "";
    if(strs.length == 0){
        return s;
    }else{   
      for(let i = 0;i<strs[0].length;i++){
        //一个一个对比，如果一样就加入到一个新的数组中
        for(let j = 1;j<strs.length;j++){
            if(strs[0][i]!=strs[j][i]){
                return s;
            }
        }
            s=s+strs[0][i];
        }
        return s;
    }
    
};
console.log(longestCommonPrefix(["flower","flow","flight"]));