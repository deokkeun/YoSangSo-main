package edu.kh.yosangso.member.model.service;

import java.sql.Connection;

import static edu.kh.yosangso.common.JDBCTemplate.*;
import edu.kh.yosangso.member.model.dao.MemberDAO;
import edu.kh.yosangso.member.model.vo.Member;

public class MemberService {

	private MemberDAO dao = new MemberDAO();

	
	public Member login(Member mem) throws Exception{
		Connection conn = getConnection();
		
		Member loginMember = dao.login(conn, mem);
		
		close(conn);
		
		return loginMember;
	}


	/** 이메일 중복 검사 Service
	 * @param memberEmail
	 * @return result
	 * @throws Exception
	 */
	public int emailDupCheck(String memberEmail) throws Exception{
		Connection conn = getConnection();
		
		int result = dao.emailDupCheck(conn, memberEmail);
		
		close(conn);
		
		return result;
	}


	/** 인증번호 DB 추가 Service
	 * @param cMessage
	 * @param cNumber
	 * @return result
	 * @throws Exception
	 */
	public int insertCertification(String cMessage, String cNumber) throws Exception {
		Connection conn = getConnection();
		
		// 1) 입력한 이메일과 일치하는 값이 있으면 수정(UPDATE)
		int result = dao.updateCertification(conn, cMessage, cNumber);
		
		// 2) 일치하는 이메일이 없는겨우 -> 처음으로 인증번호를 발급 받음 -> 삽입(INSERT)
		if( result == 0 ) {
			result = dao.insertCertification(conn, cMessage, cNumber);
		}
		
		if(result > 0)	commit(conn);
		else			rollback(conn);
		
		close(conn);
		
		return result;
	}


	/** 인증번호 확인 Service
	 * @param cMessage
	 * @param cNumber
	 * @return result
	 * @throws Exception
	 */
	public int checkNumber(String cMessage, String cNumber) throws Exception {
		Connection conn = getConnection();
		
		int result = dao.checkNumber(conn, cMessage, cNumber);
		
		close(conn);
		
		return result;
	}


	/** 회원가입
	 * @param mem
	 * @return result
	 */
	public int signUpBtn(Member mem) throws Exception {
		Connection conn = getConnection();
		
		int result = dao.signUpBtn(conn, mem);
		
		if(result > 0) commit(conn);
		else rollback(conn);
		
		close(conn);
		
		return result;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
