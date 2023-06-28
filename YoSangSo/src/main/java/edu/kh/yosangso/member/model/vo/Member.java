package edu.kh.yosangso.member.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

// Lombok 라이브러리

@Getter // getter 자동 추가
@Setter // setter 자동 추가
@ToString // toString 자동 추가
@NoArgsConstructor // 기본 생성자
public class Member {
	
	private int memberNo;
	private String memberEmail;
	private String memberPw;
	private String memberName;
	private String memberCert;
	private String memberTel;
	private String memberAddress;
	private int memberZipCode;
//	private String profileImage;
//	private date enrollDate;
	private String secessionFlag;

}
