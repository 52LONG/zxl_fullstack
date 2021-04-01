import {CHANGE_INPUT,ADD_ITEM,DELETE_ITEM,GET_LIST,GET_MY_LIST} from './actionTypes'
import axios from 'axios'
export const ChangeInputAction =( value)=>({
    type:CHANGE_INPUT,
    value

})

export const addItemAction =( )=>({
    type:ADD_ITEM

})
export const deleteItemAction = (index)=>({
    type:DELETE_ITEM,
    index
})
export const getListAction = (data)=>({
    type:GET_LIST,
    data
})
export const getTodoList = () =>{//有利于自动化测试 
    return (dispatch)=>{
        axios.get('https://mock.mengxuegu.com/mock/604e17d0f340b05bceda41c8/ReactDemo-myapp/getList')
        .then((res)=>{
            // console.log(res);
            const data = res.data
            // console.log(data);
            const action = getListAction(data)
            dispatch(action);

        })
    }
}
export const getMyListAction = () =>({
    type:GET_MY_LIST

})