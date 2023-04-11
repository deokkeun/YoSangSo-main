package edu.kh.yosangso.board.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class QNA {
	
	private int inquiryNO;
	private String inquiryContecnt;
	private String inquirtDate;
	private int memberNo;
	private String memberName;

}
