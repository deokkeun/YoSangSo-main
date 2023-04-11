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
	private String orderNo;
	private int price;
	private int buyingRate;
	private String refundDate;
	private String orderDate;
<<<<<<< HEAD
	private String address;
	private int count;
	
=======
	private String orderName;
	private String orderPhone;
	private String zipCode;
	private String address;
	private String orderNum;
	

>>>>>>> 8441662da34cbcfc9d827a20c3a106ee4ed8b477
	public Order(String productName, String orderNo, int price, int buyingRate) {
		super();
		this.productName = productName;
		this.orderNo = orderNo;
		this.price = price;
		this.buyingRate = buyingRate;
	}

<<<<<<< HEAD
	public Order(String orderNo, String orderDate, String address, String productName, int count) {
		super();
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.address = address;
		this.productName =productName;
		this.count = count;
		
=======
	public Order(String productName, String orderNo, String orderDate) {
		super();
		this.productName = productName;
		this.orderNo = orderNo;
		this.orderDate = orderDate;
>>>>>>> 8441662da34cbcfc9d827a20c3a106ee4ed8b477
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
	
	
	
	public Order(String productName, int memberNo, String orderNo, int price, int buyingRate, String refundDate, String orderDate) {
		super();
		this.productName = productName;
		this.memberNo = memberNo;
		this.orderNo = orderNo;
		this.price = price;
		this.buyingRate = buyingRate;
		this.refundDate = refundDate;
		this.orderDate = orderDate;
	}


	public Order(String productName, int price, int buyingRate) {
		super();
		this.productName = productName;
		this.price = price;
		this.buyingRate = buyingRate;
		
	}




}