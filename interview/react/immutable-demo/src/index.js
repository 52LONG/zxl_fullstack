import React from 'react';
import ReactDOM from 'react-dom';
import {connect, Provider} from 'react-redux'
import { createStore } from 'redux';
import {List,Map} from 'immutable';//从数据源头设计纯函数
//纯函数
const initState = List(); //不可被改变的数据
const reducer = function(state = initState,action){
    switch(action.type){
      case 'ADD_TODO':
        return state.push(//payload是一种以JSON格式进行数据传输的一种方式
          //{text:'ddd',isDone:true}
          Map(action.payload)//

        )
        case 'TOGGLE_TODO'://id:1 
          return state.map(t => {//map 是一种数据结构 js对象或数组转换成immutable
            if(t.get('id') == action.payload){//通过id 去匹配
                return t.update('isDone',isDone =>!isDone) //更新isDone 的值为！isDone                          
            }else{
              return t;
            }
          });
        default:
          return state;
    }
}

//容器组件
const components = {
  Todo({todo}){
    if(todo.isDone){
      return <strike>{todo.text}</strike>
    }else{
      return <span>{todo.text}</span>
    }
  },
  TodoList({todos,addTodo}){
    // console.log(todos);
  const onSubmit = (e)=>{
  const text = e.target.value;
  if(e.which === 13 && text.length>0){
    addTodo(text);
    e.target.value = "";
  }
}
const { Todo}  = components;

    return(
      <div className="todo">
        <input type="text"
          className="todo__entry"
          placeholder="Add todos"
          onKeyDown={onSubmit}/>
        <ul className="todo__list">
          {
            todos.map(t => (
              <li 
                key={t.get('id')}
                className='todo__item'
              >
                <Todo todo={t.toJS()} />
              </li>
            ))
          }
        </ul>
      </div>
    )
  }
}
const actions = {
  addTodo(text){
    return{
      type:'ADD_TODO',
      payload:{
        text,
        id:Math.random().toString(34).slice(2),
        isDone:false
      }
    }
  }
}
const containers = {
  TodoList:connect(//高阶函数  HOC
    //读操作
    function mapSateToProps(state){
      return {
        todos:state
      }
    },
    //action
    function mapDispathToProps(dispatch){
        return {
          addTodo:(text) =>dispatch(actions.addTodo(text))
        }
    }
  )(components.TodoList)
}
const store = createStore(reducer);
const {TodoList} = containers;
ReactDOM.render(
  <Provider store={store}>
    <TodoList/>
  </Provider>,
  document.getElementById('root')
)
