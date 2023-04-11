package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/** 리뷰 업데이트 창 넘어가는 써블릿
 * @author lee
 *
 */
@WebServlet("/board/reviewUpdate")
public class ReviewUpdateServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "/WEB-INF/views/board/reviewUpdate.jsp";
		req.getRequestDispatcher(path).forward(req, resp);
	}

}
