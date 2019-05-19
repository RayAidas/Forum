<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: rayaidas
  Date: 19-5-17
  Time: 下午8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String Path = request.getContextPath(); %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 引入 Bootstrap -->
    <link href="<%=Path%>/css/bootstrap.css" rel="stylesheet">
    <link href="<%=Path%>/css/main.css" rel="stylesheet">
    <title>我发布的</title>
</head>
<body>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    <small>简易论坛 - by ssm基础框架</small>
                </h1>
                <p>
                    <span id="user_name">${USER_SESSION.userName}</span> <a id="unLogin" href=""></a>
                </p>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <ul class="nav nav-tabs">
                <li><a href="<%=Path%>/articleList">首页</a></li>
                <li><a href="<%=Path%>/addArticle">我要发帖</a></li>
                <li class="active"><a href="#">我发布的</a></li>
            </ul>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>帖子列表
                    <small>显示帖子信息</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <c:forEach var="myArticle" items="${requestScope.get('myArticle')}" varStatus="status">
                <a class="list" href="<%=Path%>/detail/${myArticle.articleId}">
                    <h3 class="title">${myArticle.articleTitle}</h3>
                    <span class="label label-primary">${myArticle.articleTag}</span>
                    <p class="content">${myArticle.articleContent}</p>
                    <p class="infor"><span>${myArticle.articleCreatetime}</span><a href="<%=Path%>/updateArticle/${myArticle.articleId}">修改</a>&nbsp;<a href="<%=Path%>/del/${myArticle.articleId}">删除</a></p>
                </a>
            </c:forEach>
        </div>
    </div>
</div>
<script type="text/javascript" src="<%=Path%>/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=Path%>/js/checkLogin.js"></script>
</body>
</html>
