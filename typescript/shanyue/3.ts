interface User  {//接口
    type:"user";
    name: string;
    age: number;
    occupation:string;
  };
interface Admin {
    type:"admin";
    name:string;
    age:number;
    role:string;
  }
export type Person = Admin | User
export const person:Person[] = [
    {
        type: "user",
        name: "Max Mustermann",
        age: 25,
        occupation: "Chimney sweep",
      },
      { type: "admin", name: "Jane Doe", age: 32, role: "Administrator" },
      { type: "user", name: "Kate Müller", age: 23, occupation: "Astronaut" },
      { type: "admin", name: "Bruce Willis", age: 64, role: "World saver" },
    
]
//类型如何是管理员
//参数和返回值都做类型声明
//：void
export function isAdmin(person:Person):person is Admin{
    return person.type === "admin";

}
export function isUser(person:Person):person is User{
    return person.type === "user";
}
export function logPerson(person:Person){
    let additionalInformation:string = "";
    if(isAdmin(person)){
        additionalInformation = person.role;

    }
    if(isUser(person)){
        additionalInformation = person.occupation;

    }
    console.log(`${person.name} ${person.age} ${additionalInformation}`);
    
}