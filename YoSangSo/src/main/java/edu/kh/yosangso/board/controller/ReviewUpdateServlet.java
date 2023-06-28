package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.board.model.service.ReviewService;


/** 리뷰 업데이트 창 넘어가는 써블릿
 * @author lee
 *
 */
@WebServlet("/board/reviewUpdate")
public class ReviewUpdateServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String path = "/WEB-INF/views/board/reviewUpdate.jsp";
		
		try {
			
			String productName = req.getParameter("productName");
			int orderDetailNo = Integer.parseInt(req.getParameter("orderDetailNo"));
			
			req.setAttribute("orderDetailNo", orderDetailNo);
			req.setAttribute("productName", productName);
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		req.getRequestDispatcher(path).forward(req, resp);
	}

	
	  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  	
		  ReviewService service = new ReviewService();
		  int result = 0;
		  
		  try {
			  
			 
			  String orderDetailNo = req.getParameter("orderDetailNo");
			  int reviewRate = Integer.parseInt(req.getParameter("reviewRate"));
			  String updateContent = req.getParameter("reviewUpdateContent");
			  
			  
			  result = service.updateReview(updateContent,reviewRate,orderDetailNo);
			  
			  if(result > 0) {
				  resp.sendRedirect("reviewList");
				  System.out.println("수정성공!");
			  }else {
				  System.out.println("수정 실패");
			  }
			  
		  }catch(Exception e) {
			  e.printStackTrace();
		  }
	}
	  
}
