var getUserInfoWithTs = function (user) { return "name\uFF1A" + user.name + " age:" + user.age; }; // :string 约定了返回值类型是string 
console.log(getUserInfoWithTs({ name: 'kaola', age: 21 }));
