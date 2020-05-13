<%--
  Created by IntelliJ IDEA.
  User: 凭澜漾意
  Date: 2019/5/2
  Time: 16:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="com.*" %>
<%@ page import="java.util.Scanner" %>

<html>
<head>
    <title>登陆成功</title>
</head>
<style>    body{
        text-align: center;
    }
</style>
<body>
    <p>恭喜您登陆成功!</p>
    <p>下面是四则运算计算器(默认值为0）</p>
    <!--引用BEAN包-->
    <jsp:useBean id="calculator" class="com.Calculate" scope="request"></jsp:useBean>
    <jsp:setProperty name="calculator" property="*"></jsp:setProperty>
    <!--能否进行运算-->
    <%
        try {
            calculator.calculate();
        }
        catch (NumberFormatException e){
            out.write("输入非法字符，请重新输入");
        }
    %>
    <!--表单计算-->
    <form action="succeed.jsp" method="post">
        <span>请输入第一个数:</span>
        <input type="text" name="num1"><br>
        <span>请输入操作符</span>
        <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
        </select><br>
        <span>请输入第二个数:</span>
        <input type="text" name="num2"><br>
        <input type="submit" value="计算">
    </form>
    <br><br>
    <!--结果显示-->
    计算结果是:
    <jsp:getProperty name="calculator" property="num1"></jsp:getProperty>
    <jsp:getProperty name="calculator" property="operator"></jsp:getProperty>
    <jsp:getProperty name="calculator" property="num2"></jsp:getProperty>
    =
    <jsp:getProperty name="calculator" property="result"></jsp:getProperty>
</body>
</html>
