<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String Path = request.getContextPath(); %>
<html>
<head>
    <title>帖子列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="<%=Path%>/css/bootstrap.css" rel="stylesheet">
    <link href="<%=Path%>/css/main.css" rel="stylesheet">
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
                <li class="active"><a href="#">首页</a></li>
                <li><a href="<%=Path%>/addArticle" id="addArticle" onclick="checkLogin()">我要发帖</a></li>
                <li><a href="<%=Path%>/myArticle/${USER_SESSION.userId}" id="myArticle" onclick="checkLogin()">我发布的</a></li>
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
            <c:forEach var="article" items="${requestScope.get('articleList')}" varStatus="status">
                <a class="list" href="<%=Path%>/detail/${article.articleId}">
                    <h3 class="title">${article.articleTitle}</h3>
                    <span class="label label-primary">${article.articleTag}</span>
                    <p class="content">${article.articleContent}</p>
                    <p class="infor"><span>by ${article.articleAuthor}</span><span>${article.articleCreatetime}</span></p>
                </a>
            </c:forEach>
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script type="text/javascript" src="<%=Path%>/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=Path%>/js/checkLogin.js"></script>
</body>
</html>