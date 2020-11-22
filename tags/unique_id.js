 /**
  * 功能：获得唯一ID
  * @author zxl
  * @date 11-21
  * @return {String}
  */


//  const uniqueID =()=>{
//      let t = + new Date();//+号会类型转换
//      let ranNum =Math.ceil(Math.random()*10000) ;
//     return  t+''+ranNum;
//  }
const uniqueID =()=>+ new Date()+''+Math.ceil(Math.random()*10000);//高级 简洁
 console.log(uniqueID()) ;