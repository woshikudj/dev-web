package com.bo.listener;

import com.bo.entity.Book;
import com.bo.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author woshikudj
 * @ClassName LoginServlet
 * @Description TODO
 * @Date 2019/10/03
 * @Version 1.0
 **/
@WebListener
public class ContextLoaderListener implements ServletContextListener {

    /**
     * @Description 容器初始化方法
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User(1, "123", "698d51a19d8a121ce581499d7b701668", "如果我是酷dj", "user1.jpg", "江苏常州", LocalDate.of(2019, 10, 1)),
                new User(2, "456", "698d51a19d8a121ce581499d7b701668", "耐", "user2.jpg", "江苏南京", LocalDate.of(2019, 10, 2)),
                new User(3, "789", "698d51a19d8a121ce581499d7b701668", "草莓味的混世少女", "user3.jpg", "湖北武汉", LocalDate.of(2019, 10, 3))
        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(10);
        Book[] books = {
                new Book(1, "好人平安", "11.jpg", "骁骑校"),
                new Book(2, "国民奇人", "12.jpg", "白简"),
                new Book(3, "万顾剑帝", "13.jpg", "冬泳小哥"),
                new Book(4, "红日之孤军", "14.jpg", "却却"),
                new Book(5, "解忧杂货铺", "15.jpg", "东野圭吾"),
                new Book(6, "个体崛起", "16.jpg", "[法] 塞巴斯蒂安"),
                new Book(7, "追风筝的人", "17.jpg", "[美]卡勒德.胡塞尼"),
                new Book(8, "天才向左，疯子向右", "18.jpg", "[美]凯.雷德菲尔德.杰米森"),
                new Book(9, "人类简史", "19.jpg", "[美]房龙"),
                new Book(10, "大江大河", "20.jpg", "阿耐"),

        };
        bookList = Arrays.asList(books);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
    }

    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}
