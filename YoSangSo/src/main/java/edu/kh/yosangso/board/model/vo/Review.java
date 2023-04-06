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
	
	public Review(int reviewNo, String reviewContent, String reviewDate, int reviewRate) {
		super();
		this.reviewNo = reviewNo;
		this.reviewContent = reviewContent;
		this.reviewDate = reviewDate;
		this.reviewRate = reviewRate;
	}
	
	
	
}
