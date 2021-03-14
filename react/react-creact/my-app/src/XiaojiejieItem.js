import React, { Component } from 'react';
import PropTypes from 'prop-types';
// import Xiaojiejie from './Xiaojiejie';
class XiaojiejieItem extends Component {
    state = {  }
    constructor(props){
        super(props)
        this.handleClick = this.handleClick.bind(this);
    }
    //组件第一次存在于dom中 函数是不会被执行的
    //如果已经存在在DOM中 函数才会被执行
    // componentWillReceiveProps(){
    //     console.log('child-componentWillReceiveProps');
    //     }
    // componentWillUnmount(){//删除的时候才会执行
    //     console.log('child-componentWillUnmount');
    // }
    //组件性能优化
    shouldComponentUpdate(nextProps,nextState){//点击添加的时候才渲染
        if(nextProps.content !== this.props.content){
          return true  
        }else{
            return false 
        }
       
    }
    render() { 
        return ( 
        <li  onClick={this.handleClick}>{this.props.avname}为您作-{this.props.content}</li> 
        );
    }
    handleClick(){
       this.props.deleteItem(this.props.index)
    }
}
XiaojiejieItem.protoTypes = {
    avname:PropTypes.string.isRequired,
    content: PropTypes.string,
    index:PropTypes.number,
    deleteItem:PropTypes.func
}
XiaojiejieItem.defaultProps={
    avname:'松岛枫'
}
export default XiaojiejieItem;