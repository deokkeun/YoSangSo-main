package edu.kh.yosangso.order.model.service;

import java.sql.Connection;
import java.util.List;

import static edu.kh.yosangso.common.JDBCTemplate.*;
import edu.kh.yosangso.order.model.dao.OrderDAO;
import edu.kh.yosangso.product.model.vo.Product;

public class OrderService {

	private OrderDAO dao = new OrderDAO();
	

	public List<Product> payList() throws Exception{
		
		Connection conn = getConnection();
		
		List<Product> payList = dao.payList(conn);
		
		close(conn);
		
		return payList;
	}
	
	
	
	
	
	
	
	
	
	
	
}
