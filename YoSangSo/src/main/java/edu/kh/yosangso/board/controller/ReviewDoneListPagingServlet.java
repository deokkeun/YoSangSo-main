package edu.kh.yosangso.board.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.board.model.service.ReviewListPagingService;
import edu.kh.yosangso.board.model.vo.Review;
import edu.kh.yosangso.board.model.vo.ReviewListPaging;
import edu.kh.yosangso.member.model.vo.Member;
import edu.kh.yosangso.product.model.vo.Product;

@WebServlet("/board/reviewDoneList")
public class ReviewDoneListPagingServlet extends HttpServlet {
	

	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
	
		int pageNum = 1;
		int amount = 3;
	
		try {
			
			Member loginMember = (Member)req.getSession().getAttribute("loginMember");
			int memberNo = loginMember.getMemberNo();
	
		if(req.getParameter("pageNum") != null && req.getParameter("amount") != null) {
			pageNum = Integer.parseInt(req.getParameter("pageNum"));
			amount = Integer.parseInt(req.getParameter("amount"));
		}
	
		ReviewListPagingService service = new ReviewListPagingService();
		
		int total = service.getTotal(memberNo);
		
		int doneTotal = service.getDoneTotal(memberNo);
		
//		String review = service.getReviews(memberNo);
		
		List<Review> list = service.getDoneList(memberNo,pageNum, amount);
		ReviewListPaging pageVo = new ReviewListPaging(pageNum, amount, doneTotal);
		
		
		
		req.setAttribute("pageVo", pageVo);
		
		req.setAttribute("list", list);
		
		req.setAttribute("total", total);
		
		req.setAttribute("doneTotal", doneTotal);
		
		
		String path = "/WEB-INF/views/board/reviewDoneList.jsp";
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		
		dispatcher.forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
