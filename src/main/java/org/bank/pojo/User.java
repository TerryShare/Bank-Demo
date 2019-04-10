package org.bank.pojo;

import java.math.BigDecimal;

import org.bank.ut.BaseBean;

public class User extends BaseBean{
	private int  id;
	private String name;
	private String password;
	private String sf;
	private String phone;
	private String address;
	private String email;
	private String birthday;
	private String names;
	private  String t3;
	private  String time;
	private BigDecimal money;
	private int t4;
	private BigDecimal t5;
	private int  fk;
	public int getFk() {
		return fk;
	}
	public void setFk(int fk) {
		this.fk = fk;
	}
	public BigDecimal getT5() {
		return t5;
	}
	public void setT5(BigDecimal t5) {
		this.t5 = t5;
	}
	public int getT4() {
		return t4;
	}
	public void setT4(int t4) {
		this.t4 = t4;
	}
	public BigDecimal getMoney() {
		return money;
	}
	public void setMoney(BigDecimal money) {
		this.money = money;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	
	public String getT3() {
		return t3;
	}
	public void setT3(String t3) {
		this.t3 = t3;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getNames() {
		return names;
	}
	public void setNames(String names) {
		this.names = names;
	}
	public  User(){
		
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", password=" + password + ", sf=" + sf + ", phone=" + phone
				+ ", address=" + address + ", t1=" + t1 + ", t2=" + t2 + "]";
	}
	private String t1;
	private String t2;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getSf() {
		return sf;
	}
	public void setSf(String sf) {
		this.sf = sf;
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
	public String getT1() {
		return t1;
	}
	public void setT1(String t1) {
		this.t1 = t1;
	}
	public String getT2() {
		return t2;
	}
	public void setT2(String t2) {
		this.t2 = t2;
	}


}

