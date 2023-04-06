package edu.kh.yosangso.refund.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.InvalidPropertiesFormatException;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpSession;

import edu.kh.yosangso.order.model.vo.Order;

public class RefundDAO {
	
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	Properties prop;
	
	public RefundDAO() {
		
		try {
			prop = new Properties();
			String filePath = RefundDAO.class.getResource("/edu/kh/yosangso/sql/refund-sql.xml").getPath();
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	public List<Order> orderList(Connection conn, String memberNo) throws Exception{
		List<Order> result = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("orderList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String productName = rs.getString("PRODUCT_NM");
				int orderNo = rs.getInt("ORDER_NO");
				int price = rs.getInt("PRICE");
				int buyingRate = rs.getInt("BUYING_RATE");
				
				result.add(new Order(productName, orderNo, price, buyingRate));
				
			}
			
		}finally {
			
			close(rs);
			close(pstmt);
		}
		
		
		return result;
	}

	public int refundDone(Connection conn, String[] orderNoList) throws Exception {
		int result = 0;
		
		for(int i=0; i<orderNoList.length; i++) {
			try {
				
					String sql = prop.getProperty("refundDone");
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, orderNoList[i]);
					result= pstmt.executeUpdate();
					
				
			}finally {
				close(pstmt);
			}
		}
		
		return result;
	}

	public int refundOrder(Connection conn, String[] orderNoList) throws Exception{
		int result = 0;
		for(int i=0; i<orderNoList.length; i++) {
			try {
				
					String sql = prop.getProperty("updateOrder");
					pstmt = conn.prepareStatement(sql);
					pstmt.setString(1, orderNoList[i]);
					result= pstmt.executeUpdate();
				
			}finally {
				close(pstmt);
			}
		}
		
		return result;
	}

	public List<Order> refundList(Connection conn, String memberNo) throws Exception{
		List<Order> result = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("refundList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String productName = rs.getString("PRODUCT_NM");
				int orderNo = rs.getInt("ORDER_NO");
				int price = rs.getInt("PRICE");
				int buyingRate = rs.getInt("BUYING_RATE");
				String refundDate = rs.getString("REFUND_DATE");
				String orderDate = rs.getString("ORDER_DATE");
				
				result.add(new Order(productName, memberNo, orderNo, price, buyingRate, refundDate, orderDate));
			}
			
		}finally {
			
			close(rs);
			close(pstmt);
		}
		
		return result;
	}

	public List<Order> refundList(Connection conn, HttpSession session) throws Exception{
		List<Order> result = new ArrayList<>();
		
		try {
			String memberNo = (String)session.getAttribute("loginMemberNo");
			
			System.out.println("DAO에서 session 확인 : " + session.getAttribute("loginMemberNo") );
			
			String sql = prop.getProperty("refundList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, memberNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String productName = rs.getString("PRODUCT_NM");
				int orderNo = rs.getInt("ORDER_NO");
				int price = rs.getInt("PRICE");
				int buyingRate = rs.getInt("BUYING_RATE");
				String refundDate = rs.getString("REFUND_DATE");
				String orderDate = rs.getString("ORDER_DATE");
				
				result.add(new Order(productName, memberNo, orderNo, price, buyingRate, refundDate, orderDate));
			}
			
		}finally {
			
			close(rs);
			close(pstmt);
		}
		
		return result;
	}

}
