package edu.kh.yosangso.cart.controller;
import static edu.kh.yosangso.common.JDBCTemplate.close;
import static edu.kh.yosangso.common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class BoardTestPageDAO {
	Connection conn;
	PreparedStatement pstmt;
	Statement stmt;
	ResultSet rs;
	
	
	public List<BoardTestVo> getList(int pageNum, int amount){
		List<BoardTestVo> list = new ArrayList<>();
		
		String sql = "select * from (select rownum rn, a.* from (select * from testboard order by board_no desc) a ) where rn > ? and rn <= ?";
		
		try {
			conn = getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, (pageNum - 1) * amount);
			pstmt.setInt(2, pageNum * amount);
			
			System.out.println((pageNum - 1) * amount);
			System.out.println(pageNum * amount);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				// 한바퀴 회전당 VO를 하나씩 생성
				BoardTestVo vo = new BoardTestVo();
				
				vo.setBoardNo(rs.getInt("BOARD_NO"));
				vo.setWriter(rs.getString("WRITER"));
				vo.setContent(rs.getString("CONTENT"));
				vo.setTitle(rs.getString("TITLE"));
				
				list.add(vo);
			}

		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			close(conn);
		}

		return list;
	
	}

	public int getTotal() {
		int result = 0;
		
		try {
			String sql = "SELECT COUNT(*) TOTAL FROM TESTBOARD";
			conn = getConnection();
			stmt = conn.createStatement();
			rs= stmt.executeQuery(sql);
			
			if(rs.next()) {
				result = rs.getInt("TOTAL");
			}
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			
			close(rs);
			close(stmt);
			close(conn);
		}
		
		
		return result;
	}
}
