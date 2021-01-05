var getUserInfoWithInterface = function (user) {
    return "name:" + user.name + ",age:" + user.age;
};
getUserInfoWithInterface({ name: 'koala', age: 23 });
console.log(getUserInfoWithInterface({ name: 'koala', age: 23 }));
