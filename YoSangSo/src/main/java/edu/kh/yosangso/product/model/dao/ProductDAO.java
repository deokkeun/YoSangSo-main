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

import edu.kh.yosangso.cart.model.vo.ShoppingCart;
import static edu.kh.yosangso.common.JDBCTemplate.*;
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


	/**상품 정보 선택 DAO
	 * @param conn
	 * @param productNo
	 * @return
	 * @throws Exception
	 */
	public List<Product> selectProduct(Connection conn, int pro) throws Exception {
		
		List<Product> productList = new ArrayList<>();
		
		try {
			String sql = prop.getProperty("selectProduct");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, pro);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				int productNo = rs.getInt("PRODUCT_NO");
				String productName = rs.getString("PRODUCT_NM");
				String category = rs.getString("CATEGORY");
				int price = rs.getInt("PRICE");
				int stock = rs.getInt("STOCK");
				String productDate = rs.getString("PRODUCT_DATE");
				int sellRate = rs.getInt("SELL_RATE");
				String explain = rs.getString("EXPLAIN");
				String part = rs.getString("PART");
				String img = null;
				String imgurl = null;
				int productCount = 0;

				
				productList.add(
						new Product(productNo, productName, category, price, stock, productDate, sellRate,
								explain, part, img, imgurl )			
						);

			} 
			
			System.out.println(productList);
			
		} finally {
			close(rs);
			close(stmt);
		}
		
		
		return productList;
		

	}

	public int detailCart(Connection conn, ShoppingCart cart) throws Exception{
		
		int result =0;
		
		try {
			String sql = prop.getProperty("DetailAddCart");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, cart.getProductNo());
			pstmt.setInt(2, cart.getBuyingRate());
			pstmt.setInt(3, cart.getMemberNo());
			
			result = pstmt.executeUpdate();
			
			
		} finally{
			close(pstmt);
		}
		
		
		return result;
	}

	public int detailPurchase(Connection conn, ShoppingCart cart)  throws Exception{
		
		int result =0;
		
		try {
			String sql = prop.getProperty("DetailPurchase");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, cart.getProductNo());
			pstmt.setInt(2, cart.getBuyingRate());
			pstmt.setInt(3, cart.getMemberNo());
			
			result = pstmt.executeUpdate();
			
			
		} finally{
			close(pstmt);
		}
		
		
		return result;
	}
	
}
