# react 实战

react 全家桶  前端开发

react + koa 全栈开发

定时应用
setInterval  js es5
->
react state setState 响应式
redux mobx

state -> 可以被观察的对象  observerable 界面更新 单向绑定 双向绑定
组件类的表达 组件自身的状态 -> 响应式
数据 放在父组件中 -> 传递给子组件
redux 如果没有关系的组件 共享数据和状态
1. 专业的数据管理 redux mobx
2. 正规的流程 绝对不会出问题 有一套手续
action applyTravel(20000)
reducer -> 纯函数 算账的过程
store 相当于中央仓库
local -> 中央
new Store 做公司 请了一个财务 申请数据 

# mbox 更简单的数据流管理
1. observerable 观察（组件）与被观察（有状态的实例）
2. Store Provider 
    从Store 里面借 redux connet mobx @inject
    HOC
    (store) =>{
        this.props.store
        return()=>{}
        
    }