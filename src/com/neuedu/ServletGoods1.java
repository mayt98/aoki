package com.neuedu;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by ttc on 17-12-27.
 */
@WebServlet("/ServletGoods1")
public class ServletGoods1 extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        response.setContentType("text.html;charset=utf-8");
        String count=request.getParameter("count");
        String price=request.getParameter("price");
        System.out.println(count+"数量。 单价是"+price);
        HttpSession hs=request.getSession();
        hs.setAttribute("count",count);
        hs.setAttribute("price",price);
        hs.setAttribute("totalMoney",Double.parseDouble(count)*Double.parseDouble(price));
        response.sendRedirect("/aoki_html/pay.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
