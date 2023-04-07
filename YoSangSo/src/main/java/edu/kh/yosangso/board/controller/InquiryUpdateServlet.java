package edu.kh.yosangso.board.controller;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.board.model.service.BoardService;

@WebServlet("/board/inquiryUpdate")
public class InquiryUpdateServlet extends HttpServlet{
	
	/** 게시물 수정 써블릿 
	 *
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 로그인 멤버 객체에 멤버 넘버를 가져와야함 from jsp 
		String updateContent = req.getParameter("textAreaP");
		String boardNo = req.getParameter("boardNo");
		int result = 0;
		
		try {
			// boardservice 불러오기
			BoardService service = new BoardService();
			
			result = service.inquiryUpdate(updateContent,boardNo);
			
			resp.getWriter().print(result);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
