
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link  rel="stylesheet" href="css/bootstrap.css">
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.js"></script>
    <script src="http://cdn.staticfile.org/popper.js/1.14.6/umd/popper.js"></script>
    <script  src="js/bootstrap.js"></script>
    <title>登录页面</title>
    <link rel="stylesheet" type="text/css" href="css/login.css"/>
</head>
<body>
<div id="login_frame">
    <div class="text-center font-weight-bolder text-white mb-4">
        <h3>部门管理员登录</h3>
    </div>
    <form method="post" action="departmenter/login">
        <p><label class="label_input">用户ID</label><input type="text" name="id" class="text_field" placeholder="请输入用户名" required/></p>
        <p><label class="label_input">密码</label><input type="password" name="password" class="text_field" placeholder="请输入密码" required/></p>
        <p><label class="label_input">验证码</label><input type="text" name="yzm" class="text_field" placeholder="请输入验证码" required/></p>
        <div class="captcha_img">
           <img src="images/captcha.jpg"  >
        </div>
        <div id="login_control">
            <button class="btn btn-primary" type="submit">登录</button>
            <a class="float-right" id="forget_pwd" href="#">忘记密码？</a>
        </div>
    </form>
</div>
</body>
</html>

