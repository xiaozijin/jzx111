<%--
  Created by IntelliJ IDEA.
  User: 凭澜漾意
  Date: 2019/5/2
  Time: 17:14
  To change this template use File | Settings | File Templates.
--%>
<!--用户名：123456 ，密码111111-->
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.Users" %>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");

    if(username.equals("123456")&&password.equals("111111")){
        session.setAttribute("username",username);
        pageContext.forward("/succeed.jsp");
    }
    else{
        pageContext.forward("/failed.jsp");
    }
%>
