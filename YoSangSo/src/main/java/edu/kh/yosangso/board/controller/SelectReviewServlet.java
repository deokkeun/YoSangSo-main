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
import edu.kh.yosangso.board.model.vo.Board;

//@WebServlet("")
public class SelectReviewServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int pro = Integer.parseInt(req.getParameter("ProductNo"));
		List<Board> BoardList = new ArrayList<>();
		
		try {
			
			BoardService service = new BoardService();
			
			//BoardList = service.selectBoard(pro);
			
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		String path = "/WEB-INF/views/product/productDetail.jsp";
		
		req.setAttribute("productList", BoardList);
		
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
