package edu.kh.yosangso.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;

import edu.kh.yosangso.common.wrapper.EncryptWrapper;

@WebFilter(filterName="encryptFilter", urlPatterns={"/member/signIn",
													"/member/signUpBtn"})
public class EncryptFilter extends HttpFilter implements Filter{
	public void init(FilterConfig fConfig) throws ServletException{}
	
	public void destroy() {}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException{
		
		HttpServletRequest req = (HttpServletRequest)request;
		
		EncryptWrapper wrapper = new EncryptWrapper(req);

		chain.doFilter(request, response);
	}
	
	
}
