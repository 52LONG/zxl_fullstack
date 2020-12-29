function ShowObjProperty2( obj ) {
    // 用来保存所有的属性名称和值
    var attributes = '' ;
    var methods = ''
    // 开始遍历
    for ( var p in obj ){
        // 方法
        if ( typeof( obj[p] ) === "function" ){
            attributes += '属性：' + p + '\r\n'
            // obj[p]();
        } else {
            // p 为属性名称，obj[p]为对应属性的值
            methods += '方法：' + p + " = " + obj[p] + "\r\n" ;
        }
    }
    // 最后显示所有的属性
    return attributes, methods
}
let res =function(){};
console.log(res);