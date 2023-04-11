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
	private String orderName;
	private String orderPhone;
	private String zipCode;
	private String address;
	private String orderNum;
	private int productNo;
	private String request;
	private int buyingPrice;
	

	public Order(String productName, String orderNo, int price, int buyingRate) {
		super();
		this.productName = productName;
		this.orderNo = orderNo;
		this.price = price;
		this.buyingRate = buyingRate;
	}

	public Order(String productName, String orderNo, String orderDate) {
		super();
		this.productName = productName;
		this.orderNo = orderNo;
		this.orderDate = orderDate;
	}

	
	
	
	/** 주문시 주문테이블 정보 추가(주문번호 생성)
	 * @param memberNo
	 * @param orderNum
	 * @param orderName
	 * @param orderPhone
	 * @param zipCode
	 * @param address
	 */ 
	public Order(int memberNo, String orderNum, String orderName, String orderPhone, String zipCode, String address) {
		this.memberNo = memberNo;
		this.orderNum = orderNum;
		this.orderName = orderName;
		this.orderPhone = orderPhone;
		this.zipCode = zipCode;
		this.address = address;
	}
	
	/** 주문시 주문상세테이블 정보 추가(주문번호로 주문내역 값 INSERT)
	 * @param productNo
	 * @param buyingRate
	 * @param price
	 * @param request
	 * @param orderNo
	 */
	public Order(int productNo, int buyingRate, int buyingPrice, String request, String orderNum) {
		this.productNo = productNo;
		this.buyingRate = buyingRate;
		this.buyingPrice = buyingPrice;
		this.request = request;
		this.orderNum = orderNum;
	}

}