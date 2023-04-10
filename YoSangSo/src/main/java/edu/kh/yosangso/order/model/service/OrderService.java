package edu.kh.yosangso.order.model.service;

import java.sql.Connection;
import java.util.List;

import static edu.kh.yosangso.common.JDBCTemplate.*;
import edu.kh.yosangso.order.model.dao.OrderDAO;
import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.product.model.vo.Product;

public class OrderService {

	private OrderDAO dao = new OrderDAO();
	

	/** 구매하는 카트 목록 불러오기
	 * @return
	 * @throws Exception
	 */
	public List<Product> payList(int memberNo) throws Exception{
		
		Connection conn = getConnection();
		
		List<Product> payList = dao.payList(conn, memberNo);
		
		close(conn);
		
		return payList;
	}


	/** 주문 정보 입력
	 * @param order
	 * @return
	 */
	public int order(Order order) throws Exception{
		Connection conn = getConnection();
		
		int result = dao.order(conn, order);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		return result;
	}


	/** 구매하는 상품이 1개일 경우
	 * @param productNo
	 * @return
	 * @throws Exception
	 */
	public Product payOneList(int productNo) throws Exception{
		Connection conn = getConnection();
		
		Product product = dao.payOneList(conn, productNo);
		
		close(conn);
		
		return product;
	}
	
	
	
	
	
	
	
	
	
	
	
}
