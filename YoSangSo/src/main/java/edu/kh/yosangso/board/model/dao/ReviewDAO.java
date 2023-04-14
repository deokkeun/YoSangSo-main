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
	 * @param memberNo 
	 * @param productNo 
	 * @param orderDetailNo 
	 * @return result
	 * @throws Exception
	 * @author lee
	 */
	public int reviewAdd(Connection conn, String reviewContent, int reviewAddRate, int memberNo, int productNo, int orderDetailNo) throws Exception{
		
		int result = 0;
		
		try {
			// 리뷰등록 SQL 문 작성하기
			String sql = prop.getProperty("reviewAdd");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, reviewContent);
			pstmt.setInt(2, reviewAddRate);
			pstmt.setInt(3, memberNo);
			pstmt.setInt(4, productNo);
			pstmt.setInt(5, orderDetailNo);
			
			result = pstmt.executeUpdate();
			
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	





	/** 리뷰 가져오기 DAO
	 * @param conn
	 * @param pro
	 * @return
	 */
	public List<Review> selectReview(Connection conn, int pro) throws Exception{
		
		List<Review> reviewList = new ArrayList<>();
		
		try {
			 
			String sql = prop.getProperty("selectReview");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pro);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int reviewNo = rs.getInt("REVIEW_NO");
				String reviewContent = rs.getString("REVIEW_CONTENT");
				String reviewDate = rs.getString("REVIEW_DATE");
				int reviewRate = rs.getInt("REVIEW_RATE");
				int memberNo = rs.getInt("MEMBER_NO");
				int productNo = rs.getInt("PRODUCT_NO");
				int orderNo = 0;
				String orderDetailNumber = null;
				String productName = null;
				String memberName = rs.getString("MEMBER_NM");
				
				reviewList.add(
						new Review(reviewNo, reviewContent, reviewDate, reviewRate, memberNo, productNo, orderDetailNumber, productName, memberName)
						);
				System.out.println("DAO : " +reviewList);
				
			}
			
		} finally {
			close(rs);
			close(pstmt);

		}
		return reviewList;
	}




	/** 작성할 리뷰 정보를 가져오는 DAO
	 * @param conn
	 * @param orderNo
	 * @return orderInfo
	 * @throws Exception
	 * @author lee
	 */
	public Order selectReviewInfo(Connection conn, int orderDetailNo) throws Exception {
		
		Order orderInfo = new Order();
		
		try {
			
			String sql = prop.getProperty("selectReviewInfo");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, orderDetailNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				orderInfo.setProductName(rs.getString("PRO_NM"));
				orderInfo.setProductNo(rs.getInt("PRO_NO"));
				orderInfo.setOrderDetailNo(rs.getInt("OD_NO"));
			}
		}finally {
			close(rs);
			close(pstmt);
		}
		return orderInfo;
	}




	/**
	 * @param conn
	 * @param updateContent
	 * @param reviewRate
	 * @param orderDetailNo
	 * @return result
	 * @throws Exception
	 * @author lee
	 */
	public int updateReview(Connection conn, String updateContent, int reviewRate, String orderDetailNo) throws Exception{
		
		int result = 0;
			
		try {
			String sql = prop.getProperty("updateReview");
			
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, updateContent);
			
			pstmt.setInt(2, reviewRate);
			
			pstmt.setString(3, orderDetailNo);
			
			
			result = pstmt.executeUpdate();
			
			
		}finally {
			close(pstmt);
		}
		
		return result;
	}




	/** 리뷰 삭제 DAO 
	 * @param conn
	 * @param orderDetailNo
	 * @return result
	 * @throws Exception
	 * @author lee
	 */
	public int reviewDelete(Connection conn, String orderDetailNo) throws Exception {
		
		int result = 0;
		
		try {
			String sql = prop.getProperty("reviewDelete");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, orderDetailNo);
			
			result = pstmt.executeUpdate();
			
		}finally{
			close(pstmt);
		}
		return result;
	}
}
