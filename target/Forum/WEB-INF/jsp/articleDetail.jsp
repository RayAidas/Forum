<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<% String Path = request.getContextPath(); %>
<html>
<head>
    <title>帖子详情</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- 引入 Bootstrap -->
    <link href="<%=Path%>/css/bootstrap.css" rel="stylesheet">
    <link href="<%=Path%>/css/main.css" rel="stylesheet">

    <!-- HTML5 Shim 和 Respond.js 用于让 IE8 支持 HTML5元素和媒体查询 -->
    <!-- 注意： 如果通过 file://  引入 Respond.js 文件，则该文件无法起效果 -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
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
                <li class="active"><a href="#">帖子详情</a></li>
            </ul>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    帖子详情
                    <small>显示当前帖子详细信息</small>
                </h1>
            </div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h2>${requestScope.get("article").articleTitle}</h2>
            <div class="label label-primary">${article.articleTag}</div>
        </div>
    </div>
    <div class="row clearfix describe">
        <div class="col-md-12 column">
            <div style="margin:10px 0 10px 0;color:blue;">${requestScope.get("article").articleDescribe}</div>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <p class="detail">${requestScope.get("article").articleContent}</p>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>用户评论</h3>
            <c:forEach var="comment" items="${requestScope.get('comments')}" varStatus="status">
                <div class="">
                    <div><span style="color:#1b6d85">${comment.commentUserName}:</span><span>${comment.commentContent}</span></div>
                    <p><span>${comment.commentCreatetime}</span></p>
                </div>
            </c:forEach>
        </div>
    </div>
    <div class="row clearfix">
        <div class="col-md-12 column">
            <h3>写评论</h3>
            <form role="form" id="addComment" method="post" action="<%=Path%>/addComment" accept-charset="utf-8">
                <div class="form-group hidden">
                    <label>作者</label><input class="form-control" name="commentUserName" id="commentUserName" value="${USER_SESSION.userName}"/>
                </div>
                <div class="form-group hidden">
                    <label>作者id</label><input class="form-control" name="commentUserId" value="${USER_SESSION.userId}"/>
                </div>
                <div class="form-group hidden">
                    <label>创建时间</label><input class="form-control" name="commentCreatetime" id="commentCreatetime" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>"></input>
                </div>
                <div class="form-group hidden">
                    <label>文章id</label><input class="form-control" name="commentArticleId" value="${requestScope.get("article").articleId}"/>
                </div>
                <div class="form-group">
                    <textarea rows="10" class="form-control" name="commentContent" placeholder="请输入内容"></textarea>
                </div>
                <button class="btn btn-default" id="sub">评论</button>
            </form>
        </div>
    </div>
</div>

<!-- jQuery (Bootstrap 的 JavaScript 插件需要引入 jQuery) -->
<script type="text/javascript" src="<%=Path%>/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=Path%>/js/checkLogin.js"></script>
<script type="text/javascript">
    var frm = $('#addComment');
    frm.submit(function (ev) {
        if ($("#commentUserName").val()==""){
            alert("请先登录！");
            return false;
        }else {
            $.ajax({
                type: frm.attr('method'),
                url: frm.attr('action'),
                data: frm.serialize(),
                success:function(data) {
                    location.replace(location.href);
                },
                error:function(data){
                    alert("评论失败");
                }
            });
            ev.preventDefault();
        }
    });
</script>
</body>
</html>

