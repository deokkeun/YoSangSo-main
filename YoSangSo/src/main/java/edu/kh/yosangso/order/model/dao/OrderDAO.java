package edu.kh.yosangso.order.model.dao;

import java.io.FileInputStream;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

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
	
	
	
	
	
	
	
	
}
