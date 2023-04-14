package edu.kh.yosangso.board.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.close;
import static edu.kh.yosangso.common.JDBCTemplate.commit;
import static edu.kh.yosangso.common.JDBCTemplate.getConnection;
import static edu.kh.yosangso.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.List;

import edu.kh.yosangso.board.model.dao.ReviewDAO;
import edu.kh.yosangso.board.model.vo.Review;
import edu.kh.yosangso.board.model.vo.ReviewImage;
import edu.kh.yosangso.order.model.vo.Order;

public class ReviewService {
	
	private ReviewDAO dao = new ReviewDAO();

	
	
	
	/** 리뷰등록 서비스
	 * @param reviewContent
	 * @param memberNo 
	 * @param productNo 
	 * @param orderDetailNo 
	 * @return result
	 * @author lee
	 */
	public int reviewAdd(String reviewContent, int reviewAddRate, int memberNo, int productNo, int orderDetailNo) throws Exception{
		
		
		
		// 결과 저장용 변수
		int result = 0;
		// 커넥션 연결해주기
		Connection conn = getConnection();
		
		result = dao.reviewAdd(conn, reviewContent, reviewAddRate, memberNo, productNo,orderDetailNo);
		
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
			result = 0;
		}
		
		// 커넥션 반환
		close(conn);
		
		return result;
	}




	/** 리뷰가져오기 service
	 * @param pro
	 * @return
	 * @throws Exception
	 */
	public List<Review> selectReview(int pro) throws Exception{
		
		Connection conn = getConnection();
		
		List<Review> reviewList = dao.selectReview(conn, pro);
		
		close(conn);
		
		return reviewList;
	}




	/** 리뷰 작성 페이지에 어떤 상품을 리뷰 작성하는 지 나타내는 정보를 가져오는 서비스
	 * @param orderNo
	 * @return orderInfo
	 * @author lee
	 */
	public Order selectReviewInfo(int orderDetailNo) throws Exception {
		
		Connection conn = getConnection();
		Order orderInfo = dao.selectReviewInfo(conn, orderDetailNo);
		
		close(conn);
		return orderInfo;
	}




	/** 리뷰 업데이트 서비스
	 * @param orderDetailNo
	 * @param updateContent 
	 * @param reviewRate 
	 * @return result
	 * @author lee
	 */
	public int updateReview(String updateContent, int reviewRate, String orderDetailNo) throws Exception{
		
		Connection conn = getConnection();
		
		
		
		int result = dao.updateReview(conn, updateContent,reviewRate, orderDetailNo);
		
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}




	/** 리뷰 삭제 서비스
	 * @param orderDetailNo
	 * @return result
	 * @author lee
	 */
	public int reviewDelete(String orderDetailNo) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.reviewDelete(conn, orderDetailNo);
		
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		return result;
	}


}
