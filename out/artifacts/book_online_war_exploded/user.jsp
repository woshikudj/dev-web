<%@ page import="com.bo.entity.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>个人中心</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        .explore {
            display: flex;
            align-items: center;
            justify-content: space-between;
            background-color: rgb(237, 244, 237);
            height: 80px;
            padding-left: 8%;
            padding-right: 10px;
        }

        .nav {
            display: flex;
            align-items: center;
            list-style: none;
            background-color: #e8eaf6;
        }
        .nav li {
            color: rgb(61, 133, 73);
            font-size: 18px;
            margin-right: 20px;
        }

        .nav1 {
            display: flex;
            align-items: center;
            list-style: none;
        }
        .nav1 li {
            color: rgb(61, 133, 73);
            font-size: 18px;
            margin-right: 20px;
        }

        .search-input {
            flex: 0 0 30%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
            color: rgb(187, 187, 202);
            font-size: 16px;
        }

        .info {
            display: flex;
        }

        .profile {
            width: 80px;
            height: 80px;
            border-radius: 5px;
        }

        h2 {
            color: rgb(73, 73, 73);
            margin-left: 15px;
        }

        .info-box {
            padding: 10px 10px 10px 10px;
            width: 90%;
            height: 240px;
            border: 1px solid #eee;
            border-radius: 5px;
            background-color: rgb(237, 244, 237);
        }

        .info-box .top {
            height: 80%;
            display: flex;
            border-bottom: 1px solid #e4e6e5;
        }

        .info-box .top img {
            width: 55%;
            height: 85%;
            margin-right: 5px;
            border-radius: 5px;
        }

        p {
            font-size: 13px;
            color: #333;
            padding-top: 5px;
            padding-bottom: 5px;
            margin-top: 5px;
            margin-bottom: 5px;
        }

        .item {
            height: 80px;
            margin-top: 10px;
            margin-bottom: 10px;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .read {
            border-bottom: 1px solid #eee;
        }

        .read a {
            color: rgb(51, 119, 170);
            text-decoration: none;
        }

        .container {
            width: 85%;
            margin: 0 auto;
            display: flex;
            flex-direction: column;
        }
    </style>
</head>
<body>
<%
    User user = (User) session.getAttribute("user");
    pageContext.setAttribute("user", user);
%>

<%--顶部区域，引入共用的top.jsp页面--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<%--浏览区域--%>
<div class="explore">
    <ul class="nav1">
        <li>动态</li>
        <li>提问</li>
        <li>话题</li>
        <li>想法</li>
    </ul>
</div>
<br>

<%--页面主题区域--%>
<div class="container">
    <div class="row">
        <%--左侧2/3区域--%>
        <div class="col-8">
            <div class="info">
                <img src="images/${user.avatar}" alt="" class="profile">
                <h2>${user.nickname}</h2>
            </div>
            <br>
            <div class="item">
                <ul class="nav">
                    <li>我的动态</li>
                </ul>
                <p>收藏了回答
                          4 个月前<br>
                    你们看到过最丧的句子是什么？<br>
                    2,759 条评论
                    ​分享
                    ​收藏
                    ​取消感谢
                    ​
                    </p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>我的回答</li>
                </ul>
                <p>还没有回答任何问题</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>想读书籍</li>
                </ul>
                <p>读过0本书籍</p>
            </div>
            <div class="item">
                <ul class="nav">
                    <li>想说的话</li>
                </ul>
                <label>
                    <textarea cols="80" rows="5"></textarea>
                </label>
                <div>
                    <input type="button" placeholder="还没有说过任何话" value="留言">
                </div>
            </div>
        </div>

        <%-- 右侧1/3区域--%>
        <div class="col-4">
            <div class="info-box">
                <div class="top">
                    <div>
                        <p>居住地：${user.address}</p>
                        <p>出生地：${user.address}</p>
                        <p>账号：${user.account}</p>
                        <p>${user.joinDate}加入</p>
                        <h3>关注：0<br>
                        粉丝：0<br></h3>

                    </div>
                </div>
                <br>
                <p>${user.nickname}</p>
            </div>
            个人主页被浏览 11 次<br><br><br>
            刘看山知乎指南知乎协议知乎隐私保护指引<br>
            应用工作申请开通知乎机构号<br>
            侵权举报网上有害信息举报专区<br>
            京ICP 证 110745 号<br>
            京公网安备 11010802010035 号<br>
            违法和不良信息举报：010-82716601<br>
            儿童色情信息举报专区<br>
            证照中心<br>
            联系我们<br>
            </div>
        </div>
    </div>
</div>
</body>
</html>
