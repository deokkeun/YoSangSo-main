package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.board.model.service.BoardService;

@WebServlet("/board/inquiryAdd")
public class InquiryAddServlet extends HttpServlet{
	
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 제목 부분은 css로 내용 일부분만 보이게 할거임.
		
		
		String Content = req.getParameter("inquiryAdd");
		
		
		int result = 0;
		
		try {
			BoardService service = new BoardService();
			
			result = service.inquiryAdd(Content);
			
			resp.getWriter().print(result);
			
			
			System.out.println("갔음");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
}
