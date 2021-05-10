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
	private int payment;
	private int complete;
	private String rdate;
	
	//additional field
	private int cate1;
	private int cate2;
	private String thumb1;
	private int codes[];
}
