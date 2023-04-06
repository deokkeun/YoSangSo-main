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
public class ReviewImage {
	
	private int imageNo;
	private String imageReName;
	private String imageOriginal;
	private int imageLevel;
	private int reviewdNo;

}
