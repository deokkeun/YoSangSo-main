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

@WebServlet("/refundDone")
public class RefundDoneServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String[] orderNoList = req.getParameterValues("orderNo");

		// 서비스 구현 시 일시적으로 memberNo을 부여
		
		HttpSession session = req.getSession();
		
		String memberNo = (String)session.getAttribute("memberNo");
		
		System.out.println(memberNo);
		
		RefundService service = new RefundService();
		List<Order> refundList = new ArrayList<>();
		
		try {
			
			int result = service.refundDone(orderNoList);
			
			if(result>0) {
				
				int refundResult = service.refundOrder(orderNoList);
				
				if(refundResult>0) {
					// 서비스 구현 시 일시적으로 memberNo을 부여
					refundList = service.refundList(memberNo);
					String filePath = "/WEB-INF/views/refund/refundDone.jsp";
					
					System.out.println(refundList);
					
					req.setAttribute("refundList", refundList);
					RequestDispatcher dispatcher = req.getRequestDispatcher(filePath);
					dispatcher.forward(req, resp);
				}else {
					System.out.println("수정실패");
				}
			}else {
				System.out.println("실패");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
