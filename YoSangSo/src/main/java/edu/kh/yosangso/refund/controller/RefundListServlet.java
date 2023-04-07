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

import edu.kh.yosangso.member.model.vo.Member;
import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.refund.service.RefundService;

@WebServlet("/refundList")
public class RefundListServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RefundService service = new RefundService();
		
		Member member = (Member)req.getSession().getAttribute("loginMember");
		

		List<Order> refundList = new ArrayList<>();
		
		try {
			if(member == null) {
				String filePath = "/WEB-INF/views/refund/refundDone.jsp";
				RequestDispatcher dispatcher = req.getRequestDispatcher(filePath);
				dispatcher.forward(req, resp);
			}
			
			int memberNo = member.getMemberNo();
			
			refundList = service.refundList(memberNo);
			
			System.out.println(refundList);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String filePath = "/WEB-INF/views/refund/refundDone.jsp";
		req.setAttribute("refundList", refundList);
		RequestDispatcher dispatcher = req.getRequestDispatcher(filePath);
		dispatcher.forward(req, resp);
	
	}
}
