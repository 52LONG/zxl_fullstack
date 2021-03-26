import React, { useEffect, useState } from 'react';
import { Tag,Divider,Card} from 'antd';
import { NavLink } from 'react-router-dom';
import axios from 'axios';//使用mock
import './index.css';

const NavRight=()=>{
    const [lists,setTagList]=useState([]);
    const getTagAPIList=()=>{
        // console.log(data);
        axios
            .get('/tags')
            .then(res=>{
                // console.log(res.data.tags.result);
                // setTagList(res.data.tags.result)
                const data = res.data.tags.result;
                console.log(data);
                setTagList(data)
            })
            

    }
    useEffect(()=>{
        getTagAPIList();
    },[])
    const renderMenu = (data) => {
        return data.map(item => {
          console.log(data);
          if (item.list) {
            return (
              <Card size="small"  style={{width:370}} bordered={false} title={item.name}
              key={item.classid}>
              <div>
            {renderMenu(item.list)}
            </div>
              </Card>
              
            )
          }
          return <Tag color="magenta" title={item.name} key={item.classid}>
          <NavLink to={item.classid}>{item.name}</NavLink>
        </Tag>
        })
        
    
        
      }
      const tag_list = renderMenu(lists);
    return (
        <div>
          <div><span className="tag_left">热门标签</span><span className="tag_right"><a >更多</a></span></div> 
         <Card>{tag_list}</Card>
        </div>   
    )
}
export default NavRight
