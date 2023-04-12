package edu.kh.yosangso.order.model.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class ApprovalUrl {
	private String orderNo;
	private String orderDate;
	private String deliveryDate;
	private int buyingRate;
	private int price;
	private String productName;
	
}
