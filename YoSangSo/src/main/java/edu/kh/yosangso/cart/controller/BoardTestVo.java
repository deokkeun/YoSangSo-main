package edu.kh.yosangso.cart.controller;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;


@AllArgsConstructor
@NoArgsConstructor
@Data
@Builder
public class BoardTestVo {
	
	private int boardNo;
	private String writer;
	private String title;
	private String content;

}
