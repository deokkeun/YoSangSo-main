package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.board.model.service.ReviewService;


@WebServlet("/board/reviewDelete")
public class ReviewDeleteServlet extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ReviewService service = new ReviewService();
		int result = 0;
		
		try {
			
			String orderDetailNo = req.getParameter("orderDetailNo");
			
			result = service.reviewDelete(orderDetailNo);
			
			
			if(result > 0) {
				resp.sendRedirect("reviewDoneList");
				System.out.println("리뷰 삭제 성공");
			}else {
				System.out.println("리뷰 삭제 실패");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
