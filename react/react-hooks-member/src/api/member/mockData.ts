// api 前后端交流的接口 react 必备的架构 react 必备的
//所有请求管理 axios hr
//application interfac3
//restful ? graphql
//frontend  react component map  cd <-> fetch <- api -> <-> backded koa + mongodb
//   /api/model  model 相关的请求放在这个目录下 细分了模块 CRUD
import {MemberEntity} from '../../model';
//假数据 -> fetch ts interface -> model -> interface
export const members:MemberEntity[] =[ {
    id: 1457912,
    login: "brauliodiez",
    avatar_url: "https://avatars.githubusercontent.com/u/1457912?v=3"
  },
  {
    id: 4374977,
    login: "Nasdan",
    avatar_url: "https://avatars.githubusercontent.com/u/4374977?v=3"
  }
]
