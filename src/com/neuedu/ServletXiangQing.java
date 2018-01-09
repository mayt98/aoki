package com.neuedu;

import com.neuedu.lei.order;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by ttc on 18-1-7.
 */
@WebServlet("/ServletXiangQing")
public class ServletXiangQing extends HttpServlet {
    order o=new order();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String goodsAmount=request.getParameter("goodsAmount");
        System.out.println("goodsAmount is "+goodsAmount);
        System.out.println("goodsPrice is "+request.getParameter("goodsPrice"));
        System.out.println("goodsId is "+request.getParameter("goodsId"));
        o.setGoodsAmount(Integer.parseInt(request.getParameter("goodsAmount")));
        o.setGoodsPrice(Float.parseFloat(request.getParameter("goodsPrice")));
        o.setGoodsId(request.getParameter("goodsId"));
        System.out.println("o s amount price id is "+o.getGoodsAmount()+o.getGoodsPrice()+o.getGoodsId());
        System.out.println(request.getParameter("goodsIntroduce"));
        o.setGoodsIntroduce(request.getParameter("goodsIntroduce"));
        System.out.println("sendAddress"+request.getParameter("sendAddress"));
        o.setSendAddress(request.getParameter("sendAddress"));
        System.out.println("the  selected color is "+request.getParameter("colorSelected"));
        o.setGoodsColor(request.getParameter("colorSelected"));
        System.out.println("the selected size is"+request.getParameter("sizeSelected"));
        o.setGoodsSize(request.getParameter("sizeSelected"));

        HttpSession hs=request.getSession();
        hs.setAttribute("order",o);
        response.sendRedirect("/aoki_html/shopping_trolley.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
