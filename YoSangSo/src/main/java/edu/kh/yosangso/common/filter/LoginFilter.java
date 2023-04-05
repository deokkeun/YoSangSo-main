package edu.kh.yosangso.common.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebFilter(filterName="loginFilter", urlPatterns={""})
public class LoginFilter extends HttpServlet implements Filter {
	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("로그인 필터 생성");
	}

	public void detroy() {
		System.out.println("로그인 필터가 변경되어 파괴 -> 이후 재생성");
	}
	
	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest req = (HttpServletRequest)request;
		HttpServletResponse resp = (HttpServletResponse)response;
		
		HttpSession session = req.getSession();
		
		if(session.getAttribute("loginMember") != null) { // 로그인이 되어있는 경우
			
			chain.doFilter(request, response);
			
		} else { // 로그인이 되어있지 않은 경우
			session.setAttribute("message", "로그인 후 이용해주세요.");
			
			resp.sendRedirect(req.getContextPath());// 메인 페이지로 이동
		}
		
		
		
	}
	
	
	
	
	
	
}
