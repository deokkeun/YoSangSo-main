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
public class Board {
	
	private int boardNo;
	//private String boardTitle; // html 제목 부분 만들어야함.
	private String boardContent;
	private String boardDate;
	private String memberName;
	private int memberNo;
}


