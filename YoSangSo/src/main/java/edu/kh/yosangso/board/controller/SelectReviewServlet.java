package edu.kh.yosangso.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.board.model.service.BoardService;
import edu.kh.yosangso.board.model.service.ReviewService;
import edu.kh.yosangso.board.model.vo.Board;
import edu.kh.yosangso.board.model.vo.Review;

//@WebServlet("/product/productDetail")
public class SelectReviewServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int pro = Integer.parseInt(req.getParameter("ProductNo"));
		
		System.out.println(pro);
		
		List<Review> reviewList = new ArrayList<>();
		
		try {
			
			ReviewService service = new ReviewService();

			reviewList = service.selectReview(pro);

			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		System.out.println(" 서블릿:" + reviewList);
		
		String path = "/WEB-INF/views/product/productDetail.jsp";
		
		req.setAttribute("ReviewList", reviewList );
		
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
