let c = ["2020-06-21","2021-05-07","2019-02-25"]
console.log(a.sort(function(i,j){
    return Date.parse(i)- Date.parse(j);
}));


let c = ["2020-06-21","2021-05-07","2019-02-25"]
function sortNumber(a,b)
{
return new Date(a) - new Date(b) 
}
console.log(c.sort(sortNumber));