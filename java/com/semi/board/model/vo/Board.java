package com.semi.board.model.vo;

import java.sql.Date;

public class Board {
	private int ucNo;
	private String userId;
	private String productCode;
	private String ucTitle;
	private Date writeDate;
	private String askDeatil;
	private String askComment;
	
	public Board() {
		super();
	}

	public Board(int ucNo, String userId, String productCode, String ucTitle, Date writeDate, String askDeatil,
			String askComment) {
		super();
		this.ucNo = ucNo;
		this.userId = userId;
		this.productCode = productCode;
		this.ucTitle = ucTitle;
		this.writeDate = writeDate;
		this.askDeatil = askDeatil;
		this.askComment = askComment;
	}
	


	public int getUcNo() {
		return ucNo;
	}

	public void setUcNo(int ucNo) {
		this.ucNo = ucNo;
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

	public String getUcTitle() {
		return ucTitle;
	}

	public void setUcTitle(String ucTitle) {
		this.ucTitle = ucTitle;
	}

	public Date getWriteDate() {
		return writeDate;
	}

	public void setWriteDAte(Date writeDate) {
		this.writeDate = writeDate;
	}

	public String getAskDeatil() {
		return askDeatil;
	}

	public void setAskDeatil(String askDeatil) {
		this.askDeatil = askDeatil;
	}

	public String getAskComment() {
		return askComment;
	}

	public void setAskComment(String askComment) {
		this.askComment = askComment;
	}

	@Override
	public String toString() {
		return "Board [ucNo=" + ucNo + ", userId=" + userId + ", productCode=" + productCode + ", ucTitle=" + ucTitle
				+ ", writeDate=" + writeDate + ", askDeatil=" + askDeatil + ", askComment=" + askComment + "]";
	}

}
