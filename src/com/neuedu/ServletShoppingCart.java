package com.neuedu;

import com.neuedu.lei.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by ttc on 17-12-29.
 */
@WebServlet("/ServletShoppingCart")
public class ServletShoppingCart extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        System.out.println("this is ServletShoppingCart");
        User u=(User)request.getSession().getAttribute("u");
        System.out.println("uname is "+u.getUname());
        String price=request.getParameter("price");
        String count=request.getParameter("count");
        System.out.println("price is"+price+" and count is"+count);
        request.getSession().setAttribute("price",price);
        request.getSession().setAttribute("count",count);
        response.sendRedirect("/aoki_html/shoppingCart.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
