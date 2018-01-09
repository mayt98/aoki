package com.neuedu;

import com.neuedu.lei.goodsinfo;

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

import static java.lang.Float.parseFloat;

/**
 * Created by ttc on 18-1-5.
 */
@WebServlet("/ServletIndex")
public class ServletIndex extends HttpServlet
{
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        String id = request.getParameter("id");
        goodsinfo gi = searchtoOrder(id);
        HttpSession hs = request.getSession();
        hs.setAttribute("goodsInfo", gi);
        System.out.println("goodsInfo s goodsId"+gi.getBigImage1());
        response.getWriter().write("/aoki_html/xiangQing.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
    {
        doPost(request, response);
    }

    private goodsinfo searchtoOrder(String id)
    {
        goodsinfo gi = new goodsinfo();
        try
        {
            Connection conn = DBUtil.connedDB();
            String sql = "select *from goodsinfo WHERE goodsid=?";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, id);
            ResultSet rs = ps.executeQuery();
            if (rs.next())
            {
                gi.setGoodsIntroduce(rs.getString("goodsintroduce"));
                gi.setGoodsPrice(Float.parseFloat(rs.getString("goodsprice")));

                gi.setBigImage1("/images/"+rs.getString("bigimage1")+".jpg");
                gi.setBigImage2("/images/"+rs.getString("bigimage2")+".jpg");
                gi.setBigImage3("/images/"+rs.getString("bigimage3")+".jpg");
                gi.setBigImage4("/images/"+rs.getString("bigimage4")+".jpg");
                gi.setSmallImage1("/images/"+rs.getString("smallimage1")+".jpg");
                gi.setSmallImage2("/images/"+rs.getString("smallimage2")+".jpg");
                gi.setSmallImage3("/images/"+rs.getString("smallimage3")+".jpg");
                gi.setSmallImage4("/images/"+rs.getString("smallimage4")+".jpg");
                gi.setColor1(rs.getString("color1"));
                gi.setColor2(rs.getString("color2"));
                gi.setColor3(rs.getString("color3"));
                gi.setColor4(rs.getString("color4"));
                return gi;
            }

        } catch (ClassNotFoundException e)
        {
            e.printStackTrace();
        } catch (SQLException e)
        {
            e.printStackTrace();
        }
        return null;
    }
}
