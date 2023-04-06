package edu.kh.yosangso.product.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.*;
import static edu.kh.yosangso.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import edu.kh.yosangso.cart.model.vo.ShoppingCart;
import edu.kh.yosangso.product.model.dao.ProductDAO;
import edu.kh.yosangso.product.model.vo.Product;

public class ProductService {
	

	private ProductDAO dao = new ProductDAO();

	/** 상품 정보 service
	 * @return
	 */
	public List<Product> selectProduct(int productNo) throws Exception{
		Connection conn = getConnection();
		
		List<Product> list = dao.selectProduct(conn, productNo);
		
		close(conn);
		
		return list;
	}

	
	/** 인체페이지 상품 리스트
	 * @param part
	 * @return
	 */
	public List<Product> personList(String part) throws Exception{
		
		Connection conn = getConnection();
		
		List<Product> personList = dao.personList(conn, part);
		
		close(conn);
		
		return personList;
	}

	/** 상세페이지 장바구니 추가 service
	 * @param cart
	 * @return
	 * @throws Exception
	 */
	public int detailCart(ShoppingCart cart) throws Exception {
		
		Connection conn = getConnection();
		
		int result = dao.detailCart(conn, cart);
		
		if(result > 0)	commit(conn);  
		else			rollback(conn);
		
		
		close(conn);
		
		
		return result;
	}

	/** 상세페이지 바로구매 service
	 * @param cart
	 * @return
	 * @throws Exception
	 */
	public int detailPurchase(ShoppingCart cart) throws Exception{
		
		Connection conn = getConnection();
		
		int result = dao.detailPurchase(conn, cart);
		
		if(result > 0)	commit(conn);  
		else			rollback(conn);
		
		
		close(conn);
		
		
		return result;	
	}
	
	
	
	
	

}
