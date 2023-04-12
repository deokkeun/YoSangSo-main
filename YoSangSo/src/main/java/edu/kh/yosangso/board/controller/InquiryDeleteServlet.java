package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.board.model.service.BoardService;

@WebServlet("/board/inquiryDelete")
public class InquiryDeleteServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int result = 0;
		String boardNo = req.getParameter("boardNo");
		
		try {
			
			BoardService service = new BoardService();
			
			result = service.inquiryDelete(boardNo);
			
			
			resp.sendRedirect(req.getContextPath() + "/board/inquiryList"); // 프론트 리다이렉트 location.reload();
			System.out.println("delete 써블릿 나옴");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
