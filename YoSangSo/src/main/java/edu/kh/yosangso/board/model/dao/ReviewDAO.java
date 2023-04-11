package edu.kh.yosangso.board.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import edu.kh.yosangso.board.model.vo.Review;
import edu.kh.yosangso.board.model.vo.ReviewImage;
import edu.kh.yosangso.order.model.vo.Order;
public class ReviewDAO {
	
	Properties prop;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public ReviewDAO() {
		try {
			prop = new Properties();
			
			String filePath = ReviewDAO.class.getResource("/edu/kh/yosangso/sql/review-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	
	

	/** 리뷰 글 등록 DAO
	 * @param conn
	 * @param reviewContent
	 * @return
	 * @throws Exception
	 */
	public int reviewAdd(Connection conn, String reviewContent, int reviewAddRate) throws Exception{
		System.out.println("리뷰작성 DAO 들어옴");
		int result = 0;
		
		try {
			// 리뷰등록 SQL 문 작성하기
			String sql = prop.getProperty("reviewAdd");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, reviewContent);
			pstmt.setInt(2, reviewAddRate);
			
			
			result = pstmt.executeUpdate();
			
		}finally {
			close(pstmt);
		}
		System.out.println("리뷰작성 DAO 나감");
		return result;
	}

	
	

	/** 리뷰이미지 추가 DAO
	 * @param conn
	 * @param image
	 * @return
	 * @throws Exception
	 */
	public int reviewImageAdd(Connection conn, ReviewImage image) throws Exception{
		
		int result = 0;
		System.out.println("리뷰 IMG DAO 진입");
		try {
			String sql = prop.getProperty("reviewImageAdd");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, image.getImageReName());
			pstmt.setString(2,  image.getImageOriginal());
			//pstmt.setInt(3, image.getImageLevel());
//			pstmt.setInt(3, image.getReviewNo());
			
			result = pstmt.executeUpdate();
			System.out.println("리뷰 IMG DAO 업데이트");
		}finally {
			close(pstmt);
		}
		System.out.println("리뷰 IMG DAO 나옴");
		return result;
	}





	public List<Review> selectReview(Connection conn, int pro) {
		
		List<Review> reviewList = new ArrayList<>();
		
		try {
			 
			String sql = prop.getProperty("selectReview");
			
			
			
		} finally {
			close(rs);
			close(pstmt);

		}
		return null;
	}




	/** 작성할 리뷰 정보를 가져오는 DAO
	 * @param conn
	 * @param orderNo
	 * @return
	 * @throws Exception
	 */
	public Order selectReviewInfo(Connection conn, String orderNo) throws Exception {
		
		Order orderInfo = new Order();
		
		try {
			String sql = prop.getProperty("selectReviewInfo");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, orderNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				orderInfo.setProductName(rs.getString("PRO_NM"));
			}
		}finally {
			close(rs);
			close(pstmt);
		}
		return orderInfo;
	}

}
