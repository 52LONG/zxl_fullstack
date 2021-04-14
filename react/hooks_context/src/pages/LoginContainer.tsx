import * as React from 'react';
import {useEffect} from 'react';
import { isValidLogin } from '../api/login'
import Card from '@material-ui/core/Card'; // android 内置的ui
// 像webapp 像原生app 
import { CardContainer } from './login';
import CardHeader from '@material-ui/core/CardHeader';
import CardContent from '@material-ui/core/CardContent';
import {LoginEntity} from '../model/login';
import LoginComponent from '../components/LoginComponent';
import { useHistory } from 'react-router';
import { SessionContext } from '../common';

const LoginContainer = () => {
  const history = useHistory();
  const loginContext = React.useContext(SessionContext);
  const loginSuccessed = (isValid: boolean, login: LoginEntity) => {
    if(isValid){
        loginContext.updateLogin(login.login)
        history.push('/pageB')//跳转到这个页面
    }
  }

  const handleLogin = (login) => {
    isValidLogin(login)
      .then((isValid) => loginSuccessed(isValid, login))
  }
  useEffect(()=>{
    setTimeout(()=>{
        handleLogin({
            login:'admin',
            password:'test'
        })
    },2000)
  },[])
  return (
    <CardContainer>
      <Card className="card">
        <CardHeader title="Login"/>
        <CardContent>
          <LoginComponent onLogin={handleLogin}/>
        </CardContent>
      </Card>
    </CardContainer>
  )
}
export default LoginContainer;
