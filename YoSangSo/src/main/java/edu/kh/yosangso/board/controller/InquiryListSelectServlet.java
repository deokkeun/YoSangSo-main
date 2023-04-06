package edu.kh.yosangso.board.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.kh.yosangso.board.model.service.BoardService;
import edu.kh.yosangso.board.model.vo.Board;

/** 사이드 nav 1:1 문의내역 조회 연결 써블릿 
 * @author lee
 *
 */
@WebServlet("/board/inquiryList")
public class InquiryListSelectServlet extends HttpServlet {
	
	/** 게시물 리스크 조회 써블릿
	 * 게시물을 조회하면서, 해당 게시물이 누가 쓴 게시물인지 멤버 네임을 가져올거임
	 * 가져온 네임을 통해서, 그 멤버가 클릭한 자기 게시글에 수정,삭제 버튼이 생기게 할거
	 */
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		BoardService service = new BoardService();
		
		
		try {
			
			int cp = 1;
			
			if(req.getParameter("cp") != null) { // 쿼리 스트링에 cp가 존재한다면,
				
				cp = Integer.parseInt(req.getParameter("cp"));
			}
			
			
			List<Board> inquiryList = new ArrayList<>();
//			HttpSession session = req.getSession();
			
			
			Map<String, Object> map = null;
			
			map = service.selectInquiryList(inquiryList,cp);
			
			req.setAttribute("map", map);
			
			
			
			String path = "/WEB-INF/views/board/inquiryList.jsp";
			req.getRequestDispatcher(path).forward(req, resp);
			
		}catch(Exception e) {
			e.printStackTrace();        
		}
	}
}
