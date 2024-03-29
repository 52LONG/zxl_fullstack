import React from 'react';
import ReactDOM from 'react-dom';
import TodoList from './TodoList'
import { Provider } from 'react-redux'
import store from './store'
const App = (
    // 提供器 包裹其他组件
        <Provider store={store}>
            <TodoList />
        </Provider>
)
ReactDOM.render(App, document.getElementById('root'));

// import React from 'react';
// import ReactDOM from 'react-dom';
// import TodoList from './TodoList'
// //---------关键代码--------start
// import { Provider } from 'react-redux'
// import store from './store'
// //声明一个App组件，然后这个组件用Provider进行包裹。
// const App = (
//     <Provider store={store}>
//         <TodoList />
//     </Provider>
// )
// //---------关键代码--------end
// ReactDOM.render(App, document.getElementById('root'));


