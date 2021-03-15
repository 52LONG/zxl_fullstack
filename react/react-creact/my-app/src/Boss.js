import React, { Component } from 'react';
import {CSSTransition} from 'react-transition-group'
// - Transition 
// - cssTransition
// -TransitionGrou
class Boss  extends Component {
    constructor(props) {
        super(props);
        this.state = {
            isShow:true
         }
         this.toToggloe = this.toToggloe.bind(this)
    }
    render() { 
        return ( 
            <div>
                <CSSTransition 
                in={this.state.isShow} 
                timeout={2000} 
                classNames="boss-text"
                unmountOnExit
                >
                <div>BOSS 级人物 -孙悟空</div>
                </CSSTransition>
                {/* 之前的方法 */}
                {/* <div className={this.state.isShow?'show':'hide'}>BOSS 级人物 -孙悟空</div>*/}
                <div><button onClick={this.toToggloe}>召唤Boss</button></div> 
            </div>
         );
    }
    toToggloe(){
        this.setState({
            isShow:this.state.isShow?false:true
        })
    }
}
 
export default Boss;