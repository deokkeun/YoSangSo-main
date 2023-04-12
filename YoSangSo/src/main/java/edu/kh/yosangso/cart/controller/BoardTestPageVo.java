package edu.kh.yosangso.cart.controller;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder	
public class BoardTestPageVo {
	
	private int startPage; // 시작 페이지
	private int endPage; // 끝 페이지
	private boolean prev, next; // 이전 , 다음 버튼
	private int pageNum; // 현재 조회하는 페이지 번호
	private int amount = 5; // 한 페이지에 보여질 게시글 
	private int total; // 총 게시글 
	
	
	public BoardTestPageVo(int pageNum, int amount, int total) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.total = total;
		
		this.endPage = (int)Math.ceil(this.pageNum * 0.2) * 5;
		
		this.startPage = this.endPage - 5 +1;
		
		int realEnd = (int)Math.ceil(this.total/(double)this.amount);
		System.out.println(realEnd);
		
		if(this.endPage > realEnd) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
		
		
	}
	

}
