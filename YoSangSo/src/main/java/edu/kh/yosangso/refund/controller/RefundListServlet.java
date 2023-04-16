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

import edu.kh.yosangso.board.model.vo.ReviewListPaging;
import edu.kh.yosangso.member.model.vo.Member;
import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.refund.service.RefundService;

@WebServlet("/refund/refundList")
public class RefundListServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		RefundService service = new RefundService();
		
		

		List<Order> refundList = new ArrayList<>();
		
		try {
			Member member = (Member)req.getSession().getAttribute("loginMember");
//			if(member == null) {
//				String filePath = "/WEB-INF/views/refund/refundDone.jsp";
//				RequestDispatcher dispatcher = req.getRequestDispatcher(filePath);
//				dispatcher.forward(req, resp);
//			}
			int pageNum = 1;
			int amount  = 5;
			
			if(req.getParameter("pageNum") != null && req.getParameter("amount") != null) {
				pageNum = Integer.parseInt(req.getParameter("pageNum"));
				amount = Integer.parseInt(req.getParameter("amount"));
			}
			
			
			int memberNo = member.getMemberNo();
			int total = service.getTotal(memberNo);
			
			refundList = service.refundList(memberNo, pageNum, amount);
			
			System.out.println(refundList);
			
			ReviewListPaging pageVo = new ReviewListPaging(pageNum, amount, total);
			
			
			req.getSession().setAttribute("refundList", refundList);
			req.getSession().setAttribute("refundPageVo", pageVo);
			
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new NullPointerException();
		}
		
		String filePath = "/YoSangSo/openJSP/refundDone.jsp";
		resp.sendRedirect(filePath);
	
	}
}
