package edu.kh.yosangso.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.member.model.service.MemberService;
import edu.kh.yosangso.member.model.vo.Member;

@WebServlet("/member/signIn")
public class SignInServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		try {
			String inputEmail = req.getParameter("inputEmail");
			String inputPw = req.getParameter("inputPw");
			
			System.out.println(inputEmail);
			System.out.println(inputPw);
			
			Member mem = new Member();
			
			mem.setMemberEmail(inputEmail);
			mem.setMemberPw(inputPw);
			
			System.out.println(mem);
			
			MemberService service = new MemberService();
			
			// 로그인 정보
			Member loginMember = service.login(mem);
			
			HttpSession session = req.getSession();
			
			if(loginMember != null) {
				// 로그인 정보가 담긴 객체를 세션으로 보냄
				session.setAttribute("loginMember", loginMember);
				
				session.setMaxInactiveInterval(3600);
				
			
				Cookie c = new Cookie("saveId", inputEmail);
				
				if(req.getParameter("saveId") != null) {
					
					c.setMaxAge(60 * 60 * 24 * 30);
					
				} else {
					
					c.setMaxAge(0);
				}
				
//				쿠키 경로?? login페이지로 보내기
				c.setPath("");
				
				resp.addCookie(c);
				
				System.out.println(loginMember);
				
				
			} else { // 로그인 실패 경우
				
				session.setAttribute("message", "아이디 또는 비밀번호가 일치하지 않습니다.");
				
			}
			
			resp.sendRedirect(req.getContextPath());
			
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
	
	}
}
