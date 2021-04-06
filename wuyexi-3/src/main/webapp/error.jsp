
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>${msg}</h1><br/>
<h3>1秒后返回</h3>

<script type="text/javascript">
    setInterval(function (){
        history.back()
    },1000);
    

</script>
</body>
</html>
