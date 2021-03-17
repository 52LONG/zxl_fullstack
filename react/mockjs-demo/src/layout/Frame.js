import React from 'react';
import {Layout} from 'antd';//container 
import '../assets/style/layout.css';
const { Content} = Layout;

export default function Frame(props){
    return(
        <div>
            <Layout className="layout">
                <Layout>
                    {/* props.children 代指 
                    <Switch>
                     <Route path="/" component={HookMovie}/>
                    </Switch>
                    这部分内容 放在组件的某个位置上 在组件页面需要使用
                    */}
                    <Content className="content">{props.children}</Content>
                </Layout>
            </Layout>
        </div>
    )
}