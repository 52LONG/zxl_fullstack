// 构建对象
//抽象的概念 类
// es6 以前没有class 关键字
//模板
var Cat = {
    name:'',
    color:'',
    sayHello(){
    }

}
// JS是基于原型的继承
var cat1 = {} //JSON
cat1.name='大毛';
cat1.color='黄色';


var cat2 = {};//创建空的对象
cat2.name='二毛';
cat2.color='黑色';


// 缺点？ js 代码里有好多的对象，写起来好烦！ 