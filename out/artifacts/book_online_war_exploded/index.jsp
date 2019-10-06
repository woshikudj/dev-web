<%@ page import="java.util.List" %>
<%@ page import="com.bo.entity.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>首页</title>
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
        .right{
            flex: 0 0 33%;
            height: 100%;
            margin-left: 5px;
            background-color: #eee;

        .search-btn img {
            width: 50%;
            height: 50%;
        }


        .card {
            height: 180px;
            margin: 20px 5px 20px 5px;
        }

        .card img {
            width: 100%;
            height: 90%;
        }

        .card p {
            font-size: 13px;
            color: #9b9b9b;
        }

        .col-4 img {
            margin: 10px 5px 20px 5px;
            width: 80%;
        }

        hr {
            width: 90%;
            color: #eeeeee;
            margin-top: 10px;
        }
    </style>
</head>
<body>
<%
    List<Book> bookList = (List<Book>) request.getAttribute("bookList");
%>
<%--使用jsp的include动作，将top.jsp页面包含进来，这个顶部导航可以给各个页面共享--%>
<div id="top">
    <jsp:include page="top.jsp"/>
</div>

<%--搜索区--%>
<div id="search">
    <h2>读书时刻</h2>
    <input type="text" placeholder="输入要搜索的内容" class="search-input">
    <div class="search-btn">
        <img src="images/search.png" alt="">
    </div>
</div>

<%--主体内容区--%>
<div class="container">
    <div class="row">
        <%--左侧2/3主体部分--%>
        <div class="col-8">
            <h3>好书精选</h3>
            一共${size}本书
            <hr>
            <div class="row">
                <%--遍历图书数据集合，将每个图书对象放入页面对象--%>
                <%
                    for (Book book : bookList) {
                        pageContext.setAttribute("book", book);
                %>
                <%--引用col-2表示每行显示5本，再追加card细节样式--%>
                <div class="col-2 card">
                    <%--点击每本图书封面图，地址栏跳转为/detail/id,进入图书详情Servlet--%>
                    <a href="${pageContext.request.contextPath}/detail/${book.id}">
                        <img src="images/${book.cover}" alt="">
                    </a>
                    <p style="color: rgb(51, 119, 178)">${book.name}</p>
                    <p>${book.author}</p>
                </div>
                <%
                    }
                %>
            </div>
        </div>
            <div class="right">
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


    <footer>
        <ul>

            <li>南京工业职业技术学院</li>
        </ul>
    </footer>
</div>
</body>
</html>
