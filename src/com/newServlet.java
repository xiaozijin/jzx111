package com;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
//servlet登录方式
@WebServlet(name = "newServlet")
public class newServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Users users = new Users();
        String username;
        String password;
        try{
            username = req.getParameter("username");
            password = req.getParameter("password");
            users.setUsername(username);
            users.setPassword(password);
            if(username.equals("123456")&&password.equals("111111")) {
                req.getRequestDispatcher("/succeed.jsp").forward(req,resp);
            }
            else{
                req.getRequestDispatcher("/failed.jsp").forward(req,resp);
            }
        }
        catch (Exception e){
            e.printStackTrace();
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }
}
