import {MemberEntity} from '../../model';
import {members} from './mockData';

//假数据 自给自足
//做完页面开发后，再换成镇数据
const fetchMembers = () :MemberEntity[]=>{
    // Promise类
    // return Promise.resolve(members);
    return members
}
const fetchMembersAsync =()=>{

}
export const memberAPI ={
    fetchMembers,
    fetchMembersAsync
}