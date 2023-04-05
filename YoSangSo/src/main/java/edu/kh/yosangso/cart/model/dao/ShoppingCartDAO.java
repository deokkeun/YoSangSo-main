package edu.kh.yosangso.cart.model.dao;

import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

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
	
	
	
	
	
	
	
	
	
	
}
