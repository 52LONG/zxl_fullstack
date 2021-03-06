//数据是要类型化的
//拿着数据做一大波操作，为了不掉链子
interface User  {//接口
    name: string;
    age: number;
    occupation:string;
  };
  interface Admin {
    name:string;
    age:number;
    role:string;
  }
//   export type User = {
//     name: string;
//     age: number;
//     occupation?: string;
//     role?:string
// };
  export type Person = User | Admin;//普通用户或管理员
  //用户表里，有的用户role 管理员
export const users: Person[] = [ // ts 类型的约束， 每个元素，满足
    {
      name: '黄志乾',
      age: 18,
      occupation: "Chimney sweep"
    },
    {
      name: "郑孝龙",
      age: 18,
      occupation: "Astronaut"
    },
    {
        name:"徐蕊",
        age:18,
        role:"主任"
    },
    {

        name:"廖辉",
        age:18,
        role:"Astronaut"
    }
  ];
export function logPerson(user:Person){
    console.log(`- ${user.name},${user.age}`);
    let additionalInformation:string;
    //?类型推导就好了 js? + new Date() int("14")
    // if((<Admin>user).role){
    if ("role" in user) {
        additionalInformation = (<Admin>user).role;
    }else{
        additionalInformation =(<User>user).occupation;
    }
    console.log(`- ${user.name},${user.age} ${additionalInformation}`);
    
    

}
users.forEach(logPerson)