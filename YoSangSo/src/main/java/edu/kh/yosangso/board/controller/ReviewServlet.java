package edu.kh.yosangso.board.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import edu.kh.yosangso.board.model.service.ReviewService;
import edu.kh.yosangso.member.model.vo.Member;
// 프로덕트 다오, 리펀드 다오, 셀렉트리뷰 써블릿 주석 풀기
@WebServlet("/board/reviewAdd")
public class ReviewServlet extends HttpServlet{
	// 리뷰 콘텐트, 리뷰 평점, 멤버넘버, 프로덕트 넘버, 오더디테일 넘
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int result = 0;
		ReviewService service = new ReviewService();
		try {
			
			String reviewRateParam = req.getParameter("reviewRate");
			int reviewRate = 0;
			
			// 리뷰 평점 작성 안했을 때,메세지 가게할거임.
			if (reviewRateParam == null) {
			    req.setAttribute("msg", "평점을 입력해주세요.");
			} else {
		        reviewRate = Integer.parseInt(reviewRateParam);
			}

			// 리뷰 콘텐트
			
			String reviewContent = req.getParameter("reviewContentName");
			
			// 리뷰 평점
			
			// 로그인 멤버 넘버
			HttpSession session = req.getSession();
			Member loginMember = (Member) session.getAttribute("loginMember");
			
			int memberNo = loginMember.getMemberNo();
			
			
			
			int productNo = Integer.parseInt(req.getParameter("productNo"));
			
			
			
			int orderDetailNo = Integer.parseInt(req.getParameter("orderDetailNo"));
			
			
			result = service.reviewAdd(reviewContent, reviewRate, memberNo, productNo, orderDetailNo);
			
			if(result > 0 ) {
				resp.sendRedirect("reviewList");
				System.out.println("성공!");
			}else {
				System.out.println("실패");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
			throw new NullPointerException();
		}
	}
	
}