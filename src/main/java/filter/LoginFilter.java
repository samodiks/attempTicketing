package filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(filterName = "LoginFilter", urlPatterns = "/*")
public class LoginFilter implements Filter {
    @Override
    public void init(FilterConfig filterConfig) throws ServletException {

    }
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest httpServletRequest = (HttpServletRequest) servletRequest;
        HttpServletResponse httpServletResponse = (HttpServletResponse) servletResponse;
        String servletPath = httpServletRequest.getServletPath();

        System.out.println("Servlet Path: " + servletPath);

        HttpSession session = httpServletRequest.getSession();

        if (session.isNew()){
            session.invalidate();
            if (servletPath.equals("/login")|| servletPath.equals("/user-register")) {
                chain.doFilter(servletRequest, servletResponse);
            }
            else
            if (servletPath.equals("/login.jsp")) {
                chain.doFilter(servletRequest, servletResponse);
                servletResponse.getWriter().flush();
            }
            else
                ((HttpServletResponse) servletResponse).sendRedirect("./login.jsp");
        }else{
            chain.doFilter(servletRequest, servletResponse);
        }
    }
    @Override
    public void destroy() {

    }
}
