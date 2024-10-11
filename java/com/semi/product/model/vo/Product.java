package com.semi.product.model.vo;

import java.sql.Date;

public class Product {
	private String productCode;
	private int categoryCode;
	private String productName;
	private int productPrice;
	private String productDescription;
	private int productQuantity;
	
	public Product() {
		super();
	}

	public Product(String productCode, int categoryCode, String productName, int productPrice,
			String productdescription, int productQuantity) {
		super();
		this.productCode = productCode;
		this.categoryCode = categoryCode;
		this.productName = productName;
		this.productPrice = productPrice;
		this.productDescription = productdescription;
		this.productQuantity = productQuantity;
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

	public int getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(int productPrice) {
		this.productPrice = productPrice;
	}

	public String getProductdescription() {
		return productDescription;
	}

	public void setProductdescription(String productdescription) {
		this.productDescription = productdescription;
	}

	public int getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(int productQuantity) {
		this.productQuantity = productQuantity;
	}

	@Override
	public String toString() {
		return "Product [productCode=" + productCode + ", categoryCode=" + categoryCode + ", productName=" + productName
				+ ", productPrice=" + productPrice + ", productdescription=" + productDescription + ", productQuantity="
				+ productQuantity + "]";
	}

	
}
