import { Divider } from 'antd';
import { configConsumerProps } from 'antd/lib/config-provider';
import React,{ Component } from 'react';
import './Login.css';
import config from './config';
import {Form,Input,Button,Row} from 'antd';
//用antd 做网站后台 网站
export default class Login extends Component{
    render(){
        return(
            <div className="form">
                <div className="logo">
                    <img src={config.logoPath} alt="logo"/>
                    <span>{config.siteName}</span>
                </div>
                <Form>
                    <Form.Item name="username" label="Username">
                    <label></label>    <Input placeholder="请输入用户名"></Input>
                    </Form.Item>
                    <Form.Item name="password" label="Passworde">
                        <Input placeholder="请输入密码"></Input>
                    </Form.Item>
                    <Row>
                        <Button type="primary" htmlType="submit">Sign in</Button>
                        <p>
                            <span className="margin-right">Username:guest </span>
                            <span> Password: guest</span>
                        </p>
                    </Row>
                </Form>
            </div>
        )
    }
}