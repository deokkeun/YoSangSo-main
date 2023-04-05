package edu.kh.yosangso.member.model.dao;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

import static edu.kh.yosangso.common.JDBCTemplate.*;
import edu.kh.yosangso.member.model.vo.Member;

public class MemberDAO {

	private Statement stmt;
	private PreparedStatement pstmt;
	private ResultSet rs;
	private Properties prop;
	
	public MemberDAO() {
		try {
			prop = new Properties();
			
			String filePath = MemberDAO.class.getResource("/edu/kh/yosangso/sql/member-sql.xml").getPath();
			
			prop.loadFromXML(new FileInputStream(filePath));
			
		} catch(Exception e) {
			e.printStackTrace();
		}	
	}

	/** 로그인 서비스
	 * @param conn
	 * @param mem
	 * @return
	 */
	public Member login(Connection conn, Member mem) throws Exception {

		Member loginMember = null;
		
		try {
			
			String sql = prop.getProperty("login");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem.getMemberEmail());
			pstmt.setString(2, mem.getMemberPw());
			
			rs = pstmt.executeQuery();
			
			
			if(rs.next()) {
				loginMember = new Member();
				
				loginMember.setMemberNo(rs.getInt("MEMBER_NO"));
				loginMember.setMemberEmail(rs.getString("MEMBER_EMAIL"));
				loginMember.setMemberPw(rs.getString("MEMBER_PW"));
				loginMember.setMemberName(rs.getString("MEMBER_NM"));
				loginMember.setMemberAddress(rs.getString("ADDRESS"));
				loginMember.setMemberTel(rs.getString("PHONE"));
//				loginMember.setProfileImage("profileImage");				
//				loginMember.setEnrollDate(rs.getInt("ENROLLMENT_DATE"));
//				DB 날짜형식은 어떻게 가져오지...
				loginMember.setSecessionFlag(rs.getString("SECESSION"));
				
			}
		} finally {
			close(rs);
			close(pstmt);
		}
		// null or Member
		return loginMember;
		
	}

	/** 이메일 중복검사 DAO
	 * @param conn
	 * @param memberEmail
	 * @return result
	 * @throws Exception
	 */
	public int emailDupCheck(Connection conn, String memberEmail) throws Exception{
		int result = 0;
		
			try {
				
				String sql = prop.getProperty("emailDupCheck");
				
				pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, memberEmail);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					result = rs.getInt(1);
				}
				
			} finally {
				close(rs);
				close(pstmt);
			}
			
		
		return result;
	}

	/** 인증번호, 발급일 수정 DAO
	 * @param conn
	 * @param cMessage
	 * @param cNumber
	 * @return result
	 * @throws Exception
	 */
	public int updateCertification(Connection conn, String cMessage, String cNumber) throws Exception{

		int result = 0;
		
		try {
			
			String sql = prop.getProperty("updateCertification");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cNumber);
			pstmt.setString(2, cMessage);
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	
	/** 인증번호 생성 DAO
	 * @param conn
	 * @param cMessage
	 * @param cNumber
	 * @return result
	 * @throws Exception
	 */
	public int insertCertification(Connection conn, String cMessage, String cNumber) throws Exception {
		int result = 0;
		
		try {
			String sql = prop.getProperty("insertCertification");
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cMessage);
			pstmt.setString(2, cNumber);
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/** 인증번호 확인 DAO
	 * @param conn
	 * @param cMessage
	 * @param cNumber
	 * @return result
	 * @throws Exception
	 */
	public int checkNumber(Connection conn, String cMessage, String cNumber) throws Exception{
		int result = 0;
		
		try {
			String sql = prop.getProperty("checkNumber");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, cMessage);
			pstmt.setString(2, cNumber);
			pstmt.setString(3, cMessage);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
		} finally {
			close(pstmt);
		}
		
		return result;
	}

	/** 회원가입 DAO
	 * @param conn
	 * @param mem
	 * @return result
	 * @throws Exception
	 */
	public int signUpBtn(Connection conn, Member mem) throws Exception {
		int result = 0;
		
		try {
			
			String sql = prop.getProperty("signUpBtn");
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mem.getMemberEmail());
			pstmt.setString(2, mem.getMemberPw());
			
			result = pstmt.executeUpdate();
			
		} finally {
			close(pstmt);
		}
		return result;
	}
	
	
	
	
	
	
	
	
	
}
