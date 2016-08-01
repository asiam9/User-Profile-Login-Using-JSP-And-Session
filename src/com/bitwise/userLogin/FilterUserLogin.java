package com.bitwise.userLogin;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


/**
 * Servlet Filter implementation class FilterUserLogin
 */
@WebFilter("/FilterUserLogin")
public class FilterUserLogin implements Filter {

    /**
     * Default constructor. 
     */
    public FilterUserLogin() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		HashMap<String, String> map = new UserDetails().getUserLogin();
		PrintWriter out = response.getWriter();
		HttpServletRequest req = (HttpServletRequest) request;
		HttpSession ssn = req.getSession();
		
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		System.out.println(name+","+password);
		if(name=="" && password==""){
			out.print("<font color='red'>Please Fill the values first</font>");
			request.getRequestDispatcher("/index.jsp").include(request, response);
		}
		else {
			if(map.containsKey(name) && map.containsValue(password)) {
				ssn.setAttribute("name", name);
				out.println("<h3>Welcome "+name+"</h3>");
				chain.doFilter(request, response);
			}
			else {
				out.print("<font color='red'>Invalid UserId And password</font>");
				request.getRequestDispatcher("/index.jsp").include(request, response);
			}
			
		}
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
