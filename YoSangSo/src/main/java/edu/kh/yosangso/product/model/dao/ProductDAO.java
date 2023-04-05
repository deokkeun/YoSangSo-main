package edu.kh.yosangso.product.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import edu.kh.yosangso.product.model.vo.Product;

public class ProductDAO {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	public ProductDAO() {
		try {
			prop = new Properties();
			
			String filePath = ProductDAO.class.getResource("/edu/kh/yosangso/sql/product-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}	
	}

	public List<Product> selectProduct(Connection conn, int productNo) throws Exception {
		
		List<Product> list = new ArrayList<Product>();
		
		return list;
	}

	/** 인체페이지 상품 리스트
	 * @param conn
	 * @param part
	 * @return
	 * @throws Exception
	 */
	public List<Product> personList(Connection conn, String part) throws Exception{
		
		List<Product> personList = new ArrayList<>();
		
		try {
			
			String sql = prop.getProperty("personList");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, part);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Product product = new Product();
				
				product.setProductImage(rs.getString("PRODUCT_IMAGE"));
				product.setProductName(rs.getString("PRODUCT_NM"));
				
				personList.add(product);
			}
			
		} finally {
			close(rs);
			close(pstmt);
		}
		
		return personList;
	}


	
	
	
	
	

	
	
	
	
	
	
}