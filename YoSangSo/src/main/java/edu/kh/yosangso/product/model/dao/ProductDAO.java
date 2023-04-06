package edu.kh.yosangso.product.model.dao;

import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

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
	
	
	
	
	
	
	
	
}
