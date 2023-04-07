package edu.kh.yosangso.product.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import edu.kh.yosangso.product.model.vo.Product;

public class SearchingDAO {
	
	Properties prop;
	Statement stmt;
	PreparedStatement pstmt;
	ResultSet rs;
	
	
	
	public SearchingDAO(){
		
		try {
			prop = new Properties();
			
			String filePath = SearchingDAO.class.getResource("/edu/kh/yosangso/sql/searching-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	

	public List<Product> searchingProduct(Connection conn, String query) throws Exception{
		
		List<Product> list = new ArrayList<>();
		
		try {
			
			
			String sql = prop.getProperty("searching");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, query);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int productNo = rs.getInt("PRODUCT_NO");
				String productName = rs.getString("PRODUCT_NM");
				int price = rs.getInt("PRICE");
				
				list.add(new Product(productNo, productName, price));
				
			}
			
			
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return list;
	}

}
