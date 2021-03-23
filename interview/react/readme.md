如果一个函数直接修改全局的对象， 我们认为是不应该的， 是不纯的
redux reducer是纯函数 
const initialState = {
  count: 1
}
(state = initialState, action) => {
  switch(action) {
    case 'ADD':
      return {
        ...state,
        count: state.count+1
      }
    return state
  }
}

- 当函数运行的时候， 产生了修改全局数据的副作用， 不纯
  易产生问题
- reducer 是一个纯函数 不会有副作用
- 纯函数的第一个条件：一个函数的返回结果只依赖于它的参数。
    并且在执行过程里面没有副作用
- create-react-app immutable-demo
- yarn add react-router react-router-dom