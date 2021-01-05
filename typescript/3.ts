//interface 接口 设计模式 面向接口编程
// user要满足一个接口 接口来定义属性和方法
interface IUser{
    name:string;
    age:number;
}
const getUserInfoWithInterface  = (user:IUser):string =>{
    return `name:${user.name},age:${user.age}`;
}
getUserInfoWithInterface({name:'koala',age:23})
console.log(getUserInfoWithInterface({name:'koala',age:23}));


