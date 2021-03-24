// export default cartData = [{
//     id:1,
//     name:'商品一',
//     price:20
// },{
//     id:1,
//     name:'商品二',
//     price:20
// }
// ];
// console.log(cartData);
const cartData = Array(5)
    .fill(undefined)
    .map((e,index)=>(
        {
            id:index,
            name:`商品 ${index+1}`,
            price:Math.ceil(Math.random()*100) 
        }
    ))
export default cartData;