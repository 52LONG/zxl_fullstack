import React from 'react';
import 'antd/dist/antd.css';
import {Input,Button,List} from 'antd'
const TodoListUI = (props) =>{//无状态组件
    return (
        <div style={{margin:'20px'}}>
            <div>
               <Input 
               placeholder={props.inputValue}
               style={{width:'450px',marginRight:'10px'}}
               onChange={props.changeInputValue}
               value={props.inputValue}
               />
                <Button 
                type="primary"
                onClick={props.clickBtn}
                >增加</Button>
           </div>
           <div style={{margin:'20px',width:'480px'}}>
                <List bordered 
                      dataSource={props.list}
                      renderItem={(item,index)=>(
                      <List.Item onClick={()=>{
                         props.deleteItem(index)}}>
                            {item}</List.Item>)}
                        />
           </div>
     </div>

      );
}
// class TodoListUI extends Component {
//     render() { 
//         return (
//             <div style={{margin:'20px'}}>
//                 <div>
//                    <Input 
//                    placeholder={this.props.inputValue}
//                    style={{width:'450px',marginRight:'10px'}}
//                    onChange={this.props.changeInputValue}
//                    value={this.props.inputValue}
//                    />
//                     <Button 
//                     type="primary"
//                     onClick={this.props.clickBtn}
//                     >增加</Button>
//                </div>
//                <div style={{margin:'20px',width:'480px'}}>
//                     <List bordered 
//                           dataSource={this.props.list}
//                           renderItem={(item,index)=>(
//                           <List.Item onClick={()=>{
//                               this.props.deleteItem(index)}}>
//                                 {item}</List.Item>)}
//                             />
//                </div>
//          </div>

//           );
//     }
// }
 
export default TodoListUI;