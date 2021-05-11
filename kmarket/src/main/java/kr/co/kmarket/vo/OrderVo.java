package kr.co.kmarket.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class OrderVo {
	private int orderId;
	private String uid;
	private int code;
	private String name;
	private int count;
	private int price;
	private int discount;
	private int point;
	private int delivery;
	private int total;
	
	private String orderer;
	private String hp;
	private String zip;
	private String addr1;
	private String addr2;
	
	private int payment;
	private int complete;
	private String rdate;
	private String completeDate;

	
	//additional field
	private int cate1;
	private int cate2;
	private String thumb1;
	private int codes[];
	
	private String pName;
	private int pPrice;
	private int pDiscount;
	private int pPoint;
	private int pDelivery;
	private int pTotal;
}
