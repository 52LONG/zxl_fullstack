class Bar{
    doStuff(){
        console.log("stjs");

    }
}
const b = new Bar();
b.doStuff();
console.log(b.constructor === Bar === Bar.prototype.constructor );
console.log(b.constructor=== Bar.prototype.constructor);