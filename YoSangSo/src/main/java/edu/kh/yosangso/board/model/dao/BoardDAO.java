package edu.kh.yosangso.board.model.dao;

import static edu.kh.yosangso.common.JDBCTemplate.close;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Properties;

import edu.kh.yosangso.board.model.vo.Board;
import edu.kh.yosangso.board.model.vo.Pagination;
import edu.kh.yosangso.board.model.vo.Review;
import edu.kh.yosangso.member.model.vo.Member;

public class BoardDAO {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	public BoardDAO() {
		try {
			prop = new Properties();
			
			String filePath = BoardDAO.class.getResource("/edu/kh/yosangso/sql/board-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}
	}

	/** 문의 등록 DAO
	 * @param conn
	 * @param content
	 * @return
	 * @throws Exception
	 */
	public int inquiryAdd(Connection conn, String content, Member loginMember) throws Exception {
		
		
		int result = 0;
		Board board = new Board();
		
		try {
			
			String sql = prop.getProperty("inquiryAdd");
		
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, content);
			pstmt.setInt(2, loginMember.getMemberNo());
			pstmt.setString(3, loginMember.getMemberName());
			
			result = pstmt.executeUpdate();
			
			
		}finally{
			close(pstmt);
		}
		return result;
	}
	

	/** 게시물 삭제 DAO
	 * @param conn
	 * @param boardNo 
	 * @param inputPw
	 * @return
	 * @throws Exception
	 */
	public int inquiryDelete(Connection conn, String boardNo) throws Exception {
		
		int result = 0;
		
		try {
			
			
			String sql = prop.getProperty("inquiryDelete");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardNo);
			
			result = pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	

	

	/** 게시물 수정 DAO
	 * @param conn
	 * @param updateContent
	 * @param boardNo 
	 * @return
	 * @throws Exception
	 */
	public int inquiryUpdate(Connection conn, String updateContent, String boardNo) throws Exception{
		
		int result = 0;
		// 인쿼리 넘버를 JSP에서 받아와서
		// sql 조건문에 대입 시켜 바꿔야함
		// 지금은 임시로 모든 구문 수정으로 테스트
		
		try {
			String sql = prop.getProperty("inquiryUpdate");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, updateContent);
			pstmt.setString(2, boardNo);
			
			result = pstmt.executeUpdate();
		}finally {
			close(pstmt);
		}
		return result;
	}

	/** 게시물 개수를 받아오는 DAO
	 * @param conn
	 * @return
	 * @throws Exception
	 */
	public int selectInquiryCount(Connection conn) throws Exception{
		int result = 0;
		try {
			String sql = prop.getProperty("inquiryCount");
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sql);
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		}finally {
			close(rs);
			close(stmt);
		}
		
		return result ;
	}

	public List<Board> selectInquiryList(Connection conn, List<Board> inquiryList, Pagination pagination) throws Exception{
		
		
		try {
			
			// 첫 페이지
			// 현재 페이지에서 -1  * 한 페이지에서 보여질 게시글의 수 +1 
			int start = (pagination.getCurrentPage() -1 ) * pagination.getLimit() + 1;
			// 끝
			int end = start + pagination.getLimit() - 1; //  if(start==1) -> end == 5
			
			
			
			
			String sql = prop.getProperty("selectInquirySelect");
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, start);
			pstmt.setInt(2, end);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Board board = new Board();
				//NQUIRY_NO , INQUIRY_CONTENT , INQUIRY_DATE , MEMBER_NM , MEMBER_NO 
				board.setBoardNo(rs.getInt("INQUIRY_NO"));
				board.setBoardContent(rs.getString("INQUIRY_CONTENT"));
				board.setBoardDate(rs.getString("INQUIRY_DATE"));
				board.setMemberName(rs.getString("MEMBER_NM"));
				board.setMemberNo(rs.getInt("MEMBER_NO"));
				inquiryList.add(board);
			}
		}finally {
			close(rs);
			close(stmt);
		}
		return inquiryList;
	}
	
	

	public List<Review> selectqna(Connection conn, int pro) {
		List<Review> reviewList = new ArrayList<>();
		
		try {
			 
			String sql = prop.getProperty("selectReview");
			
			
			
		} finally {
			close(rs);
			close(pstmt);

		}
		return null;
	}
}
