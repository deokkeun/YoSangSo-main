package edu.kh.yosangso.order.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.*;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

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

	public List<Product> payList(Connection conn) throws Exception{

		List<Product> payList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("payList");
			
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			while(rs.next()) {
				Product product = new Product();
				
				product.setProductImage(rs.getString("PRODUCT_IMAGE"));
				product.setProductName(rs.getString("PRODUCT_NM"));
				product.setPrice(rs.getInt("PRICE"));
				product.setProductCount(rs.getInt("BUYING_RATE"));
				
				payList.add(product);
			}
			
			System.out.println("result::" + payList);
			
		} finally {
			close(rs);
			close(stmt);
		}
		
		
		
		return payList;
	}
	
	
	
	
	
	
	
	
}
