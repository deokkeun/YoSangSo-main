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

import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.refund.service.RefundService;

@WebServlet("/seeDetail")
public class SeeDetailServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RefundService service = new RefundService();
		List<Order> list = new ArrayList<>();
		String orderNo = req.getParameter("orderNo");
		
		
		
		
		try {
			
			list = service.seeDetail(orderNo);
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		req.setAttribute("detailList", list);
		
		String path = "/WEB-INF/views/refund/seeDetail.jsp";
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		
		dispatcher.forward(req, resp);
	}

	
	
	
}
