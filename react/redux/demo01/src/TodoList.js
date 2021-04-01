import React,{Component} from 'react';
import 'antd/dist/antd.css';
import TodoListUI from './TodoListUI'
import store from './store'
import {getMyListAction,getTodoList,ChangeInputAction,addItemAction,deleteItemAction} from './store/actionCreatores';
class TodoList extends Component {
    constructor(props){
        super(props)
        // console.log(store.getState());
        this.state = store.getState();
        this.changeInputValue = this.changeInputValue.bind(this)
        this.storeChange = this.storeChange.bind(this)
        this.clickBtn = this.clickBtn.bind(this)
        store.subscribe(this.storeChange)
        this.deleteItem = this.deleteItem.bind(this)
    }
    render() { 
        return (
           <TodoListUI
                inputValue={this.state.inputValue}
                changeInputValue={this.changeInputValue}
                clickBtn={this.clickBtn}
                list = {this.state.list}
                deleteItem = {this.deleteItem}
           />
          );
    }
    componentDidMount(){
        // const action = getTodoList()
        // store.dispatch(action)

        const action = getMyListAction()
        store.dispatch(action)
        console.log(action);
    }
    storeChange(){
        // console.log('store changed')
        this.setState(store.getState())
    }
    //--------关键代码------start
    changeInputValue(e){
        const action =ChangeInputAction(e.target.value)
        store.dispatch(action)
    }
    clickBtn(){
        const action = addItemAction()
        store.dispatch(action)
    }
    deleteItem(index){
        // console.log(index);
        const action = deleteItemAction(index)
        store.dispatch(action)
    }
}
 
export default TodoList;