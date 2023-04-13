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
			
			System.out.println("리뷰 평점");
			int reviewRate = Integer.parseInt(req.getParameter("reviewRate"));
			System.out.println(reviewRate);
			
			
			// 리뷰 콘텐트
			System.out.println("리뷰 콘텐트");
			String reviewContent = req.getParameter("reviewContentName");
			System.out.println(reviewContent);
			// 리뷰 평점
			
			// 로그인 멤버 넘버
			HttpSession session = req.getSession();
			Member loginMember = (Member) session.getAttribute("loginMember");
			System.out.println("멤버넘버");
			int memberNo = loginMember.getMemberNo();
			System.out.println(memberNo);
			
			System.out.println("상품번호");
			int productNo = Integer.parseInt(req.getParameter("productNo"));
			System.out.println(productNo);
			
			System.out.println("디테일 넘버");
			int orderDetailNo = Integer.parseInt(req.getParameter("orderDetailNo"));
			System.out.println(orderDetailNo);
			
			result = service.reviewAdd(reviewContent, reviewRate, memberNo, productNo, orderDetailNo);
			
			if(result > 0 ) {
				resp.sendRedirect("reviewList");
			}else {
				System.out.println("실패");
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
}