package edu.kh.yosangso.board.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.close;
import static edu.kh.yosangso.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.List;

import edu.kh.yosangso.board.model.dao.ReviewListPagingDAO;
import edu.kh.yosangso.board.model.vo.Review;
import edu.kh.yosangso.product.model.vo.Product;

public class ReviewListPagingService  {
	
	Connection conn;
	
	public int getTotal(int memberNo) throws Exception {
		
		ReviewListPagingDAO dao = new ReviewListPagingDAO();
		
		conn=getConnection();
		
		int result= dao.getTotal(conn, memberNo);
		
		close(conn);
		
		return result;
	}

	public List<Product> getList(int memberNo, int pageNum, int amount) throws Exception{
		
		List<Product> list = new ArrayList<>();
		
		ReviewListPagingDAO dao = new ReviewListPagingDAO();
		
		conn=getConnection();
		
		list= dao.getList(conn,memberNo, pageNum, amount);
		
		close(conn);
		
		
		return list;
	}

	public List<Review> getDoneList(int memberNo, int pageNum, int amount) throws Exception{
		
		List<Review> list = new ArrayList<>();
		
		ReviewListPagingDAO dao = new ReviewListPagingDAO();
		
		conn=getConnection();
		
		list= dao.getDoneList(conn,memberNo, pageNum, amount);
		
		close(conn);
		
		
		return list;
	}

	public int getDoneTotal(int memberNo) throws Exception {
		ReviewListPagingDAO dao = new ReviewListPagingDAO();
		
		conn=getConnection();
		
		int result= dao.getDoneTotal(conn, memberNo);
		
		close(conn);
		
		return result;
	}

//	public String getReviews(int memberNo) {
//		
//		ReviewListPagingDAO dao = new ReviewListPagingDAO();
//
//		String reviews = null;
//		
//		conn = getConnection();
//		
//		reviews= dao.getReviews(conn, memberNo);
//		
//		close(conn);
//				
//		
//		return reviews;
//	}

}
