package com.semi.member.model.vo;

import java.sql.Date;

public class Member {
	private String userId;
	private String userPwd;
	private String userName;
	private String gender;
	private String userAge;
	private String email;
	private String phone;
	private Date enrollDate;
	private String address;
	private String grade;
	private String adminGrade;
	private int userCoin;
	private String deluserFlag;
	private Date  deluserDate;
	
	public Member() {
		super();
	}

	public Member(String userId, String userPwd, String userName, String gender, String userAge, String email,
			String phone, Date enrollDate, String address, String grade, String adminGrade, int userCoin,
			String deluserFlag, Date deluserDate) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.gender = gender;
		this.userAge = userAge;
		this.email = email;
		this.phone = phone;
		this.enrollDate = enrollDate;
		this.address = address;
		this.grade = grade;
		this.adminGrade = adminGrade;
		this.userCoin = userCoin;
		this.deluserFlag = deluserFlag;
		this.deluserDate = deluserDate;
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

	public String getUserAge() {
		return userAge;
	}

	public void setUserAge(String userAge) {
		this.userAge = userAge;
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

	public Date getEnrollDate() {
		return enrollDate;
	}

	public void setEnrollDate(Date enrollDate) {
		this.enrollDate = enrollDate;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getGrade() {
		return grade;
	}

	public void setGrade(String grade) {
		this.grade = grade;
	}

	public String getAdminGrade() {
		return adminGrade;
	}

	public void setAdminGrade(String adminGrade) {
		this.adminGrade = adminGrade;
	}

	public int getUserCoin() {
		return userCoin;
	}

	public void setUserCoin(int userCoin) {
		this.userCoin = userCoin;
	}

	public String getDeluserFlag() {
		return deluserFlag;
	}

	public void setDeluserFlag(String deluserFlag) {
		this.deluserFlag = deluserFlag;
	}

	public Date getDeluserDate() {
		return deluserDate;
	}

	public void setDeluserDate(Date deluserDate) {
		this.deluserDate = deluserDate;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", gender=" + gender
				+ ", userAge=" + userAge + ", email=" + email + ", phone=" + phone + ", enrollDate=" + enrollDate
				+ ", address=" + address + ", grade=" + grade + ", adminGrade=" + adminGrade + ", userCoin=" + userCoin
				+ ", deluserFlag=" + deluserFlag + ", deluserDate=" + deluserDate + "]";
	}
	
	
}
