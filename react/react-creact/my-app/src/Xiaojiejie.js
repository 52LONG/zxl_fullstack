import React,{Component,Fragment} from 'react' //imrc 快速生成代码
import axios from 'axios'
import './style.css'
import XiaojiejieItem from './XiaojiejieItem';
class Xiaojiejie extends Component{//cc 快速生成代码
    //在某一时刻,可以自动执行的函数
    constructor(props){//构造函数
        super(props)
        this.state={
            inputValue:'',
            list:[]
        }
        this.deleteItem = this.deleteItem.bind(this);
        this.inputChange = this.inputChange.bind(this);
        this.addLits = this.addLits.bind(this);    
    }
    componentDidMount(){
        axios.get('https://mock.mengxuegu.com/mock/604e17d0f340b05bceda41c8/ReactDemo-myapp/xiaojiejie')
        .then((res)=>{
            console.log('axios 获取数据成功:'+JSON.stringify(res))
            this.setState({
                list:res.data.data
            })
        })
        .catch((error)=>{console.log('axios 获取数据失败'+error)})
        }
    // onentWillMount(){
    //     console.log('componentWillMount-----------组件将要挂在到页面的时刻')
    // }
    // componentDidMount(){
    //     console.log('componentDidMount-----------组件挂载完成的时刻')
    // }
    // shouldComponentUpdate(){
    //     console.log(' 1-shouldComponentUpdate');
    //     return true
    // }
    // componentWillUpdate(){
    //     console.log('2-componentWillUpdata');
    // }
    // componentDidUpdate(){
    //     console.log('4- componentDidUpdate');
    // }
   
    //渲染 
    render(){
        // console.log('3-render ---- 组件挂在中')
        return(
            // <div>
            <Fragment>
                <div>
                    <label htmlFor="js">增加服务：</label>
                    <input 
                    id="js" 
                    className="input" 
                    value={this.state.inputValue} 
                    onChange={this.inputChange}
                    ref = {(input) => {this.input = input}}//用于 inputChange()的优化
                    />
                    <button onClick={this.addLits}>增加服务</button></div>
            <ul ref={(ul)=>{this.ul=ul}}>
                {/*  jsx 正确的注释方法 */}
                {/* <li>头部按摩</li>
                <li>精油推背</li> */} 
                {
                    this.state.list.map((item,index)=>{
                        return (
                        /*
                        <li key={index+item} onClick={this.deleteItem.bind(this,index)} dangerouslySetInnerHTML = {{__html:item}}>
                        </li>
                        */
                        /* 父组件向子组件传值*/
                        /*单向数据流 传递给子组件  子组件不能修改其值  只能使用 子组件要改变只能传递方法过去 子组件通过方法来改变值*/
                        <XiaojiejieItem 
                        key={index+item} 
                        // avname="卡萨丁"
                        content= {item} 
                        index={index} 
                        list ={this.state.list} 
                        deleteItem={this.deleteItem}/>
                        ) 
                    })
                }
            </ul>
            </Fragment>
        // </div>
        )
    }
    // 函数式编程优点  1.每个函数代表一个功能（或代表一个区块渲染）  2.对于代码的测试有了极大的方便 更容易实现前端自动化测试
    // inputChange(e){
    //     // console.log(e.target.value);
    //     //this 指向出问题 
    //     // console.log(this); undefined
    //     // this.state.inputValue = e.target.value
    //     this.setState({
    //         inputValue:e.target.value
    //     })
    // }
    inputChange(){//使用ref 绑定优化的
        this.setState({
            inputValue:this.input.value
        })
    }
    //增加列表
    addLits(){
        this.setState({
            list:[...this.state.list,this.state.inputValue],
            inputValue:''
        },()=>{
            console.log(this.ul.querySelectorAll('li').length);//利用回调函数
        })
        // console.log(this.ul.querySelectorAll('li').length);//少一项, 放在上面不会少 利用回调函数
    }
    //删除列表项
    deleteItem(index){
        console.log(index);
        let list = this.state.list
        list.splice(index,1)//删除一位
        this.setState({
            list:list
        })
    }
}
export default Xiaojiejie
//Simple React Snippets 插件
// Snippet	Renders
// imr	Import React
// imrc	Import React / Component
// imrs	Import React / useState
// imrse	Import React / useState useEffect
// impt	Import PropTypes
// impc	Import React / PureComponent
// cc	Class Component
// ccc	Class Component With Constructor
// cpc	Class Pure Component
// sfc	Stateless Function Component
// cdm	componentDidMount
// uef	useEffect Hook
// cwm	componentWillMount
// cwrp	componentWillReceiveProps
// gds	getDerivedStateFromProps
// scu	shouldComponentUpdate
// cwu	componentWillUpdate
// cdu	componentDidUpdate
// cwu	componentWillUpdate
// cdc	componentDidCatch
// gsbu	getSnapshotBeforeUpdate
// ss	setState
// ssf	Functional setState
// usf	Declare a new state variable using State Hook
// ren	render
// rprop	Render Prop
// hoc	Higher Order Component
