package com.semi.order.model.vo;

import java.sql.Date;

public class Order {
	private int orderNo;
	private String userId;
	private String productCode;
	private String productName;
	private String orderCode;
	private Date orderDate;
	private int orderQuantity;
	private int orderPrice;
	private String delistatus;
	private String payment;
	
	public Order() {
		super();
	}

	public Order(int orderNo, String userId, String productCode, String productName, String orderCode, Date orderDate,
			int orderQuantity, int orderPrice, String delistatus, String payment) {
		super();
		this.orderNo = orderNo;
		this.userId = userId;
		this.productCode = productCode;
		this.productName = productName;
		this.orderCode = orderCode;
		this.orderDate = orderDate;
		this.orderQuantity = orderQuantity;
		this.orderPrice = orderPrice;
		this.delistatus = delistatus;
		this.payment = payment;
	}

	public int getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(int orderNo) {
		this.orderNo = orderNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public String getOrderCode() {
		return orderCode;
	}

	public void setOrderCode(String orderCode) {
		this.orderCode = orderCode;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public int getOrderQuantity() {
		return orderQuantity;
	}

	public void setOrderQuantity(int orderQuantity) {
		this.orderQuantity = orderQuantity;
	}

	public int getOrderPrice() {
		return orderPrice;
	}

	public void setOrderPrice(int orderPrice) {
		this.orderPrice = orderPrice;
	}

	public String getDelistatus() {
		return delistatus;
	}

	public void setDelistatus(String delistatus) {
		this.delistatus = delistatus;
	}

	public String getPayment() {
		return payment;
	}

	public void setPayment(String payment) {
		this.payment = payment;
	}

	@Override
	public String toString() {
		return "Order [orderNo=" + orderNo + ", userId=" + userId + ", productCode=" + productCode + ", productName="
				+ productName + ", orderCode=" + orderCode + ", orderDate=" + orderDate + ", orderQuantity="
				+ orderQuantity + ", orderPrice=" + orderPrice + ", delistatus=" + delistatus + ", payment=" + payment
				+ "]";
	}
	
	

}
