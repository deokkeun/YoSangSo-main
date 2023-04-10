package edu.kh.yosangso.order.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.product.model.vo.Product;

public class OrderDAO {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	public OrderDAO() {
		try {
			prop = new Properties();
			
			String filePath = OrderDAO.class.getResource("/edu/kh/yosangso/sql/order-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}	
	
	}

	public List<Product> payList(Connection conn, int memberNo) throws Exception{

		List<Product> payList = new ArrayList<>();
		
		System.out.println(memberNo);
		
		try {
			String sql = prop.getProperty("payList");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, memberNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Product product = new Product();
				
				product.setProductImage(rs.getString("PRODUCT_IMAGE"));
				product.setProductName(rs.getString("PRODUCT_NM"));
				product.setPrice(rs.getInt("PRICE"));
				product.setProductCount(rs.getInt("BUYING_RATE"));
				
				payList.add(product);
			}
			
		} finally {
			close(rs);
			close(stmt);
		}
		
		return payList;
	}
	
	

	public int order(Connection conn, Order order) throws Exception{

		int result = 0;
		
		try {
			String sql = prop.getProperty("pay");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, order.getMemberNo());
			pstmt.setString(2, order.getOrderNum());
			pstmt.setString(3, order.getOrderName());
			pstmt.setString(4, order.getOrderPhone());
			pstmt.setString(5, order.getZipCode());
			pstmt.setString(6, order.getAddress());
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	
	
	/** 1개 상품만 구매시
	 * @param conn
	 * @param productNo
	 * @return
	 * @throws Exception
	 */
	public Product payOneList(Connection conn, int productNo) throws Exception {
		Product product = null;
		
		System.out.println("payOneList");
		try {
			
			String sql = prop.getProperty("payOneList");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, productNo);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				product = new Product();
				
				product.setProductImage(rs.getString("PRODUCT_IMAGE"));
				product.setProductName(rs.getString("PRODUCT_NM"));
				product.setPrice(rs.getInt("PRICE"));
				
			}
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return product;
	}

	
	
	
	
	
	
	
	
}
