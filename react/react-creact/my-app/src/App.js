import React, { Component } from 'react'

class App extends Component{
    render(){
        return(
            <ul className="my-list">

                <li>{true?'JSpang.com':'技术胖' }</li>
                <li>I Love React</li>
            </ul>
        )
        //以前的方法
        // var child1 = React.createElement('li',null,'JSpang.com');
        // var child2 = React.createElement('li',null,'I Love React');
        // var root = React.createElement('ul',{className:'my-list'},child1,child2);
    }
}
export default App