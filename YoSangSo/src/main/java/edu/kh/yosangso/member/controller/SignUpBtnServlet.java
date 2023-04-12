package edu.kh.yosangso.member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.member.model.service.MemberService;
import edu.kh.yosangso.member.model.vo.Member;

@WebServlet("/member/signUpBtn")
public class SignUpBtnServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String memberEmail = req.getParameter("memberEmail");
		String memberPw = req.getParameter("memberPw");
	
		Member mem = new Member();
		
		mem.setMemberEmail(memberEmail);
		mem.setMemberPw(memberPw);
		
		try {
			MemberService service = new MemberService();
			
			int result = service.signUpBtn(mem);
			
			HttpSession session = req.getSession();
			
			if(result > 0) {
				
				session.setAttribute("message", "회원 가입 성공!!");
				
			} else {
				session.setAttribute("message", "회원 가입 실패...");
				
			}
			
			resp.sendRedirect(req.getContextPath());
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	
	}
}
