import React,{Component} from 'react';

export default class LifeCycle extends Component{
    static defaultProps = {
        name:'计数器'
    }
    constructor(props){
        super(props);
        this.state = {
            number:0,
            users:[]
        }
        console.log('1. constaructor 初始化 props and state');
    }
    componentWillMount(){
        console.log('2  componentWillMount 组件将要挂载');
    }
    componentDidMount(){
        console.log('4  componentDidMount 组件已挂载');
    }
    add=()=>{
        this.setState({number:this.state.number})
    }
    render(){
        console.log('3 render 渲染 也就是挂载');
        return (
            <div>
                <p>{this.props.name}:{this.state.number}</p>
                <button onClick={this.add}>➕</button>
                {/* 如果为真 则在子组件会更新， 为假的话，那么将会卸载 */}
                {this.state.number%2 === 0 && <SubCounter number={this.state.number}/> }
            </div>
        )
    }
}
class SubCounter extends Component{
    constructor(props){
        super(props);
    }
    componentWillReceiveProps(){
        console.log(' SubCounter 1. componentWillReceiveProps');
    }
    shouldComponentUpdate(nextProps,nexState){
        console.log('SubCounter',nextProps,nexState);
        if(nextProps.number % 3 === 0){
            return true;

        }else{
            return false;
        }
    }
    componentWillUpdate(){
        console.log('组件即将更新');

    }
    componentDidUpdate(){
        console.log('组件已更新');
    }
    componentWillUnmount(){
        console.log('组件要卸载');
    }
    render(){
        console.log('组件重新渲染');
        return(
            <div>
                {this.props.number}
            </div>
        )
    }
}
