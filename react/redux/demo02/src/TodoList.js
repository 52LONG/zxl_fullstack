import React, { Component } from 'react';
//-----关键代码--------start
// import store from './store'
import {connect}from 'react-redux' //连接器
//-----关键代码--------end

//无状态组件 优化
const TodoList = (props) =>{
    let {inputValue,inputChange,clickButton,list,deleteItem} = props;
    return (
        <div>
            <div>
                {/* //-----关键代码--------start */}
                <input 
                 value={inputValue}
                 onChange={inputChange}/>
                {/* //-----关键代码--------end */}
                <button onClick={clickButton}>提交</button>
            </div>
            <ul >
               {list.map((item,index)=>{
                   return(<li key={index} onClick={deleteItem}>{item}</li>)
               })}
            </ul>
        </div>
        );
}

//有状态组件 
// class TodoList extends Component {
//     //-----关键代码--------start
//     //-----关键代码--------end

//     render() {
//     let {inputValue,inputChange,clickButton,list} = this.props;
//         return (
//             <div>
//                 <div>
//                     {/* //-----关键代码--------start */}
//                     <input 
//                      value={inputValue}
//                      onChange={inputChange}/>
//                     {/* //-----关键代码--------end */}
//                     <button onClick={clickButton}>提交</button>
//                 </div>
//                 <ul>
//                    {list.map((item,index)=>{
//                        return(<li key={index}>{item}</li>)
//                    })}
//                 </ul>
//             </div>
//             );
//     }
// }
//映射翻译
const stateToProps = (state)=>{
    return{
        inputValue:state.inputValue,
        list:state.list
    }
}
//连接器的第二个参数、
// 方法写在这里面
const dispatchToProps =(dispatch)=>{
    return {
        inputChange(e){
            let action = {
                type:'change_input',
                value:e.target.value
            }
            dispatch(action)
        },
        clickButton(){
            let action ={
                type:'add_item'
            }
            dispatch(action)
            
        },
        deleteItem(){
            // console.log(index);
               const action =  {
                   type:'delete_item',
               
               }
               dispatch(action)

        }
        
    }
}

//连接器
export default connect(stateToProps,dispatchToProps)(TodoList);