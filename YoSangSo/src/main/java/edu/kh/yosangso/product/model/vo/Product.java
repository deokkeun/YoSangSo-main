

package edu.kh.yosangso.product.model.vo;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter // getter 자동 추가
@Setter // setter 자동 추가
@ToString // toString 자동 추가
@NoArgsConstructor // 기본 생성자
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
	
	
	
}