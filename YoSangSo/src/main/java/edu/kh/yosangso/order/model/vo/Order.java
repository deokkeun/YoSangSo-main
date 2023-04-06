package edu.kh.yosangso.order.model.vo;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Order {
	
	private String productName;
	private String memberNo;
	private int orderNo;
	private int price;
	private int buyingRate;
	private String refundDate;
	private String orderDate;
	
	public Order(String productName, int orderNo, int price, int buyingRate) {
		super();
		this.productName = productName;
		this.orderNo = orderNo;
		this.price = price;
		this.buyingRate = buyingRate;
	}
	
	

}
