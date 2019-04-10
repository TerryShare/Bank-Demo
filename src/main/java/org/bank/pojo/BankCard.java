package org.bank.pojo;

import java.math.BigDecimal;
import java.util.Date;

public class BankCard {
	private String cardid;
	private String owner;
	private String password;
	private String type;
	private String ownerIDCard;
	private BigDecimal money;
	private Date registDate;
	private String isLive;
	private String isNew;
	public String getCardid() {
		return cardid;
	}
	public void setCardid(String cardid) {
		this.cardid = cardid;
	}
	public String getOwner() {
		return owner;
	}
	public void setOwner(String owner) {
		this.owner = owner;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getOwnerIDCard() {
		return ownerIDCard;
	}
	public void setOwnerIDCard(String ownerIDCard) {
		this.ownerIDCard = ownerIDCard;
	}
	public BigDecimal getMoney() {
		return money;
	}
	public void setMoney(BigDecimal money) {
		this.money = money;
	}
	public Date getRegistDate() {
		return registDate;
	}
	public void setRegistDate(Date registDate) {
		this.registDate = registDate;
	}
	public String getIsLive() {
		return isLive;
	}
	public void setIsLive(String isLive) {
		this.isLive = isLive;
	}
	public String getIsNew() {
		return isNew;
	}
	public void setIsNew(String isNew) {
		this.isNew = isNew;
	}
}
