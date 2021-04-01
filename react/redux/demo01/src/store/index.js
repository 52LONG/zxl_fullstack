import {createStore,applyMiddleware,compose} from 'redux';
import reducer from './reducer'
// import thunk from 'redux-thunk';
import createSagaMiddleware from 'redux-saga'; //中间件
import mySagas from './sagas'

const sagaMiddlware = createSagaMiddleware();

const composeEnhancers =  window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ ?
window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__({}):compose

const enhancer =  composeEnhancers(applyMiddleware(sagaMiddlware))

const store = createStore(reducer,enhancer)
sagaMiddlware.run(mySagas)
//thunk 写法
// const composeEnhancers =  window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__ ?
// window.__REDUX_DEVTOOLS_EXTENSION_COMPOSE__({}):compose

// const enhancer =  composeEnhancers(applyMiddleware(thunk))

// const store = createStore(reducer,enhancer)
    //Redux调试插件
    // 
    // window.__REDUX_DEVTOOLS_EXTENSION__&& window.__REDUX_DEVTOOLS_EXTENSION__()
    

export default store;
