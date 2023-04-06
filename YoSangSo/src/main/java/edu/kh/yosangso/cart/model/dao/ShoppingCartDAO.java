package edu.kh.yosangso.cart.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import edu.kh.yosangso.cart.model.vo.ShoppingCart;

public class ShoppingCartDAO {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	
	public ShoppingCartDAO() {
		try {
			prop = new Properties();
			
			String filePath = ShoppingCartDAO.class.getResource("/edu/kh/yosangso/sql/cart-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}	
	}


	public List<ShoppingCart> shoppingCart(Connection conn, String userNum) throws Exception{
		
		List<ShoppingCart> cartList = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("cart");
			
			pstmt = conn.prepareStatement(sql); 
			
			pstmt.setString(1, userNum);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				int cartNo = rs.getInt("CART_NO");
				int productNo = rs.getInt("PRODUCT_NO");
				String productName = rs.getString("PRODUCT_NM");
				int memberNo =rs.getInt("MEMBER_NO");
				int price = rs.getInt("PRICE");
				int buyingRate = rs.getInt("BUYING_RATE");
			
				cartList.add(new ShoppingCart(cartNo ,memberNo ,productNo,  price, buyingRate, productName));	
				
			}
			
		}finally {
			close(rs);
			close(pstmt);
		}
		return cartList ;
	}


	public int deleteCart(Connection conn, String memberNo) throws Exception {
		int result=0;
		
		try {
			String sql = prop.getProperty("deleteCart");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, memberNo);
			
			result = pstmt.executeUpdate();
			
		}finally {
			close(pstmt);
		}
		
		return result;
	}


	public int minusCount(Connection conn, String memberNo, int count, String productNo) throws Exception {
		
		int result=0;
		
		try {
			String sql = prop.getProperty("updateCount");
			pstmt = conn.prepareStatement(sql);
			count = count-1;
			pstmt.setInt(1, count);
			pstmt.setString(2, memberNo);
			pstmt.setString(3, productNo);
			
			result = pstmt.executeUpdate();
			
		}finally {
			close(pstmt);
		}

		return result;
	}


	public int plusCount(Connection conn, String memberNo, int count, String productNo) throws Exception {
		
		int result=0;
		
		try {
			String sql = prop.getProperty("updateCount");
			pstmt = conn.prepareStatement(sql);
			count = count+1;
			pstmt.setInt(1, count);
			pstmt.setString(2, memberNo);
			pstmt.setString(3, productNo);
			
			result = pstmt.executeUpdate();
			
		}finally {
			close(pstmt);
		}

		return result;
		
	}
	
	
}
