package com.neuedu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by ttc on 17-12-28.
 */
@WebServlet("/ServletLogin")
public class ServletLogin extends HttpServlet {
    String uname;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        uname=request.getParameter("uname");
        String upass=request.getParameter("upass");
        User u=getUser(uname);
        HttpSession hs=request.getSession();

        if(u.getUname().equals(uname)&&u.getUpass().equals(upass)){
            hs.setAttribute("uname",uname);
            hs.setAttribute("u",u);
            response.sendRedirect("/aoki_html/goods1.jsp");
        }else{
            hs.setAttribute("errorMessage","username is error");
            response.sendRedirect("/aoki_html/login.jsp");
        }

    }
        private User getUser(String uname)
        {
            System.out.println("getUser line 1");
                User u=new User();
            PreparedStatement ps=null;
            ResultSet rs=null;
            try {
                Connection conn=DBUtil.connedDB();
                String sql="select * from aoki_user where uname=?";
                 ps=conn.prepareStatement(sql);
                ps.setString(1,uname);
               rs=ps.executeQuery();
                System.out.println("rs rs"+rs.toString());
                while(rs.next()){
                    u.setUname(rs.getString("uname"));
                    System.out.println(rs.getString("uname")+"   uname upass  "+rs.getString("upass"));
                    u.setUpass(rs.getString("upass"));
                }
                System.out.println("uname he upass"+uname+"  "+u.getUpass());

            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            }finally{
                DBUtil.releaseDB(ps,rs);
            }
                return u;
        }




    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
