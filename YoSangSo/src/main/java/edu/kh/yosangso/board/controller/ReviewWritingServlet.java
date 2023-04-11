package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.board.model.service.ReviewService;
import edu.kh.yosangso.order.model.vo.Order;

/** 리뷰 작성창 넘어가는 써블릿
 * @author lee
 *
 */
@WebServlet("/board/reviewWriting")
public class ReviewWritingServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "/WEB-INF/views/board/reviewWriting.jsp";
		Order orderInfo = null;
		ReviewService service = new ReviewService();
		
		try {
			String orderNo = req.getParameter("orderNo");
			
			orderInfo = service.selectReviewInfo(orderNo);
			
			req.setAttribute("orderNo", orderNo);
			req.setAttribute("orderInfo", orderInfo);
			req.getRequestDispatcher(path).forward(req, resp);
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}
}
