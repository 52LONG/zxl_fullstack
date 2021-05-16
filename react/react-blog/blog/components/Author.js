import {Avatar,Divider} from 'antd'
import {GithubOutlined,QqOutlined,WechatOutlined} from '@ant-design/icons';
const Author=()=>{
    return (
        <div className="author-div comm-box">
            <div><Avatar size={100} src="https://sf3-ttcdn-tos.pstatp.com/img/user-avatar/951704a976c1a3d2dd9f8fcd058921c7~300x300.image"/></div>
            <div className="author-introduction">大三学生,正在学习前端知识！希望和大家一起学习前端知识，共同进步！</div>
            <Divider>社交账号</Divider>
            <Avatar size={28} icon={<GithubOutlined />} srcSet={"https://ant.design/components/avatar-cn/"} className="account"/>
            <Avatar size={28} icon={<QqOutlined />} className="account"/>
            <Avatar size={28} icon={<WechatOutlined />} className="account"/>
        </div>
    )
}

export default Author;