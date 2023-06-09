package edu.kh.yosangso.refund.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import javax.servlet.http.HttpSession;

import edu.kh.yosangso.member.controller.LoginServlet;
import edu.kh.yosangso.member.model.vo.Member;
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

	public List<Order> orderList(Connection conn, int memberNo) throws Exception{
		List<Order> result = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("orderList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				String orderNo = rs.getString("ORDER_NO");
				String orderDate = rs.getString("ORDER_DATE");
				String address = rs.getString("ADDRESS");
				String productName = rs.getString("PRODUCT_NM");
				int count = rs.getInt("COUNT");
				
				 result.add(new Order(orderNo, orderDate,address, productName, count));
				
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

	public List<Order> refundList(Connection conn, int memberNo, int pageNum, int amount) throws Exception{
		List<Order> result = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("refundList");
			System.out.println("멤버넘" + memberNo);
			
			System.out.println(sql);
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			pstmt.setInt(2, (pageNum-1)*amount);
			pstmt.setInt(3, pageNum*amount);
			
			rs = pstmt.executeQuery();
			
			
			while(rs.next()) {
				String productName = rs.getString("PRODUCT_NM");
				String orderNo = rs.getString("ORDER_NO");
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
			int memberNo = ((Member)session.getAttribute("loginMember")).getMemberNo();
			
			System.out.println("DAO에서 session 확인 : " + session.getAttribute("loginMemberNo") );
			
			String sql = prop.getProperty("refundList");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, memberNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String productName = rs.getString("PRODUCT_NM");
				String orderNo = rs.getString("ORDER_NO");
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

	public List<Order> seeDetail(Connection conn, String orderNo) throws Exception{
	List<Order> list = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("seeDetail");
			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, orderNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				String productName = rs.getString("PRODUCT_NM");
				int price = rs.getInt("PRICE");
				int buyingRate = rs.getInt("BUYING_RATE");
				
				list.add(new Order(productName, price, buyingRate));
			}
			
		}finally {
			
			close(rs);
			close(pstmt);
		}
		
		
		return list;
	}

	public int getTotal(Connection conn, int memberNo) throws Exception{
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("refundTotal");
			
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt("COUNT");
			}
			
		}finally {
			
			close(rs);
			close(pstmt);
		}
		return result;
	}

}
