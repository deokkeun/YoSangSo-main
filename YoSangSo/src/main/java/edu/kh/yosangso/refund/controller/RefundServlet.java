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

@WebServlet("/refund/refunds")
public class RefundServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		HttpSession session = req.getSession();
		List<Order> orderList = new ArrayList<>();
		
		try {
			Member member = (Member)session.getAttribute("loginMember");
			
			if(member == null) {
				String filePath = "/WEB-INF/views/refund/refund.jsp";
				RequestDispatcher dispatcher = req.getRequestDispatcher(filePath);
				dispatcher.forward(req, resp);
			}
			
			int memberNo = member.getMemberNo();
			
			
			RefundService service = new RefundService();
			orderList = service.orderList(memberNo);
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/views/refund/refund.jsp";

		req.setAttribute("orderList", orderList);
		
		req.getRequestDispatcher(path).forward(req, resp);
		
	}
}
