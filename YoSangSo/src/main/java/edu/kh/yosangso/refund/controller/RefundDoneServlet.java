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

@WebServlet("/refund/refundDone")
public class RefundDoneServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String[] orderNoList = req.getParameterValues("orderNo");

		
		HttpSession session = req.getSession();
		RefundService service = new RefundService();
		List<Order> refundList = new ArrayList<>();
		
		try {
			
			Member member = (Member)session.getAttribute("loginMember");
			
			String filePath = "/YoSangSo/openJSP/refundDone.jsp";
			
			int memberNo = member.getMemberNo();
			
			
			int result = service.refundDone(orderNoList);
			
			if(result>0) {
				
				int refundResult = service.refundOrder(orderNoList);
				
				if(refundResult>0) {
					// 서비스 구현 시 일시적으로 memberNo을 부여
					
					int pageNum = 1;
					int amount  = 5;
					
					if(req.getParameter("pageNum") != null && req.getParameter("amount") != null) {
						pageNum = Integer.parseInt(req.getParameter("pageNum"));
						amount = Integer.parseInt(req.getParameter("amount"));
					}
					
					int total = service.getTotal(memberNo);
					
					ReviewListPaging pageVo = new ReviewListPaging(pageNum, amount, total);
					
					refundList = service.refundList(memberNo, pageNum, amount);
					
					req.getSession().setAttribute("refundPageVo", pageVo);
					
					
					req.getSession().setAttribute("refundList", refundList);

					resp.sendRedirect(filePath);
				}else {
					System.out.println("수정실패");
					
					System.out.println(refundList);
					
					req.getSession().setAttribute("refundList", refundList);

					
					resp.sendRedirect(filePath);
				}
			}else {
				System.out.println("실패");
				resp.sendRedirect(filePath);
			}
		}catch(Exception e) {
			e.printStackTrace();
			throw new NullPointerException();
		}
	}
}
