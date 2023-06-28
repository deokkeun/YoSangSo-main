package edu.kh.yosangso.order.model.vo;

public class ApprovalUrl {
	private String orderNo;
	private String orderDate;
	private String deliveryDate;
	private int buyingRate;
	private int price;
	private String productName;
	
	
	
	public ApprovalUrl() {}
	
	public ApprovalUrl(String orderNo, String orderDate, String deliveryDate, int buyingRate, int price,
			String productName) {
		super();
		this.orderNo = orderNo;
		this.orderDate = orderDate;
		this.deliveryDate = deliveryDate;
		this.buyingRate = buyingRate;
		this.price = price;
		this.productName = productName;
	}
	
	
	public String getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}
	public String getOrderDate() {
		return orderDate;
	}
	public void setOrderDate(String orderDate) {
		this.orderDate = orderDate;
	}
	public String getDeliveryDate() {
		return deliveryDate;
	}
	public void setDeliveryDate(String deliveryDate) {
		this.deliveryDate = deliveryDate;
	}
	public int getBuyingRate() {
		return buyingRate;
	}
	public void setBuyingRate(int buyingRate) {
		this.buyingRate = buyingRate;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}

	@Override
	public String toString() {
		return "ApprovalUrl [orderNo=" + orderNo + ", orderDate=" + orderDate + ", deliveryDate=" + deliveryDate
				+ ", buyingRate=" + buyingRate + ", price=" + price + ", productName=" + productName + "]";
	}
	
	
	
	
	
}
