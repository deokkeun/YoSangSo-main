package edu.kh.yosangso.board.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class ReviewListPaging {
	
	private int startPage; //화면에 보여질 첫 번호
	private int endPage; //화면에 보여질 끝 번호
	private boolean prev, next; //이전, 다음 버튼 유무
	private int pageNum; // 현재 페이지
	private int amount =  3; // 한 페이지에 보여질 리뷰 수 == 3
	private int total; // 총 리뷰 수

	
	public ReviewListPaging(int pageNum, int amount, int total) {
		this.pageNum = pageNum;
		this.amount = amount;
		this.total = total;
		
		this.endPage = (int)Math.ceil(this.pageNum * 0.2) *5;
		
		this.startPage = this.endPage - 5 +1;
		
		int realEnd = (int)Math.ceil(this.total/(double)this.amount);
		
		if(this.endPage > realEnd) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage >1;
		
		this.next = this.endPage < realEnd;
	}
}
