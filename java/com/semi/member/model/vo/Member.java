package com.semi.member.model.vo;

import java.sql.Date;

public class Member {
	private String userId;
	private String userPwd;
	private String userName;
	private String gender;
	private String birthday;
	private String email;
	private String phone;
	private String address;
	private Date userEnrollDate;
	private String grade;
	private String admingrade;
	private int userCoin;
	private Date deleteDate;
	private String delFlag;
	
	public Member() {
		super();
	}
	
	
	public Member(int userCoin) {
		super();
		this.userCoin = userCoin;
	}


	public Member(String userId, String userPwd, String userName, String gender,  String email,
			String address, String phone, String birthday) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.gender = gender;
		this.email = email;
		this.address = address;				
		this.phone = phone;
		this.birthday = birthday;
		}



	public Member(String userId, String userPwd, String userName, String gender, String birthday, String email,
			String phone, String address, Date userEnrollDate, String grade, String admingrade, int userCoin,
			Date deleteDate, String delFlag) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.gender = gender;
		this.birthday = birthday;
		this.email = email;
		this.phone = phone;
		this.address = address;
		this.userEnrollDate = userEnrollDate;
		this.grade = grade;
		this.admingrade = admingrade;
		this.userCoin = userCoin;
		this.deleteDate = deleteDate;
		this.delFlag = delFlag;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUserPwd() {
		return userPwd;
	}

	public void setUserPwd(String userPwd) {
		this.userPwd = userPwd;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getUserEnrollDate() {
		return userEnrollDate;
	}

	public void setUserEnrollDate(Date userEnrollDate) {
		this.userEnrollDate = userEnrollDate;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getAdmingrade() {
		return admingrade;
	}

	public void setAdmingrade(String admingrade) {
		this.admingrade = admingrade;
	}

	public int getUserCoin() {
		return userCoin;
	}

	public void setUserCoin(int userCoin) {
		this.userCoin = userCoin;
	}

	public Date getDeleteDate() {
		return deleteDate;
	}

	public void setDeleteDate(Date deleteDate) {
		this.deleteDate = deleteDate;
	}

	public String getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", gender=" + gender
				+ ", birthday=" + birthday + ", email=" + email + ", phone=" + phone + ", address=" + address
				+ ", userEnrollDate=" + userEnrollDate + ", grade=" + grade + ", admingrade=" + admingrade + ", userCoin="
				+ userCoin + ", deleteDate=" + deleteDate + ", delFlag=" + delFlag + "]";
	}
	
	
}
