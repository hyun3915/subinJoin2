package com.sub.s1.member.memberUser;

import java.sql.Date;


public class MemberUserDTO{

	private String id;
	private String pw;
	private String name;
	private String addr1;
	private String addr2;
	private String addr3;
	private String phone;
	private String email;
	private Long point;
	private Date regDate;
	private Long auth;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getAddr3() {
		return addr3;
	}
	public void setAddr3(String addr3) {
		this.addr3 = addr3;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public Long getPoint() {
		return point;
	}
	public void setPoint(Long point) {
		this.point = point;
	}
	public Date getRegDate() {
		return regDate;
	}
	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}
	public Long getAuth() {
		return auth;
	}
	public void setAuth(Long auth) {
		this.auth = auth;
	}
	
	

}
