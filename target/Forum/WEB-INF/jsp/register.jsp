<%--
  Created by IntelliJ IDEA.
  User: rayaidas
  Date: 19-5-15
  Time: 下午5:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String Path = request.getContextPath(); %>
<html>
<head>
    <title>注册页面</title>
    <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8”>
    <link href="<%=Path%>/css/bootstrap.css" rel="stylesheet">
    <link href="<%=Path%>/css/main.css" rel="stylesheet">
</head>
<body>

<form action="<%=Path%>/register" method="post" onsubmit="return check()" class="form">
    <div class="form-group">
        <label for="username">昵称:</label>
        <input class="form-control" type="text" id="username" name="username" placeholder="请输入两位以上的字符"/>
    </div>
    <div class="form-group">
        <label for="email">邮箱:</label>
        <input class="form-control" type="text" id="email" name="email"/>
    </div>
    <div class="form-group">
        <label for="password">密码:</label>
        <input class="form-control" type="password" id="password" name="password"/>
    </div>
    <p id="message">${msg}</p>
    <input class="btn btn-primary submit" type="submit" value="注册" />
    <a href="/login">登录</a>
</form>
<script type="text/javascript" src="<%=Path%>/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
    function check() {
        var username = $("#username").val();
        var password = $("#password").val();
        var email = $("#email").val();
        if(username == ""){
            alert("账号不能为空");
            return false;
        }else if(password == ""){
            alert("密码不能为空");
            return false;
        }else if(email == ""){
            alert("邮箱不能为空");
            return false;
        }else if(!/\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*/.test(email)){
            alert("邮箱格式不正确");
            return false;
        }else{
            return true;
        }
    }
</script>
</body>
</html>
