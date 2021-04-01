import {takeEvery,put}from 'redux-saga/effects'
import {GET_MY_LIST} from './actionTypes'
import axios from 'axios'
import {getListAction} from './actionCreatores'
 //generator  函数
function* mySagas(){
    yield takeEvery(GET_MY_LIST,getList)
}


function* getList(){
    // axios.get('https://mock.mengxuegu.com/mock/604e17d0f340b05bceda41c8/ReactDemo-myapp/getList')
    // .then((res)=>{
    //     const data = res.data
    //     const action = getListAction(data)
    //     put(action);

    // })
    const res = yield  axios.get('https://mock.mengxuegu.com/mock/604e17d0f340b05bceda41c8/ReactDemo-myapp/getList')
    const action = getListAction(res.data)
    yield put(action)
}
export default mySagas;
