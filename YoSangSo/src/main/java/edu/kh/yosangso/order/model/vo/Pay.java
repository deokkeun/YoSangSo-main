package edu.kh.yosangso.order.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@NoArgsConstructor
public class Pay {
	
	private String img;
	private String productTitle;
	private int count;
	private int amount;
	
	public Pay(String img, String productTitle, int count, int amount) {
		this.img = img;
		this.productTitle = productTitle;
		this.count = count;
		this.amount = amount;
	}
	
	
	
	
	
}
