const getUserInfoWithTs = (user:{name:string,age:number}):string => `name：${user.name} age:${user.age}`    // :string 约定了返回值类型是string 
console.log(getUserInfoWithTs({name:'kaola',age:22}));
