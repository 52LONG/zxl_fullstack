var getUserInfoWithType = function (user) {
    return "name:" + user.name + ",age:" + user.age;
};
getUserInfoWithType({ name: 'koala', age: 24 });
console.log(getUserInfoWithType({ name: 'koala', age: 24 }));
