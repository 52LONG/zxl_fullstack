import './App.css';
import {BrowserRouter, Route,Switch} from 'react-router-dom';
import  HookMovie from './pages/HookMovie';
// SPA #/  兼容性更好    /  后端      HashRouter
// src/目录 架构意义
// /component   /pages   / api  /store  /layout 页面框架（页面板式）
import Frame  from './layout/Frame';
import HookInfos from './pages/HookInfos';
function App() {
  return (
    <BrowserRouter>
      <Frame>
        <Switch>
        <Route path="/" component={HookMovie} />
        <Route path="/infos" component={HookInfos}/>
        </Switch>
      </Frame>
    </BrowserRouter>
  );
}

export default App;
