package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 리뷰 작성창 넘어가는 써블릿
 * @author lee
 *
 */
@WebServlet("/board/reviewWriting")
public class ReviewWritingServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String path = "/WEB-INF/views/board/reviewWriting.jsp";
		String orderNo = req.getParameter("orderNO");
		
		
		req.setAttribute("orderNo", orderNo);
		System.out.println(orderNo);
		
		
		req.getRequestDispatcher(path).forward(req, resp);
	}
}
