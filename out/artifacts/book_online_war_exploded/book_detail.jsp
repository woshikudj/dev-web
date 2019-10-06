<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>图书详情页面</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
    <style type="text/css">
        h2, h3 {
            color: rgb(73, 73, 73);
        }

        #search {
            height: 80px;
            background-color: rgb(246, 246, 241);
            display: flex;
            align-items: center;
            padding-left: 8%;
            margin-bottom: 10px;
        }

        .search-input {
            flex: 0 0 40%;
            height: 35px;
            background-color: #fff;
            border: none;
            border-radius: 3px;
            margin-left: 50px;
        }

        .search-btn {
            width: 35px;
            height: 35px;
            background-color: rgb(155, 154, 143);
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .search-btn img {
            width: 50%;
            height: 50%;
        }


        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }

        hr {
            width: 90%;
            color: #eee;
            margin-top: 10px;
        }

        .col-6 {
            height: 400px;
            padding-right: 10px;
        }

        .col-6 img {
            width: 60%;
            height: 100%;
            border-radius: 20px;
        }
    </style>
</head>
<body>
<%
    Book book = (Book) request.getAttribute("book");
    pageContext.setAttribute("book", book);
%>

<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<div id="search">
    <h2>读书时刻</h2>
    <input type="text" placeholder="输入要搜索的内容" class="search-input">
    <div class="search-btn">
        <img src="${pageContext.request.contextPath}/images/search.png" alt="">
    </div>
</div>

<div class="container">
    <div class="row">
        <div class="col-8">
            <h3>${book.name}</h3>
            <hr>
            <div class="row">
                <div class="col-6">
                    <img src="/images/${book.cover}" alt="">
                </div>
                <div class="col-4">
                    <p>${book.author}</p>
                </div>
            </div>
        </div>
        <div class="col-4">
            <h3>热门书籍</h3>
            <hr>
            <font size="5">「都市」                        猎赝                                        柳下挥<br>
                「玄幻」                        沧元图                                      我吃西红柿<br>
                「都市」                        绝对                                        一番海底漫步者<br>
                「历史」                        承包大明                                    南希北庆<br>
                「仙侠」                        秘宝之主                                    叶天南<br>
                「武侠」                        武神皇庭狗                                  狍子<br>
                「仙侠」                        太虚化龙篇                                  六月观主<br>
                「都市」                        我的创业时代                                麻辣斯基<br>
                「玄幻」                        万界之活久见                                归去尘寰<br>
                「科幻」                        诸天最强学院                                南极烈日<br>
                「游戏」                        猎魔烹饪手册                                颓废龙<br>
                「玄幻」                        我的修炼游戏                                切开的柠檬<br>
                「轻小说」                    木叶的白眼公主别讲道理                       砍他<br>
                「都市」                        娱乐圈餐饮指南                              无上星空<br>
                「轻小说」                      我的女友是声优                              死活不起床<br>
                「游戏」                        我能提取熟练度                              云东流<br>
                「游戏」                        亏成首富从游戏开始                          绝不咸鱼<br><a>
        </div>
    </div>

</div>
</body>
</html>
