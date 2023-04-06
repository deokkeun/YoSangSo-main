package edu.kh.yosangso.cart.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import edu.kh.yosangso.cart.model.dao.ShoppingCartDAO;
import edu.kh.yosangso.cart.model.vo.ShoppingCart;

public class ShoppingCartService {
	
	ShoppingCartDAO dao = new ShoppingCartDAO();

	public List<ShoppingCart> shoppingCart(String userNum) throws Exception{
		
		Connection conn = getConnection();
		
		List<ShoppingCart> cartList = dao.shoppingCart(conn, userNum);
		
		
		close(conn);
		
		return cartList;
	}

	public int deleteCart(String memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.deleteCart(conn, memberNo);
			
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int minusCount(String memberNo, int count, String productNo) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.minusCount(conn, memberNo, count, productNo);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		return result;
	}

	public int plusCount(String memberNo, int count, String productNo) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.plusCount(conn, memberNo, count, productNo);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		return result;
	}

	
	
	
	
}
