- 面向对象的私有属性 
    this._ 代码编写规范, 作为私有属性的约定
    get set 方法来实现 
- 阮一峰es6手册 
    https://es6.ruanyifeng.com/#docs/class

    ```javascript
    class Ponit{
   
    toString(){
        
    }
}
    Point.prototype.constructor === Point
      Point.prototype.toString 
    ```

    Object.keys() 方法会返回一个由一个给定对象的自身可枚举属性组成的数组，数组中属性名的排列顺序和正常循环遍历该对象时返回的顺序一致  。
    Object.getOwnPropertyNames()方法返回一个由指定对象的所有自身属性的属性名（包括不可枚举属性但不包括Symbol值作为名称的属性）组成的数组。
    共同点：都是返回自身的属性，不会返回原型链上的。
    区别： Object.keys()返回可枚举的，Object.getOwnPropertyNames()返回所有的。
