import React, {Component} from 'react';
import './CommentInput.css';
import Comment from './Comment'
export default class CommentList extends Component{
    render(){
        return (
            <div>
               CommentList
               {/* wx:for vue  react 没有指令 
                    react 是原滋原味的js
                    json array => html array
               */}
               {
                this.props.comments.map(comment => <Comment comment={comment}/>)
               }
               
            
            </div>
        )
    }
}