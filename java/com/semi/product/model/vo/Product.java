package com.semi.product.model.vo;

import java.sql.Date;

public class Product {
	private String productCode;
	private int categoryCode;
	private String productName;
	private int price;
	private String productDescription;
	private int number;
	
	public Product() {
		super();
	}

	public Product(String productCode, int categoryCode, String productName, int price, String productDescription,
			int number) {
		super();
		this.productCode = productCode;
		this.categoryCode = categoryCode;
		this.productName = productName;
		this.price = price;
		this.productDescription = productDescription;
		this.number = number;
	}

	public String getProductCode() {
		return productCode;
	}

	public void setProductCode(String productCode) {
		this.productCode = productCode;
	}

	public int getCategoryCode() {
		return categoryCode;
	}

	public void setCategoryCode(int categoryCode) {
		this.categoryCode = categoryCode;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getProductDescription() {
		return productDescription;
	}

	public void setProductDescription(String productDescription) {
		this.productDescription = productDescription;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "Product [productCode=" + productCode + ", categoryCode=" + categoryCode + ", productName=" + productName
				+ ", price=" + price + ", productDescription=" + productDescription + ", number=" + number + "]";
	}
	
	
}
