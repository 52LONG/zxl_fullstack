graphql 是 restful 的替代品
来自于Facebook 良心出品的查询方案 2015年

json-server
缺点？
基于restful的概念 一切皆资源
url + action
db.json 资源中心
/results list 请求得到了

数据库里 还是db.json  一起被查出来 select * 
多好多我们不要的数据  select name ,sex from user;
基础上 设计了graphql 查询设计语言
1. 你要什么？ 设计查询方案 就得到什么
2. 合并传统后端在哪些数据的时候要连N张表进行查询 ， 一次就够了

- 启动graphql
    1. express ;
    2. 加入graphql 中间件 每次查询graphql 都会介入
        graphqlHTTP playground
    3. scehma hero + rootValue
        就有了
    4. graphql 可以省去很多的请求浪费
    5. 前端可以自己决定用哪些字段

    - 查询
    query{
    hero
    }

    query{
    user{
        name
        age
    }
    }

    query{
    getHero(teamName:"复仇者联盟")
    }
mysql 数据库
- create database graphql; 
- use graphql
- CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT '1',
  `intro` varchar(255) DEFAULT NULL,
  `stature` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;
- INSERT INTO `user` VALUES ('1', 'xiaoming', '1', '5555555555', '111');
- select * from user


- 配置
 "dev": "json-server --watch --port 3001 db.json"

- yarn add json-server
- npm run dev

- hello-gql文件下
- yarn add express express-graphql graphql
