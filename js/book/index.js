// 这里有什么问题？
function Book(isbn,title,author){
    //不能这么做
    // this.isbn = isbn; //public 属性
    // this.title = title;
    // this.author = author;
    this.setIsbn(isbn); //private 属性
}

Book.prototype ={
     setIsbn(isbn){
        //  isbn 不能是this 但是要可读 怎么做?
        // provite 私有属性,对方的方法内this.调用 ,但是在外界不能访问
        // js 内不存在private ,约定 , 以 _开头的就是私有属性
        if(!this.checkIsbn(isbn)) 
        throw new Error('ISBN格式错误');
        else
        this._isbn = isbn;
     },
     getIsbn(){
        return this._isbn;
     },
     checkIsbn(isbn){
         if(!isbn) return false;
         return /\d{3}-\d-\d{3}-\d{5}-\d/.test(isbn)
        //  \d 是数字  \w 是字母+数字 ^ 是结束  $ 结束
        // js 一切皆为对象   
}
    }
const jsDontKnow = new Book('978-7-121-29899-8','React 全栈','万京东');
// console.log(jsDontKnow.__proto__ == Book.prototype);
console.log(jsDontKnow instanceof Book);
console.log(Book.prototype.isPrototypeOf(jsDontKnow)); //isPrototypeOf 是原型对象
// // jsDontKnow.isbn = 'dddd';

   