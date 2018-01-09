package com.neuedu;

import com.neuedu.lei.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by ttc on 17-12-29.
 */
@WebServlet("/ServletRegister")
public class ServletRegister extends HttpServlet {
    User u=null;
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        u=new User();
        String uname=request.getParameter("uname");
        String upass=request.getParameter("upass");
        u.setUname(uname);
        u.setUpass(upass);
        System.out.println("uname and upass is"+uname+"!!@!!"+upass);
        setUtoDB(u);
        response.sendRedirect("/aoki_html/goods1.jsp");
    }

    private void setUtoDB(User u) {
        Connection conn=null;
        try {
            conn=DBUtil.connedDB();
            String sql="insert into aoki_user values(?,?)";
            PreparedStatement ps=conn.prepareStatement(sql);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally{

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
