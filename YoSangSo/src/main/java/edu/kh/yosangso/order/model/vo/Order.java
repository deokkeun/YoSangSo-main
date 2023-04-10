package edu.kh.yosangso.order.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class Order {
	
	private String productName;
	private int memberNo;
	private int orderNo;
	private int price;
	private int buyingRate;
	private String refundDate;
	private String orderDate;
	private String orderName;
	private String orderPhone;
	private String zipCode;
	private String address;
	private String orderNum;
	
	public Order(String productName, int orderNo, int price, int buyingRate) {
		this.productName = productName;
		this.orderNo = orderNo;
		this.price = price;
		this.buyingRate = buyingRate;
	}
	public Order(String productName, int memberNo, int orderNo, int price, int buyingRate, String refundDate, String orderDate) {
		this.productName = productName;
		this.memberNo = memberNo;
		this.orderNo = orderNo;
		this.price = price;
		this.buyingRate = buyingRate;
		this.refundDate = refundDate;
		this.orderDate = orderDate;
	}

	public Order(int memberNo, String orderNum, String orderName, String orderPhone, String zipCode, String address) {
		this.memberNo = memberNo;
		this.orderNum = orderNum;
		this.orderName = orderName;
		this.orderPhone = orderPhone;
		this.zipCode = zipCode;
		this.address = address;
	}
	

}