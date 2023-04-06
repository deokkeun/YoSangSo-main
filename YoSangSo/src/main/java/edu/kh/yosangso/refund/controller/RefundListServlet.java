package edu.kh.yosangso.refund.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.refund.service.RefundService;

@WebServlet("/refundList")
public class RefundListServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RefundService service = new RefundService();
		
		// 서비스 구현 시 확인을 위해 일시적으로 멤버 파라미터를 보낸다.
		String memberNo = req.getParameter("refundMember");
		
		HttpSession loginMemberSession = req.getSession();
		
		loginMemberSession.setAttribute("loginMemberNo", memberNo);
		
		loginMemberSession.setMaxInactiveInterval(3600);
		
		List<Order> refundList = new ArrayList<>();
		
		try {
			
			
			refundList = service.refundList(loginMemberSession);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String filePath = "/WEB-INF/views/refund/refundDone.jsp";
		req.setAttribute("refundList", refundList);
		RequestDispatcher dispatcher = req.getRequestDispatcher(filePath);
		dispatcher.forward(req, resp);
	
	}
}
