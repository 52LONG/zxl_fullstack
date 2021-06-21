function a(){
    this.b = 3
}
 let  c = new a();
a.prototype.b = 7;
 var b = 9;
 a();
 console.log(b);
 console.log(c.b)