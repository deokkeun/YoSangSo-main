package edu.kh.yosangso.board.model.service;

import static edu.kh.yosangso.common.JDBCTemplate.close;
import static edu.kh.yosangso.common.JDBCTemplate.commit;
import static edu.kh.yosangso.common.JDBCTemplate.getConnection;
import static edu.kh.yosangso.common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import edu.kh.yosangso.board.model.dao.BoardDAO;
import edu.kh.yosangso.board.model.vo.Board;
import edu.kh.yosangso.board.model.vo.Pagination;
import edu.kh.yosangso.board.model.vo.QNA;
import edu.kh.yosangso.board.model.vo.Review;
import edu.kh.yosangso.member.model.vo.Member;

public class BoardService {

	private BoardDAO dao = new BoardDAO();
	
	/** 문의 등록 서비스
	 * @param content
	 * @return
	 * @throws Exception
	 */
	public int inquiryAdd(String content, Member loginMember) throws Exception {
		
		
		
		Connection conn = getConnection();
		
		int result = 0;
		
		result = dao.inquiryAdd(conn, content, loginMember);
		
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
			result = 0;
		}
		
		close(conn);
		
		
		
		return result;
		
	}

	
	
	/** 문의 삭제 서비스
	 * @param boardNo 
	 * @param inputPw
	 * @return
	 */
	public int inquiryDelete(String boardNo) throws Exception{
		
		System.out.println("delete 서비스 들어옴");
		Connection conn = getConnection();
		int result = 0;
		
		result = dao.inquiryDelete(conn, boardNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
			result = 0;
		}
		
		close(conn);
		System.out.println("delete 서비스 나감");
		return result;
	}


	




	/** 게시물 수정 서비스
	 * @param boardNo 
	 * @param boardNo 
	 * @return
	 */
	public int inquiryUpdate(String updateContent, String boardNo) throws Exception{
		
		Connection conn = getConnection();
		
		int result = 0;
		
		result = dao.inquiryUpdate(conn,updateContent,boardNo);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
			result = 0;
		}
		
		return result;
	}



	public Map<String, Object> selectInquiryList(List<Board> inquiryList, int cp) throws Exception{
		
		Connection conn = getConnection();
		
		int listCount = dao.selectInquiryCount(conn);
		// 게시물 개수를 받아오기
		
		
		
		Pagination pagination = new Pagination(cp, listCount);
		
		inquiryList = dao.selectInquiryList(conn, inquiryList, pagination);
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		map.put("inquiryList", inquiryList);
		map.put("pagination", pagination);
		
		
		
		return map;
	}


	/** QNA 가져오기
	 * @param pro
	 * @return
	 * @throws Exception
	 */
	public List<QNA> selectQNA() throws Exception{
		Connection conn = getConnection();
		
		List<QNA> QNAList = dao.selectQNA(conn);
		
		close(conn);
		
		return QNAList;
	}

}
