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
import edu.kh.yosangso.member.model.vo.Member;
import edu.kh.yosangso.product.model.vo.Product;

@WebServlet("/member/reviewList")
public class ReviewListPagingServlet extends HttpServlet {
	

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
		
		List<Product> list = service.getList(memberNo,pageNum, amount);
		
		System.out.println(total);
		System.out.println(list);
			
		
		req.setAttribute("total", total);
		
		req.setAttribute("list", list);
		
		
		
		String path = "/WEB-INF/views/board/reviewList.jsp";
		
		RequestDispatcher dispatcher = req.getRequestDispatcher(path);
		
		dispatcher.forward(req, resp);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}
