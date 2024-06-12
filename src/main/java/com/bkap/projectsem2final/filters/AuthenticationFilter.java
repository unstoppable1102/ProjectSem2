package com.bkap.projectsem2final.filters;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter(dispatcherTypes = {DispatcherType.REQUEST}, urlPatterns = { "/ptm/admin/*" })
public class AuthenticationFilter extends HttpFilter implements Filter {


    private static final long serialVersionUID = 1L;

    /**
     * @see HttpFilter#HttpFilter()
     */
    public AuthenticationFilter() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see Filter#destroy()
     */
    public void destroy() {
        // TODO Auto-generated method stub
    }


    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        // TODO Auto-generated method stub
        // place your code here
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        String uri = req.getRequestURI();
        if((session == null || session.getAttribute("admId") == null) && !uri.contains("admin/login")) {
            res.sendRedirect(req.getContextPath() + "/admin/login");
        }

        if((session == null || session.getAttribute("userId") == null)) {
            if (uri.startsWith(req.getContextPath() + "/cart")) {
                res.sendRedirect(req.getContextPath() + "/login");
                return;
            }
        }
        // pass the request along the filter chain
        chain.doFilter(request, response);
    }


    public void init(FilterConfig fConfig) throws ServletException {
        // TODO Auto-generated method stub
    }
}
