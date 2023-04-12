package edu.kh.yosangso.main.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import edu.kh.yosangso.board.model.dao.ReviewDAO;
import edu.kh.yosangso.product.model.vo.Product;

public class MainDAO {

	// JDBC 객체를 참조하기 위한 참조변수 선언
	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
  
  
  	// dao 기본생성자 생성
  	public MainDAO() {
  	
  		try {
			prop = new Properties();   // Properties 객체 생성
			String filePath = MainDAO.class.getResource("/edu/kh/yosangso/sql/main-sql.xml").getPath();
            
			prop.loadFromXML(new FileInputStream(filePath));	
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	/** 메인페이지 안 전제품조회 dao
	 * @param conn
	 * @return mpdList
	 * @throws Exception
	 */
	public List<Product> mainProduct(Connection conn) throws Exception {
		
		List<Product> mpdList = new ArrayList<>();

		try {
			
			String sql = prop.getProperty("mainProduct");
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Product product = new Product();
				
				product.setProductName(rs.getString("PRODUCT_NM"));
				product.setPrice(rs.getInt("PRICE"));
				product.setIngredient(rs.getString("INGREDIENT"));
				product.setProductNo(rs.getInt("PRODUCT_NO"));	
				mpdList.add(product);
			}
		 
				System.out.println(mpdList);
			
		} finally {
			close(rs);
			close(pstmt);
		}
			
		return mpdList;
		
	}
	/** 메인페이지 안 베스트 조회 dao
	 * @param conn
	 * @return mbpdList
	 * @throws Exception
	 */
	public List<Product> bPartProduct (Connection conn) throws Exception {
		
		List<Product> mbpdList = new ArrayList<>();

		try {
			
			String sql = prop.getProperty("bPartProduct");
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Product product = new Product();
				
				product.setProductName(rs.getString("PRODUCT_NM"));
				product.setPrice(rs.getInt("PRICE"));
				product.setIngredient(rs.getString("INGREDIENT"));
				product.setProductNo(rs.getInt("PRODUCT_NO"));	
					
				mbpdList.add(product);
			}
		 
				System.out.println(mbpdList);
			
		} finally {
			close(rs);
			close(pstmt);
		}
			
		return mbpdList;
	}
	
	
	
	/** 메인페이지 안 신제품 조회 dao
	 * @param conn
	 * @return mnpdList
	 * @throws Exception
	 */
	public List<Product> nPartProduct(Connection conn) throws Exception {
		
		List<Product> mnpdList = new ArrayList<>();

		try {
			
			String sql = prop.getProperty("nPartProduct");
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				Product product = new Product();
				
				product.setProductName(rs.getString("PRODUCT_NM"));
				product.setPrice(rs.getInt("PRICE"));
				product.setIngredient(rs.getString("INGREDIENT"));
				product.setProductNo(rs.getInt("PRODUCT_NO"));	
					
				mnpdList.add(product);
			}
		 
				System.out.println(mnpdList);
			
		} finally {
			close(rs);
			close(pstmt);
		}
			
		return mnpdList;
	}
	
	

}
