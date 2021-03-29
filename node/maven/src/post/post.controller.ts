import {Request,Response} from 'express'//来自@types/express
import { createPost } from './post.service';
export const store = async(
    request:Request,//类型约定 在 .属性的时候会自动弹出
    response:Response
) =>{
    console.log(request.body);
    const {title,content} = request.body;
    //存数据 -> service(专门的数据存储，数据存储服务) 
    const data = await createPost({title,content})//严格限定传什么参数
    response.status(201).send('保存成功')
}