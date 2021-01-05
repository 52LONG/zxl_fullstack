//  type IUserInfoFunc 自定义类型
type IUserInfoFunc = (user:IUser) => string
interface IUser{
    name:string;
    age:number;
} 
const getUserInfoWithType:IUserInfoFunc= (user) =>{
    return `name:${user.name},age:${user.age}`;
}
getUserInfoWithType({name:'koala',age:24})
console.log(getUserInfoWithType({name:'koala',age:24}));
