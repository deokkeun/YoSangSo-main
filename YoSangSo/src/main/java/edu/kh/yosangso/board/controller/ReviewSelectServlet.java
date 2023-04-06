package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/** 사이드 nav 리뷰조회 연결 써블릿
 * @author lee
 *
 */
@WebServlet("/board/reviewList")
public class ReviewSelectServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String path = "/WEB-INF/views/board/reviewList.jsp";
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
