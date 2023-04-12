package edu.kh.yosangso.order.model.service;

import java.sql.Connection;
import java.util.List;

import static edu.kh.yosangso.common.JDBCTemplate.*;
import edu.kh.yosangso.order.model.dao.OrderDAO;
import edu.kh.yosangso.order.model.vo.ApprovalUrl;
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


	/** 주문 정보 추가
	 * @param order
	 * @return
	 */
	public int order(Order order) throws Exception{
		Connection conn = getConnection();
		
		int result = dao.order(conn, order);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	
	/** 주문자 정보 추가 후 구매한 상품 추가
	 * @param order
	 * @return
	 */
	public int orderDetail(Order order) throws Exception{
		System.out.println("orderDetailserivce 들어옴");
		
		Connection conn = getConnection();
		
		int result = dao.orderDetail(conn, order);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		System.out.println("orderDetailserivce 나감");
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


	public List<ApprovalUrl> approvalUrl(int memberNo) throws Exception{
		Connection conn = getConnection();
		
		List<ApprovalUrl> approval = dao.approvalUrl(conn, memberNo);
		
		close(conn);
		
		return approval;
	}

	
	
	
	
	
	
	
	
	
	
}
