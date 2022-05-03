package com.model2.mvc.service.domain;

import java.sql.Date;

public class Product {

	private String fileName;
	private String manuDate;
	private int price;
	private String prodDetail;
	private String prodName;
	private int prodNo;
	private Date regDate;
	private String proTranCode;

	public Product() {
	}

	public String getFileName() {
		return fileName;
	}

	public String getManuDate() {
		return manuDate;
	}

	public int getPrice() {
		return price;
	}

	public String getProdDetail() {
		return prodDetail;
	}

	public String getProdName() {
		return prodName;
	}

	public int getProdNo() {
		return prodNo;
	}

	public Date getRegDate() {
		return regDate;
	}

	public String getProTranCode() {
		return proTranCode;
	}

	
	
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}

	public void setManuDate(String manuDate) {
		this.manuDate = manuDate;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public void setProdDetail(String prodDetail) {
		this.prodDetail = prodDetail;
	}

	public void setProdName(String prodName) {
		this.prodName = prodName;
	}

	public void setProdNo(int prodNo) {
		this.prodNo = prodNo;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public void setProTranCode(String proTranCode) {
		this.proTranCode = proTranCode;
	}

	public String toString() {
		return "ProductVO : [fileName]" + fileName + "[manuDate]" + manuDate + "[price]" + price + "[prodDetail]"
				+ prodDetail + "[prodName]" + prodName + "[prodNo]" + prodNo;
	}
}