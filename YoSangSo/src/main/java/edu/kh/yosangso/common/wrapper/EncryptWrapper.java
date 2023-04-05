package edu.kh.yosangso.common.wrapper;

import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

public class EncryptWrapper extends HttpServletRequestWrapper{

	public EncryptWrapper(HttpServletRequest request) {
		super(request);
	}

	//ServletRequestWrapper 오버라이딩
	@Override
	public String getParameter(String name) {
		String value = null;
		
		switch(name) {
		case "inputPw" :
		case "memberPw" :
		case "currentPw" :
		case "newPw" :
			value = getSha512(super.getParameter(name));
			
			break;
			
		default : value = super.getParameter(name);
		}
		
		return value;
	}
	
	private String getSha512(String pw) {
		String encryptPw = null;
		MessageDigest md = null;
		
	
		try {
			
			md = MessageDigest.getInstance("SHA-512");
			
			byte[] bytes = pw.getBytes(Charset.forName("UTF-8"));
			
			md.update(bytes);
			
			encryptPw = Base64.getEncoder().encodeToString(md.digest());

	
		} catch(NoSuchAlgorithmException e) {
			e.printStackTrace();
		}
		
		return encryptPw;
	}
	
	
}
