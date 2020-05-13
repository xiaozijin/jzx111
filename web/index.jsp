<%--
  Created by IntelliJ IDEA.
  User: 凭澜漾意
  Date: 2019/4/28
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>login</title>
  </head>
  <style>
    body{
      text-align: center;
    }
  </style>
  <body>
    <form action="login.jsp" method="post">
        <span>账号:</span>
        <input type="text" name="username"><br>
        <span>密码</span>
        <input type="password" name="password"><br>
        <input type="submit" value="提交">
        <a href="login.jsp?username=123456&&password=111111" style="text-decoration: none;">超管</a>
    </form>
  </body>
</html>
