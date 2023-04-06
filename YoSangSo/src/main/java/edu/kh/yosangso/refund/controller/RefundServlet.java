package edu.kh.yosangso.refund.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.refund.service.RefundService;

@WebServlet("/refund")
public class RefundServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String memberNo = req.getParameter("memberNo");
		HttpSession session = req.getSession();
		session.setAttribute("memberNo", memberNo);
		
		List<Order> orderList = new ArrayList<>();
		
		try {
			
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
