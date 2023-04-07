

package edu.kh.yosangso.product.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter // getter 자동 추가
@Setter // setter 자동 추가
@ToString // toString 자동 추가
@NoArgsConstructor // 기본 생성자
@AllArgsConstructor
public class Product {

	private int productNo;
	private String productName;
	private String category;
	private int price;
	private int stock;
	private String productDate;
	private int sellRate;
	private String explain;
	private String productImage;
	private String productImageUrl;
	private String part;
	private int productCount;
	
	
	public Product(int productNo, String productName, String category, int price, int stock, String productDate,
			int sellRate, String explain, String productImage, String productImageUrl, String part) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.category = category;
		this.price = price;
		this.stock = stock;
		this.productDate = productDate;
		this.sellRate = sellRate;
		this.explain = explain;
		this.productImage = productImage;
		this.productImageUrl = productImageUrl;
		this.part = part;
	}


	public Product(String productName, String productDate) {
		super();
		this.productName = productName;
		this.productDate = productDate;
	}


	public Product(int productNo, String productName, int price) {
		super();
		this.productNo = productNo;
		this.productName = productName;
		this.price = price;
	}
	
	
	
	
	
}