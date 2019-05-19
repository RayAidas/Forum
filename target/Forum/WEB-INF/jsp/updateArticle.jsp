<%--
  Created by IntelliJ IDEA.
  User: rayaidas
  Date: 19-5-19
  Time: 上午12:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.Date"%>
<% String Path = request.getContextPath(); %>
<html>
<head>
    <title>我要发帖</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!-- 引入 Bootstrap -->
    <link href="<%=Path%>/css/bootstrap.css" rel="stylesheet">

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
                <li class="active"><a href="#">我要修改</a></li>
                <li><a href="<%=Path%>/myArticle/${USER_SESSION.userId}">我发布的</a></li>
            </ul>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="page-header">
                <h1>
                    我要修改
                    <small>修改帖子信息</small>
                </h1>
            </div>
        </div>
    </div>

    <div class="row clearfix">
        <div class="col-md-12 column">
            <form role="form" id="update" method="post" action="<%=Path%>/toUpdateArticle" accept-charset="utf-8">
                <div class="form-group">
                    <label>作者</label><input class="form-control" name="articleAuthor" value="${USER_SESSION.userName}" readonly="readonly"/>
                </div>
                <div class="form-group hidden">
                    <label>文章id</label><input class="form-control" name="articleId" value="${requestScope.get("updateArticle").articleId}"/>
                </div>
                <div class="form-group hidden">
                    <label>id</label><input class="form-control" name="articleAuthorId" value="${USER_SESSION.userId}"/>
                </div>
                <div class="form-group hidden">
                    <label>创建时间</label><input class="form-control" name="articleCreatetime" id="articleCreatetime" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date())%>"></input>
                </div>
                <div class="form-group">
                    <label>标题</label><input class="form-control" name="articleTitle" value="${requestScope.get("updateArticle").articleTitle}"/>
                </div>
                <div class="form-group">
                    <label>描述</label><input class="form-control" name="articleDescribe" value="${requestScope.get("updateArticle").articleDescribe}"/>
                </div>
                <div class="form-group">
                    <label>标签</label><input class="form-control" name="articleTag" value="${requestScope.get("updateArticle").articleTag}"/>
                </div>
                <div class="form-group">
                    <label>内容</label><textarea rows="20" class="form-control" name="articleContent">${requestScope.get("updateArticle").articleContent}</textarea>
                </div>
                <button class="btn btn-default" id="sub">修改</button>
            </form>
        </div>
    </div>

</div>

<script type="text/javascript" src="<%=Path%>/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="<%=Path%>/js/checkLogin.js"></script>
<script type="text/javascript">
    function list() {
        window.location.href="<%=Path%>/articleList";
    }
    var frm = $('#update');
    frm.submit(function (ev) {
        $.ajax({
            type: frm.attr('method'),
            url: frm.attr('action'),
            data: frm.serialize(),
            success:function(data) {
                list();
            },
            error:function(data){
                alert("更新失败");
            }
        });
        ev.preventDefault();
    });
</script>
</body>
</html>
