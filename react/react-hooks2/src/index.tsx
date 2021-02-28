import * as React from 'react';
import * as ReactDOM from 'react-dom';
// import { App } from './app';
import { HelloComponent } from './hello';
// AppRouter 路由接管 最外层，路由模块化成一个组件
//
import {AppRouter}  from "./router";
ReactDOM.render(
    // <App/>,
    <AppRouter/>,
    document.getElementById('root')
);