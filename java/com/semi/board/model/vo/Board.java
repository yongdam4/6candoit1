package com.semi.board.model.vo;

import java.sql.Date;

public class Board {
	private int ucNo;
	private String userId;
	private String productCode;
	private String ucTitle;
	private Date writeDAte;
	private String askDeatil;
	private String askComment;
	
	public Board() {
		super();
	}

	public Board(int ucNo, String userId, String productCode, String ucTitle, Date writeDAte, String askDeatil,
			String askComment) {
		super();
		this.ucNo = ucNo;
		this.userId = userId;
		this.productCode = productCode;
		this.ucTitle = ucTitle;
		this.writeDAte = writeDAte;
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

	public Date getWriteDAte() {
		return writeDAte;
	}

	public void setWriteDAte(Date writeDAte) {
		this.writeDAte = writeDAte;
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
				+ ", writeDAte=" + writeDAte + ", askDeatil=" + askDeatil + ", askComment=" + askComment + "]";
	}

}
