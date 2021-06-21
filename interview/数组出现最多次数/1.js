
var arr = ['a', 'b', 'c', 'd', 'd', 's', 'b', 'b', 'c', 'x', 'c'];
var obj = {};
arr.forEach(function(item, index){
	obj[item] = obj[item] || 0;
	obj[item]++;
});
console.log(obj);
