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
import edu.kh.yosangso.product.model.vo.Product;

public class ReviewListPagingDAO {
	
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	Properties prop;
	
public ReviewListPagingDAO() {
		
		try {
			prop = new Properties();
			String filePath = ReviewListPagingDAO.class.getResource("/edu/kh/yosangso/sql/reviewPaging-sql.xml").getPath();
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	public int getTotal(Connection conn, int memberNo ) throws Exception{
		int result =0;
		
		try {
			String sql = prop.getProperty("getTotal");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result= rs.getInt("TOTAL");
			}
			
		}finally {
			close(rs);
			close(pstmt);
		}
		return result;
	}

	public List<Product> getList(Connection conn, int memberNo, int pageNum, int amount) throws Exception{
		
		List<Product> list = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, (pageNum-1) * amount);
			pstmt.setInt(3, pageNum * amount);
			
			rs= pstmt.executeQuery();
					
			while(rs.next()) {
				
				String productName = rs.getString("PRODUCT_NM");
				String orderDate = rs.getString("ORDER_DATE");
						
				list.add(new Product(productName, orderDate));
			}
			
		}finally {
			
		}
		return list;
	}

	public List<Review> getDoneList(Connection conn, int memberNo, int pageNum, int amount) throws Exception {
		
		List<Review> list = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("getDoneList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, (pageNum-1) * amount);
			pstmt.setInt(3, pageNum * amount);
			
			rs= pstmt.executeQuery();
					
			while(rs.next()) {
				
				String reviewContent = rs.getString("REVIEW_CONTENT");
				int productNo = rs.getInt("PRODUCT_NO");
				int orderNo = rs.getInt("ORDER_NO");
				String productName= rs.getString("PRODUCT_NM");
			
						
				list.add(new Review(reviewContent, memberNo,productNo,orderNo, productName));
			}
			
		}finally {
			
		}
		return list;
	}

	public int getDoneTotal(Connection conn, int memberNo) throws Exception{
		int result =0;
		
		try {
			String sql = prop.getProperty("getDoneTotal");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result= rs.getInt("TOTAL");
			}
			
		}finally {
			close(rs);
			close(pstmt);
		}
		return result;
	}

//	public String getReviews(Connection conn, int memberNo) throws Exception{
//		String reviews =null;
//		
//		try {
//			
//		}finally {
//			
//		}
//		
//		return null;
//	}
}
