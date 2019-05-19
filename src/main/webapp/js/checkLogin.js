if ($("#user_name").html() == "") {
    $("#unLogin").html("登录").attr("href", "/login");

} else {
    $("#unLogin").html("注销").attr("href", "/logout");
}

function checkLogin() {
    if ($("#user_name").html()=="") {
        alert("请先登录！");
        $("#addArticle").attr("href","#");
        $("#myArticle").attr("href","##");
    }
}