//对数据库模型的映射
export class PostModel{//类型约定
    id?:number;
    title:string;
    content?:string; //?代表的是可有可无
}