package edu.kh.yosangso.board.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import edu.kh.yosangso.board.model.dao.ReviewDAO;
import edu.kh.yosangso.board.model.vo.Review;
import edu.kh.yosangso.board.model.vo.ReviewImage;

public class ReviewService {
	
	private ReviewDAO dao = new ReviewDAO();

	
	
	
	/** 리뷰등록 서비스 + 이미지
	 * @param reviewContent
	 * @return
	 */
	public int reviewAdd(String reviewContent, int reviewAddRate, List<ReviewImage> imageList) throws Exception{
		
		
		System.out.println("리뷰작성 서비스 들어옴");
		// 결과 저장용 변수
		int result = 0;
		
		
		// 커넥션 연결해주기
		Connection conn = getConnection();
		
		result = dao.reviewAdd(conn, reviewContent, reviewAddRate);
		
		if(result > 0 ) {
			System.out.println("리뷰 이미지 if문 진입");
			for(ReviewImage image : imageList) {
				if(result == 0) { // 이미지 삽입 실패
					System.out.println("리뷰 이미지 if문 reulst == 0 진입");
					break;
				}else {
					System.out.println("리뷰 이미지 else문 진입");
					result = dao.reviewImageAdd(conn,image);
				}
			}
		}
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
			result = 0;
		}
		
		// 커넥션 반환
		close(conn);
		System.out.println("리뷰작성 서비스 나감");
		return result;
	}




	public List<Review> selectReview(int pro) throws Exception{
		
		Connection conn = getConnection();
		
		List<Review> reviewList = dao.selectReview(conn, pro);
		
		close(conn);
		
		return reviewList;
	}




}
