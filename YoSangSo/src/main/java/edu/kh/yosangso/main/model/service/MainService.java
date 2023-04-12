package edu.kh.yosangso.main.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.*;
import static edu.kh.yosangso.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.List;

import edu.kh.yosangso.main.model.dao.MainDAO;
import edu.kh.yosangso.product.model.vo.Product;

public class MainService {
	
	private MainDAO dao = new MainDAO();

	/** 메인 제품 불러오기 service
	 * @param 
	 * @return mpdList
	 * @throws Exception
	 */
	public List<Product> mainProduct() throws Exception {
		// 1. 커넥션 생성 및 얻어오기
		Connection conn = getConnection();
		
		// 2. DAO 메서드를 호출하여 수행 후 결과 반환 받기
		// -> Service에서 생성한 Connection 객체를 반드시 같이 전달해야한다!!!!
		List<Product> mpdList = dao.mainProduct(conn);
		
		// 3. 커넥션 반환
		close(conn);
		
		
		// 4. 결과반환
		return mpdList;
	}

}



