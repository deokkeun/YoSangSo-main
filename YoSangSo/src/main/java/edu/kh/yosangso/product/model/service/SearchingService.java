package edu.kh.yosangso.product.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.close;
import static edu.kh.yosangso.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import edu.kh.yosangso.product.model.dao.SearchingDAO;
import edu.kh.yosangso.product.model.vo.Product;

public class SearchingService {
	
	Connection conn;

	public List<Product> searchingProduct(String query) throws Exception{
		
		SearchingDAO dao = new SearchingDAO();
		
		conn = getConnection();
		
		List<Product> list = dao.searchingProduct(conn, query );
		
		
		close(conn);
		
		return list;
	}
	
	

}
