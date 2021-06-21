1，const、let、var区别

能用const定义对象的，不要用let，能用let定义变量的，不要用var

主要从以下几个方面区分：

- 作用域不同(是否含有块级元素)
- 是否存在暂时性死区
- 是否存在变量提升
- 能否重复声明
- 变量能否被修改

###### 1，作用域不同

块级作用域：声明的变量只在该代码块作用域内有效

var没有块级作用域，let、const有块级作用域

```javascript
for (var i = 0; i < 5; i++) {
  console.log(i)
}
console.log('外层')
console.log(i)
```

![图片](https://mmbiz.qpic.cn/mmbiz_png/q8tf6liaOxib2sojlAyFia48oZH2AByvF9yiaiaaPeTeaOWLahu7SS0zaA0c1jaRvFibbd7VEv4W3uZqYe5icm0UelbiaA/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

以上代码var改为let

```javascript
for (let i = 0; i < 5; i++) {
  console.log(i)
}
console.log('外层')
console.log(i)
```

![图片](https://mmbiz.qpic.cn/mmbiz_png/q8tf6liaOxib2sojlAyFia48oZH2AByvF9yNbI6XKoMG2TDISic5Y58dG6sEhk9LH8iadbLlgF4BFpoyPx1p3Tib87Yg/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

###### 2，暂时性死区：

只要块级作用域有let、const命令，他们所声明的变量就绑定这个区域，不受外部影响

```js
var a = 10
if (true) {
  console.log(a)
  var a = 20
}
// 10
```

以上代码改为以下let或const均报错:

```js
var a = 10
if (true) {
  console.log(a)
  let a = 20
}
或
var a = 10
if (true) {
  console.log(a)
  const a = 20
}
// 报错：Uncaught ReferenceError: Cannot access 'a' before initialization
```

> let和const定义的变量是存在暂时性死区的，而var没有，我们来了解一下两个操作符的工作原理：
>
> - 对于var而言，当进入var变量的作用域时，会立即为他创建存储空间，并对它进行初始化，赋值为undefined，当函数加载到变量声明语句时，会根据语句对变量赋值。
> - 而let和const却不一样，当进入let变量的作用域时，会立即给他创建存储空间，但是不会对他进行初始化，所以会抛出如上错误。

###### **3，是否存在变量提升**

变量提升：变量在声明之前可以使用

var声明的变量存在变量提升，let、const不存在变量提升

```js
console.log(a)
var a = 10
// undefined
```

```js
console.log(a)
let a = 10 || const a = 10
// 报错：Uncaught ReferenceError: Cannot access 'a' before initialization
```

###### **4, 能否重复声明**

var声明的可以重复声明, let 和const声明的不可以重复声明

```js
var a = 10
var a = 20
console.log(a) // 20
```

```js
var a = 10
let a = 20 || const a = 20
console.log(a)  // 报错：Uncaught SyntaxError: Identifier 'a' has already been declared
```

###### **5, 变量能否被修改**

var、let声明的变量可以被修改，const声明的常量不可修改

```js
var a = 10  || let a = 10
a = 20
console.log(a)  // 20
```

```js
const a = 10
a = 20
console.log(a)  // 报错：Uncaught TypeError: Assignment to constant variable.
```

> - let 关键词声明的变量不具备变量提升（hoisting）特性
> - let 和 const 声明只在最靠近的一个块中（花括号内）有效
> - 当使用常量 const 声明时，请使用大写变量，如：CAPITAL_CASING
> - const 在声明时必须被赋值

### 2，rem、em区别

rem是基于html元素的字体大小决定的

em是相对父元素继承来的字体大小 em指的是当前元素的字体大小，如果当前元素的字体大小没有设置的话，就回继承父元素的字体大小

rem出现是为了解决em缺点，em是相对父元素的字体大小，当父元素字体大小改变时，需重新计算

rem可以解决这样的问题，rem只相对html元素

```html
<div class="rem"></div>
<div class="em"></div>

.rem {
    font-size: 100px;
    width: 3rem;
    height: 3rem;
    background-color: aqua;
  }

  .em {
    font-size: 100px;
    width: 3em;
    height: 3em;
    background-color: aquamarine;
  }
```

![图片](https://mmbiz.qpic.cn/mmbiz_png/q8tf6liaOxib2sojlAyFia48oZH2AByvF9yX4elIoqnr9hv4BYvGgoYIJVjE1Qnd2TkXjxuwscibdP4bPZic3LJRlRg/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

### 3，js栈、堆内存

基本数据类型存在栈内存中：因为占用空间小，大小固定。基本数据类型：string、number、boolean、null、undefined、symbol

引用数据类型在栈中存储了指针，该指针指向堆内存中的地址，当解析器寻找引用值时，会先检索其在栈中的指针，取到指针后从堆中获取实体



```js
let a1 = 1
let a2 = 'string'
let a3 = null
let b = {
  m: 20
}
let c = [1, 2, 3]
```

![图片](https://mmbiz.qpic.cn/mmbiz_png/q8tf6liaOxib2sojlAyFia48oZH2AByvF9yLF4EnzHY96ujSgbBseRicw1NKwSPecLFeSxau571SToeicqWsfOKYibwA/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

基本数据类型的复制

```js
let a = 20
let b = a
b = 30
//a  => 20
//b  => 30
```

a、b 都是基本类型，它们的值是存储在栈内存中的，a、b 分别有各自独立的栈空间， 所以修改了 b 的值以后，a 的值并不会发生变化。

![图片](https://mmbiz.qpic.cn/mmbiz_png/q8tf6liaOxib2sojlAyFia48oZH2AByvF9yeF4AiaAmFfhjDmibFdnYsQB9UdeDPM36dlVoRVjoY37WibPvVmuavujJQ/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

引用数据类型的复制:

引用数据类型变量大小不固定，所以把他们分配给堆中，让他们申请空间的时候自己确定大小，这样把它们分开存储能够使得程序运行起来占用的内存最小。

栈内存由于它的特点，所以它的系统效率较高。

堆内存需要分配空间和地址，还要把地址存到栈中，所以效率低于栈。

```js
let m = {
  a: 10,
  b: 20
}
let n = m
n.a = 15
console.log(m.a) // => 15
```

![图片](https://mmbiz.qpic.cn/mmbiz_png/q8tf6liaOxib2sojlAyFia48oZH2AByvF9yyiaAcquV2h2HueZYbwl026bQzZeaWsH1ZjcslB4TyKwN5Gtg3QaDvsw/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

栈内存和堆内存的垃圾回收

> 栈内存中变量一般在它的当前执行环境结束就会被销毁被垃圾回收机制回收， 
> 而堆内存中的变量则不会，因为不确定其他的地方是不是还有一些对它的引用。
> 堆内存中的变量只有在所有对它的引用都结束的时候才会被回收.

### 4, 事件委托，事件冒泡和事件捕获，阻止事件冒泡

###### 1.事件委托

事件委托(事件代理)，把原本需要绑定在子元素的响应事件委托给父元素，让父元素担当事件监听的职务，事件代理的原理是DOM元素的事件冒泡。

事件冒泡和事件捕获分别是由微软和网景公司提出的，这两个概念都是为了解决页面中的事件流(事件发生顺序)的问题。

```js
<div id="div1">
  <div id="div2">
    <div id="div3"></div>
  </div>
</div>
```

上面的例子，三个元素的执行顺序：div3 -> div2 -> div1

### ![图片](https://mmbiz.qpic.cn/mmbiz_png/q8tf6liaOxib2sojlAyFia48oZH2AByvF9y1gU21hibAPPOy4iagTBODumS4Ggmr2sJ8X6s0bzfJ84a5RnPV9PtlYNg/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

点击div3: div3 div2 div1

点击div2: div2 div1

点击div1: div1

###### 2.事件冒泡

事件冒泡，事件按照从最特定的事件目标到最不特定的事件目标。

可以想象成把一颗石头投入到水中，泡泡会一直从水底冒出水面。

###### 3.**事件捕获**

事件捕获与事件冒泡相反，事件从最外层开始发生，直到最具体的元素，可以想象成警察逮捕屋子里的小偷，就要从外面一层层的进入到屋子内。

上面的例子，三个元素的执行顺序是：div1 -> div2 -> div3

![图片](https://mmbiz.qpic.cn/mmbiz_png/q8tf6liaOxib2sojlAyFia48oZH2AByvF9ynbGXQ3StjTLZdDzEaN7MKfUv3vuw8KxbzoMH5lA4KuibtB8a1fL3kUw/640?wx_fmt=png&tp=webp&wxfrom=5&wx_lazy=1&wx_co=1)

点击div3: div1 div2 div3

点击div2: div1 div2

点击div1: div1

```js

let dv1 = document.querySelector('#div1')
let dv2 = document.querySelector('#div2')
let dv3 = document.querySelector('#div3')
dv1.addEventListener('click', f1, true)
dv2.addEventListener('click', f1, true)
dv3.addEventListener('click', f1, true)

function f1() {
  console.log(this.id)
}
```

addEventListener语法

```js
element.addEventListener(event, function, useCapture)
三个参数分别为：没有绑定的事件类型、事件处理函数、控制事件阶段

第3个参数Boolean值，true表示在事件捕获阶段调用事件处理函数，false表示在事件冒泡阶段调用事件处理函数

可以使用removeEventListener事件移除
ele.removeEventListener('click', f1, true)
```

###### **4.阻止事件冒泡**

1，e.stopPropagation()

```js
let dv1 = document.querySelector('#div1')
let dv2 = document.querySelector('#div2')
let dv3 = document.querySelector('#div3')

dv1.onclick = function () {
  console.log(this.id)  // div1
}
dv2.onclick = function () {
  console.log(this.id)  // div2 div1
}
dv3.onclick = function (e) {
  console.log(this.id)  // div3
  e.stopPropagation()
}
```

2, window.event.cancelBubble = true (谷歌、IE浏览器兼容，不兼容火狐浏览器)

```js
let dv1 = document.querySelector('#div1')
let dv2 = document.querySelector('#div2')
let dv3 = document.querySelector('#div3')

dv1.onclick = function () {
  console.log(this.id)  // div1
}
dv2.onclick = function () {
  console.log(this.id)  // div2 div1
}
dv3.onclick = function (e) {
  console.log(this.id)  // div3
  window.event.cancelBubble = true
}
```

### 5, 为什么先加载css后加载js

先加载css后加载js，因为css加载会阻塞浏览器渲染，为了打开网页白屏时间缩短，会优先选择加载css；后加载js是因为js中可能会修改DOM元素，js加载会阻塞浏览器解析html，造成获取不到DOM的情况。

```html
<head>
  <meta charset="utf-8">
  <title></title>
  <link rel="stylesheet" href="css/*.css" rel="external nofollow" >
  <script src="js/*.js></script>
</head>
```

DOM文档的加载顺序是由上而下的顺序加载

1,DOM加载到link标签

css文件的加载是与DOM的加载并行的，也就是说，css在加载时Dom还在继续加载构建，而过程中遇到的css样式或者img，则会向服务器发送一个请求，待资源返回后，将其添加到dom中的相对应位置中；

2,DOM加载到script标签

由于js文件不会与DOM并行加载，因此需要等待js整个文件加载完之后才能继续DOM的加载，倘若js脚本文件过大，则可能导致浏览器页面显示滞后，出现“假死”状态，这种效应称之为“阻塞效应”；会导致出现非常不好的用户体验；

而这个特性也是为什么在js文件中开头需要$(document).ready(function(){})或者（function(){}）或者window.onload,即是让DOM文档加载完成之后才执行js文件，这样才不会出现查找不到DOM节点等问题；

js阻塞其他资源的加载的原因是：浏览器为了防止js修改DOM树，需要重新构建DOM树的情况出现；

### es6新特性

#### 1.不一样的变量声明：const和let

ES6推荐使用let声明局部变量，相比之前的var（无论声明在何处，都会被视为声明在函数的最顶部） let和var声明的区别：

```
var x = '全局变量';
{
  let x = '局部变量';
  console.log(x); // 局部变量
}
console.log(x); // 全局变量
复制代码
```

let表示声明变量，而const表示声明常量，两者都为块级作用域；const 声明的变量都会被认为是常量，意思就是它的值被设置完成后就不能再修改了：

```
const a = 1
a = 0 //报错
复制代码
```

如果const的是一个对象，对象所包含的值是可以被修改的。抽象一点儿说，就是对象所指向的地址没有变就行：

```
const student = { name: 'cc' }

student.name = 'yy';// 不报错
student  = { name: 'yy' };// 报错
复制代码
```

有几个点需要注意：

> - let 关键词声明的变量不具备变量提升（hoisting）特性
> - let 和 const 声明只在最靠近的一个块中（花括号内）有效
> - 当使用常量 const 声明时，请使用大写变量，如：CAPITAL_CASING
> - const 在声明时必须被赋值

#### 2.模板字符串

在ES6之前，我们往往这么处理模板字符串： 通过“\”和“+”来构建模板

```
$("body").html("This demonstrates the output of HTML \
content to the page, including student's\
" + name + ", " + seatNumber + ", " + sex + " and so on.");
复制代码
```

而对ES6来说

1. 基本的字符串格式化。将表达式嵌入字符串中进行拼接。用${}来界定；
2. ES6反引号(``)直接搞定；

```
$("body").html(`This demonstrates the output of HTML content to the page, 
including student's ${name}, ${seatNumber}, ${sex} and so on.`);
复制代码
```

#### 3.箭头函数（Arrow Functions）

> ES6 中，箭头函数就是函数的一种简写形式，使用括号包裹参数，跟随一个 =>，紧接着是函数体；

箭头函数最直观的三个特点。

> - 不需要 function 关键字来创建函数
> - 省略 return 关键字
> - 继承当前上下文的 this 关键字

```
// ES5
var add = function (a, b) {
    return a + b;
};
// 使用箭头函数
var add = (a, b) => a + b;

// ES5
[1,2,3].map((function(x){
    return x + 1;
}).bind(this));
    
// 使用箭头函数
[1,2,3].map(x => x + 1);
复制代码
```

> 细节：当你的函数有且仅有一个参数的时候，是可以省略掉括号的。当你函数返回有且仅有一个表达式的时候可以省略{} 和 return；

#### 4. 函数的参数默认值

在ES6之前，我们往往这样定义参数的默认值：

```
// ES6之前，当未传入参数时，text = 'default'；
function printText(text) {
    text = text || 'default';
    console.log(text);
}

// ES6；
function printText(text = 'default') {
    console.log(text);
}

printText('hello'); // hello
printText();// default
复制代码
```

#### 5.Spread / Rest 操作符

> Spread / Rest 操作符指的是 ...，具体是 Spread 还是 Rest 需要看上下文语境。

当被用于迭代器中时，它是一个 Spread 操作符：

```
function foo(x,y,z) {
  console.log(x,y,z);
}
 
let arr = [1,2,3];
foo(...arr); // 1 2 3
复制代码
```

当被用于函数传参时，是一个 Rest 操作符：当被用于函数传参时，是一个 Rest 操作符：

```
function foo(...args) {
  console.log(args);
}
foo( 1, 2, 3, 4, 5); // [1, 2, 3, 4, 5]
复制代码
```

#### 6.二进制和八进制字面量

> ES6 支持二进制和八进制的字面量，通过在数字前面添加 0o 或者0O 即可将其转换为八进制值：

```
let oValue = 0o10;
console.log(oValue); // 8
 
let bValue = 0b10; // 二进制使用 `0b` 或者 `0B`
console.log(bValue); // 2
复制代码
```

#### 7.对象和数组解构

```
// 对象
const student = {
    name: 'Sam',
    age: 22,
    sex: '男'
}
// 数组
// const student = ['Sam', 22, '男'];

// ES5；
const name = student.name;
const age = student.age;
const sex = student.sex;
console.log(name + ' --- ' + age + ' --- ' + sex);

// ES6
const { name, age, sex } = student;
console.log(name + ' --- ' + age + ' --- ' + sex);
复制代码
```

#### 8.对象超类

ES6 允许在对象中使用 super 方法：

```
var parent = {
  foo() {
    console.log("Hello from the Parent");
  }
}
 
var child = {
  foo() {
    super.foo();
    console.log("Hello from the Child");
  }
}
 
Object.setPrototypeOf(child, parent);
child.foo(); // Hello from the Parent
             // Hello from the Child
复制代码
```

#### 9.for...of 和 for...in

for...of 用于遍历一个迭代器，如数组：

`for of`遍历的是数组元素值，而且`for of`遍历的只是数组内的元素，不包括原型属性和索引

```js
var arr = [1,2,3]
arr.a = 123
Array.prototype.a = 123
    
for (let value of arr) {
  console.log(value)
}
//1 2 3
```



```
let letter = ['a', 'b', 'c'];
letter.size = 3;
for (let letter of letters) {
  console.log(letter);
}
// 结果: a, b, c
复制代码
```

for...in 用来遍历对象中的属性：

`for in`更适合遍历对象，当然也可以遍历数组，但是会存在一些问题

如：`index`索引为字符串型数字，不能直接进行几何运算

```js
var arr = [1,2,3]
    
for (let index in arr) {
  let res = index + 1
  console.log(res)
}
//01 11 21
```



```js
let stu = ['Sam', '22', '男'];
stu.size = 3;
for (let stu in stus) {
  console.log(stu);
}
// 结果: Sam, 22, 男

```

#### ES6中的类

ES6 中支持 class 语法，不过，ES6的class不是新的对象继承模型，它只是原型链的语法糖表现形式。

函数中使用 static 关键词定义构造函数的的方法和属性：

```
class Student {
  constructor() {
    console.log("I'm a student.");
  }
 
  study() {
    console.log('study!');
  }
 
  static read() {
    console.log("Reading Now.");
  }
}
 
console.log(typeof Student); // function
let stu = new Student(); // "I'm a student."
stu.study(); // "study!"
stu.read(); // "Reading Now."
复制代码
```

类中的继承和超集：

```
class Phone {
  constructor() {
    console.log("I'm a phone.");
  }
}
 
class MI extends Phone {
  constructor() {
    super();
    console.log("I'm a phone designed by xiaomi");
  }
}
 
let mi8 = new MI();
复制代码
```

> extends 允许一个子类继承父类，需要注意的是，子类的constructor 函数中需要执行 super() 函数。 当然，你也可以在子类方法中调用父类的方法，如super.parentMethodName()。 在 这里 阅读更多关于类的介绍。

> 有几点值得注意的是：
>
> - 类的声明不会提升（hoisting)，如果你要使用某个 Class，那你必须在使用之前定义它，否则会抛出一个 ReferenceError 的错误
> - 在类中定义函数不需要使用 function 关键词



### 正则表达式

![image-20210420230521856](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210420230521856.png)

![image-20210420230643599](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210420230643599.png)



![image-20210420225801761](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210420225801761.png)

![image-20210420225815786](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210420225815786.png)

![image-20210420225831076](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210420225831076.png)

![image-20210420231156532](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210420231156532.png)

![image-20210420232503415](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210420232503415.png)

### 高阶函数

函数的参数是函数，或者函数的返回值是函数；

参数是函数：业务能够抽离成为函数

参数是函数的情况：函数是功能的延续

### 高价组件

高阶组件（HOC）是React中用于复用组件的一种高级技巧。

HOC自身不是React  API的一部分，它是基于React的组合特性而形成的设计模式

类组件中绑定this指向的方式

###### 方式一

![image-20210422085916264](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422085916264.png)

this是绑定当前实例来执行的

###### 方式二

![image-20210422090157407](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422090157407.png)

优化

<img src="C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422090320135.png" alt="image-20210422090320135" />

###### 方式三

<img src="C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422090320135.png" alt="image-20210422090320135" style="zoom:150%;" />

### React的生命周期



![image-20210422091327141](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422091327141.png)

Mounting（挂载阶段）->updating(数据更新)->Unmounting(卸载阶段)



先是constructor（挂载阶段）->render（初次渲染视图）->componentDidMount（完成加载后的通知）->（render（数据更新重新渲染）->componentDidUpdate（更新渲染完成后的通知））更新阶段->componentWillUnmount(卸载之前的时候触发，在浏览器上看不到)

![image-20210422092449457](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422092449457.png)



### 受控组件与非受控组件

###### 受控组件

######  https://react.docschina.org/docs/forms.html

###### 非受控组件

###### https://react.docschina.org/docs/uncontrolled-components.html#the-file-input-tag

### 组件的优化

父组件更新，子组件也更新

如果子组件没有任何属性变化（即重复渲染）的话，怎么让子组件不更新呢？

![image-20210422103052084](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422103052084.png)

![preview](https://segmentfault.com/img/bVbeoGH?w=1200&h=1300/view)

shouldComponentUpdate(只有在New props和setState（）更新的情况下会使用 )-->用来判断子组件是否需要更新

###### 优化之后

sub render就没再更新了

![image-20210422104048685](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422104048685.png)



用if来判断 放在子组件中

```js
shouldComponentUpdate(nextProps,nextState){
//如果当前子组件的属性未改变，则return false 就不会更新了
if(nexProps.name === this.props.name){
    return false;
}
    return true;

}
```

###### 没有优化

![image-20210422104719690](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422104719690.png)

对比效果发现

###### 再次优化

使用PureComponent

![image-20210422122814040](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422122814040.png)

问题：父组件更新，子组件也更新，子组件仍然使用PureComponent

`<Sub name = {this.state.count}/>`

![image-20210422123216096](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422123216096.png)

问题：不希望函数改变

`<Sub cb ={this.callback}/>` 

calllback = () =>{

}

![image-20210422124041849](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422124041849.png)



函数式组件写法

生命周期函数类组件中好用，但是在函数式组件中就可以了

memo解决 等价于 PureComponent

![image-20210422124531884](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422124531884.png)

![image-20210422124611466](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422124611466.png)



### BrowserRouter 和HashRouter路由

BrowserRouter 是通过history路由实现的

history.pushState({name:'newPath'},null,'/foo')

![image-20210422130813681](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422130813681.png)

```html
//配置Browser路由的to
<button onclick="to('/a')">跳转页面A</button>
<button onclick="to('/b')">跳转页面B</button>
<button onclick="to('/c')">跳转页面C</button>
```

![image-20210422130527750](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422130527750.png)

HashRouter路由的路径

![image-20210422130602297](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422130602297.png)

BrowserRouter 路由的路径

![image-20210422130653509](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422130653509.png)

HashRouter的原理

```html
//HashRouter和a标签差不多
<a href="#/a">跳转A页面</a>
<a href="#/b">跳转B页面</a>
```

![image-20210422133920801](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422133920801.png)

![image-20210422133943407](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422133943407.png)


### Portals

Portals:https://react.docschina.org/docs/portals.html

Portal 提供了一种将子节点渲染到存在于父组件以外的 DOM 节点的优秀的方案。

![image-20210422140146032](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422140146032.png)



![image-20210422135947799](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422135947799.png)

![image-20210422140033366](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422140033366.png)

![image-20210422140045564](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422140045564.png)

React 中的异步加载

![image-20210422141803058](C:\Users\zxl814405253\AppData\Roaming\Typora\typora-user-images\image-20210422141803058.png)