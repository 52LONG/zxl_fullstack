//es6提供新的数据结构
//1.为了数组的优化而来
//Set Map 两种数据结构 存放特定的 数据集合的
const people = new Set();
people.add('黄伦');
people.add('周慧敏');
people.add('周星驰');//和数组push很像  但是不会重复添加
people.add('黄伦');
people.add('张柏芝');
for(const person of people){
    console.log(person);
}
// console.log(people);
const students = new Set(['周慧敏','刘德华','周润发']);
students.add('迪丽热巴');
console.log(students);