//避免数据被修改
const {Map,fromJS,toJS} = require('immutable');//不可变数据
//er6 map
let a = Map({
    select:'users',
    filter:Map({name:'Cam'})
});

let b = a.set('select','people');
console.log(a == b);//false   b 不是和 a 是同一个地址

console.log(a.get('filter')===b.get('filter')); //true

const obj = {
    count:0
}
const immutableState = fromJS(obj);
console.log(immutableState.get('count'));
const jsObj = immutableState.toJS();
jsObj.count = 2;
console.log(obj); // 0 