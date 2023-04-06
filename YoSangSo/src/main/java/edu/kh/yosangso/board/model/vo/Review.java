package edu.kh.yosangso.board.model.vo;

import java.util.List;

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
public class Review {
	
	private int reviewNo;
	private String reviewContent;
	private String reviewDate;
	private int reviewRate;
	private List<ReviewImage> imageList;
}
