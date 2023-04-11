package edu.kh.yosangso.order.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.member.model.vo.Member;
import edu.kh.yosangso.order.model.service.OrderService;
import edu.kh.yosangso.order.model.vo.ApprovalUrl;

@WebServlet("/order/payResult")
public class PayResultServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		List<ApprovalUrl> approval = null;
		
		try {
			OrderService service = new OrderService();
			
			HttpSession session = req.getSession();
			Member loginMember = (Member)session.getAttribute("loginMember");
			int memberNo = loginMember.getMemberNo();
			
			System.out.println(memberNo);
			
			System.out.println("payResult Servlet 들어옴");
			
			approval = service.approvalUrl(memberNo);
			
//			req.setAttribute("approval", approval);
//			String path = "/WEB-INF/views/order/approval_url.jsp";
//			req.getRequestDispatcher(path).forward(req, resp);
			
			if(approval != null) {
				System.out.println(approval.get(0).getOrderNo());
				System.out.println(approval.get(0).getOrderDate());
				System.out.println(approval.get(0).getDeliveryDate());
				System.out.println(approval.get(0).getBuyingRate());
				System.out.println(approval.get(0).getPrice());
				System.out.println(approval.get(0).getProductName());
				
			}

			
			System.out.println("payResult Servlet 나감");
			req.setAttribute("approval", approval);

			String path = "/WEB-INF/views/order/approval_url.jsp";
			
			req.getRequestDispatcher(path).forward(req, resp);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

}
