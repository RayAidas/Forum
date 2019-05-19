<%--
  Created by IntelliJ IDEA.
  User: rayaidas
  Date: 19-5-14
  Time: 下午8:22
  To change this template use File | Settings | File Templates.
--%>
    <%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<% String Path = request.getContextPath(); %>
<html>
<head>
    <title>登录页面</title>
    <meta http-equiv=”Content-Type” content=”text/html; charset=UTF-8”>
    <link href="<%=Path%>/css/bootstrap.css" rel="stylesheet">
    <link href="<%=Path%>/css/main.css" rel="stylesheet">
</head>
<body>
<form action="<%=Path%>/toLogin" method="post" onsubmit="return check(this)" class="form">
    <div class="form-group">
        <label for="username">账号:</label>
        <input class="form-control" type="text" id="username" name="username" placeholder="请输入邮箱或昵称"/>
    </div>
    <div class="form-group">
        <label for="password">密码:</label>
        <input class="form-control" type="password" id="password" name="password"/>
    </div>
    <p id="message">${msg}</p>
    <input type="submit" value="登录" class="btn btn-primary submit"/>
    <a href="<%=Path%>/register">去注册</a>
</form>
<script type="text/javascript" src="<%=Path%>/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
    function check() {
        var username = $("#username").val();
        var password = $("#password").val();
        if (username == "") {
            alert("账号不能为空");
            return false;
        } else if (password == "") {
            alert("密码不能为空");
            return false;
        }
        return true;
    }
</script>
</body>
</html>
