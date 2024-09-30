package com.semi.member.model.vo;

import java.sql.Date;

public class Member {
	private String userId;
	private String userPwd;
	private String userName;
	private char gender;
	private String userAge;
	private String usrEmail;
	private String usrPhone;
	private Date userEnrollDate;
	private char useDelflag;
	private Date userDeleteDate;
	private String userGrade;
	private String usrAddress;
	private String gradeAdmin;
	private int userCoin;
	
	public Member() {
		super();
	}

	public Member(String userId, String userPwd, String userName, char gender, String userAge, String usrEmail,
			String usrPhone, Date userEnrollDate, char useDelflag, Date userDeleteDate, String userGrade,
			String usrAddress, String gradeAdmin, int userCoin) {
		super();
		this.userId = userId;
		this.userPwd = userPwd;
		this.userName = userName;
		this.gender = gender;
		this.userAge = userAge;
		this.usrEmail = usrEmail;
		this.usrPhone = usrPhone;
		this.userEnrollDate = userEnrollDate;
		this.useDelflag = useDelflag;
		this.userDeleteDate = userDeleteDate;
		this.userGrade = userGrade;
		this.usrAddress = usrAddress;
		this.gradeAdmin = gradeAdmin;
		this.userCoin = userCoin;
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

	public char getGender() {
		return gender;
	}

	public void setGender(char gender) {
		this.gender = gender;
	}

	public String getUserAge() {
		return userAge;
	}

	public void setUserAge(String userAge) {
		this.userAge = userAge;
	}

	public String getUsrEmail() {
		return usrEmail;
	}

	public void setUsrEmail(String usrEmail) {
		this.usrEmail = usrEmail;
	}

	public String getUsrPhone() {
		return usrPhone;
	}

	public void setUsrPhone(String usrPhone) {
		this.usrPhone = usrPhone;
	}

	public Date getUserEnrollDate() {
		return userEnrollDate;
	}

	public void setUserEnrollDate(Date userEnrollDate) {
		this.userEnrollDate = userEnrollDate;
	}

	public char getUseDelflag() {
		return useDelflag;
	}

	public void setUseDelflag(char useDelflag) {
		this.useDelflag = useDelflag;
	}

	public Date getUserDeleteDate() {
		return userDeleteDate;
	}

	public void setUserDeleteDate(Date userDeleteDate) {
		this.userDeleteDate = userDeleteDate;
	}

	public String getUserGrade() {
		return userGrade;
	}

	public void setUserGrade(String userGrade) {
		this.userGrade = userGrade;
	}

	public String getUsrAddress() {
		return usrAddress;
	}

	public void setUsrAddress(String usrAddress) {
		this.usrAddress = usrAddress;
	}

	public String getGradeAdmin() {
		return gradeAdmin;
	}

	public void setGradeAdmin(String gradeAdmin) {
		this.gradeAdmin = gradeAdmin;
	}

	public int getUserCoin() {
		return userCoin;
	}

	public void setUserCoin(int userCoin) {
		this.userCoin = userCoin;
	}

	@Override
	public String toString() {
		return "Member [userId=" + userId + ", userPwd=" + userPwd + ", userName=" + userName + ", gender=" + gender
				+ ", userAge=" + userAge + ", usrEmail=" + usrEmail + ", usrPhone=" + usrPhone + ", userEnrollDate="
				+ userEnrollDate + ", useDelflag=" + useDelflag + ", userDeleteDate=" + userDeleteDate + ", userGrade="
				+ userGrade + ", usrAddress=" + usrAddress + ", gradeAdmin=" + gradeAdmin + ", userCoin=" + userCoin
				+ "]";
	}
	
	
}
