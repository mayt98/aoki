package com.neuedu;

import com.neuedu.lei.order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

import static java.lang.Float.parseFloat;
import static java.lang.Integer.parseInt;

/**
 * Created by ttc on 18-1-4.
 */
@WebServlet("/ServletOrder")
public class ServletOrder extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        order o=new order();
        o.setReceiver(request.getParameter("receiver"));
        o.setSendAddress(request.getParameter("sendAddress"));
        o.setPhone(request.getParameter("phone"));
        System.out.println("goodsPrice 's value");
        o.setGoodsPrice(Float.parseFloat(request.getParameter("goodsPrice")));
        o.setGoodsAmount(Integer.parseInt(request.getParameter("formGoodsAmount")));
        System.out.println("shouldPay"+request.getParameterValues("shouldPay"));
        System.out.println("formGoodsAmount is"+request.getParameter("formGoodsAmount"));

//        System.out.println("formGoodsAmount in lei is "+o.getGoodsAmount());
        System.out.println("29o.getGoodsPrice is"+o.getGoodsPrice());
        System.out.println("money is "+o.getGoodsPrice());
        System.out.println("receiver is "+o.getReceiver());
        System.out.println(o.getSendAddress()+" "+o.getReceiver()+" "+o.getPhone());
        HttpSession hs=request.getSession();
        hs.setAttribute("order",o);

        response.sendRedirect("/aoki_html/order_state.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request
,response);
    }
}
