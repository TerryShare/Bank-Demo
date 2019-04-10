package org.bank.pojo;

import java.math.BigDecimal;

public class Deal {
private int  id;
private String name;
private String time;
private String tyoe;
private BigDecimal jy;
private String ids;
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
public String getTime() {
	return time;
}
public void setTime(String time) {
	this.time = time;
}
public String getTyoe() {
	return tyoe;
}
public void setTyoe(String tyoe) {
	this.tyoe = tyoe;
}

public BigDecimal getJy() {
	return jy;
}
public void setJy(BigDecimal jy) {
	this.jy = jy;
}
public String getIds() {
	return ids;
}
public void setIds(String ids) {
	this.ids = ids;
}
}
