
import './App.css';
import {BrowserRouter} from "react-router-dom";
// SPA #/ 兼容性 /后端路由
// src/ 目录 架构意义
// /components /pages /api /store /layout页面版式
import Frame from './layout/Frame';
import HookMovie from './pages/HookMovie';
import HookInfos from './pages/HookInfos';
import {Switch,Route} from 'react-router-dom';
function App() {
  return (
   <BrowserRouter>
      <Frame>
        <Switch>
          {/* 加上exact代表当前路由path的路径采用精确匹配  嵌套路由不要加exact属性 */}
            <Route exact path="/" component={HookMovie} /> 
            <Route path="/infos" component={HookInfos} />

        </Switch>
      </Frame>
   </BrowserRouter>
  );
}

export default App;
