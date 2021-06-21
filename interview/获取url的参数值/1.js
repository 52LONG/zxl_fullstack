function GetQueryValue(url,queryName) {
        var vars = url.split("&");
       for (var i = 0; i < vars.length; i++) {
          var pair = vars[i].split("=");
        //   console.log(pair);
            if (pair[0] == queryName) { 
                var p = pair[1].split("#").splice(0,1).toString(); 
                return p
            }
        }
        return null;
    }
    var url = 'https://juejin.cn/post/id=6935232082482298911&bb=23&&c=3#heading-31';
    console.log(GetQueryValue(url,'c'));