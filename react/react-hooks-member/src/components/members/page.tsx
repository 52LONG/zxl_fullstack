import * as React from 'react';
import {memberAPI} from '../../api/member';
import { MemberEntity } from '../../model';
import {MemberHeader} from './memberHeader';
import {MemberRow} from './memberRow';
interface Props{

}
interface State{
  members:MemberEntity[]
}
export class MembersPage extends React.Component<Props,State>{
  constructor(props){
    super(props)
    this.state = {
      members:[]
    }
  }
  public componentDidMount(){
    memberAPI //API模块化  组件 -> 定义去取数据的地方
      .fetchMembers()//异步获取数据 thenable  的话返回Promise
      .then((members)=>{
        this.setState({
          members
        })
      })
  }
  render(){
    return(
      <div className="row">
        <h2>Members Page</h2>
        <table className="table">
          <thead>
            <MemberHeader/>
          </thead>
          <tbody>
            {
              this.state.members.map((member) =>
                <MemberRow key={member.id} member={member}/>
              )
            }
          </tbody>
        </table>
      </div>
    )
  }
}
// export const MembersPage: React.StatelessComponent<{}> = () => {
//   return (
//     <div className="row">
//       <h2> Members Page</h2>
//       <table className="table"> 
//       <thead></thead>
//       <tbody>
//         {/*{this.state.members.map(MemberRow)}*/}
//       </tbody>
//       </table>
//     </div>
//   );
// }