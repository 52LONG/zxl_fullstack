var NestedIterator = function(nestedList) {
    this.num = null;
    this.flag = false;
    this.stack = [];
    this.stack.push(nestedList);
}; 
NestedIterator.prototype.next = function() {
    this.flag = false;
    return this.num;
};
NestedIterator.prototype.hasNext = function() {
    if (!this.stack.length)
        return false;
    while (this.stack.length && !this.flag) {
        let temp = this.stack[this.stack.length - 1];
        if (temp.length) {
            let tt = temp.shift()//删除数组第一个元素
            if (tt.isInteger()) {//isInteger() 方法用来判断传入的参数是否为整型
                this.num = tt.getInteger();
                console.log(this.num);
                this.flag = true;
            } else
                this.stack.push(tt.getList());
        } else {
            this.stack.pop();//删除栈顶元素
        }
    }
    return this.flag;
};
console.log(NestedIterator.prototype.hasNext([4,[4,4,4]]));