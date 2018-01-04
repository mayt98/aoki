package com.neuedu;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by ttc on 17-12-29.
 */
@WebFilter(filterName = "Filter1",urlPatterns = "/*")
//@WebFilter(filterName = "FilterDemo1", servletNames = {"ServletDemo1"})
public class Filter1 implements Filter
{
    public void destroy()
    {
        System.out.println("filter destory");
    }

    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws ServletException, IOException
    {

        System.out.println("doFilter...");
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");

        chain.doFilter(req, resp);
    }

    public void init(FilterConfig config) throws ServletException
    {
        System.out.println("filter initial");
    }

}
