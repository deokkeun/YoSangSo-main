package edu.kh.yosangso.board.controller;


import java.util.ArrayList;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;

import edu.kh.yosangso.board.model.service.BoardService;
import edu.kh.yosangso.board.model.vo.Review;

//@WebServlet("")
/*public class SelectQNAServlet extends HttpServlet{
	
	
	int pro = Integer.parseInt(req.getParameter("ProductNo"));
	
	List<Review> qnaList = new ArrayList<>();
	
	try {
		
		BoardService service = new BoardService();

		qnaList = service.selectqna(pro);

		
	} catch(Exception e) {
		e.printStackTrace();
	}
	
	String path = "/WEB-INF/views/product/productDetail.jsp";
	
	req.setAttribute("ReviewList", reviewList );
	
	req.getRequestDispatcher(path).forward(req, resp);
}
}*/

	


