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
		String message = null;
		
		try {
			
			BoardService service = new BoardService();
			HttpSession session = req.getSession();
			
			result = service.inquiryDelte();
			
//			if( result > 0) {
//				message = "게시글이 삭제되었습니다.";
//			}else {
//				message = "게시글 삭제를 실패했습니다.";
//			}
//			
//			session.setAttribute("message", message);
			
			resp.sendRedirect(req.getContextPath() + "/board/inquiryList"); // 프론트 리다이렉트 location.reload();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
