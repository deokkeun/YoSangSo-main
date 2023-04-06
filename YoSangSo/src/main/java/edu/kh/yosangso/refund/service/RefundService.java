package edu.kh.yosangso.refund.service;

import static edu.kh.yosangso.common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.List;

import javax.servlet.http.HttpSession;

import edu.kh.yosangso.order.model.vo.Order;
import edu.kh.yosangso.refund.dao.RefundDAO;

public class RefundService {

	public List<Order> orderList(String memberNo) throws Exception{
		
		
		
		Connection conn = getConnection();
		
		RefundDAO dao = new RefundDAO();
		
		List<Order> result = dao.orderList(conn, memberNo);
		
		
		close(conn);
		
		return result;
	}

	public int refundDone(String[] orderNoList) throws Exception {
		int result= 0;
		
		Connection conn = getConnection();
		
		RefundDAO dao = new RefundDAO();
		
		result= dao.refundDone(conn, orderNoList);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	public int refundOrder(String[] orderNoList) throws Exception{
		int result= 0;
		
		Connection conn = getConnection();
		
		RefundDAO dao = new RefundDAO();
		
		result= dao.refundOrder(conn, orderNoList);
		
		if(result>0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}

	public List<Order> refundList(String memberNo) throws Exception {
		
		Connection conn = getConnection();
		
		
		RefundDAO dao = new RefundDAO();
		
		List<Order> result = dao.refundList(conn, memberNo);

		
		close(conn);
		
		return result;
	}

	public List<Order> refundList(HttpSession session) throws Exception {
		
		Connection conn = getConnection();
		
		System.out.println("service에서 session 확인 : " + session.getAttribute("loginMemberNo") );
		
		RefundDAO dao = new RefundDAO();
		
		List<Order> result = dao.refundList(conn, session);
		
		close(conn);
		
		return result;
	}


}
