package com.it.springboot.daodto;

public class ProductlistDto {


	private String name;
	private String buyer;
	private String seller;
	private String price;
	private int pno;


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBuyer() {
		return buyer;
	}

	public void setBuyer(String buyer) {
		this.buyer = buyer;
	}

	public String getSeller() {
		return seller;
	}

	public void setSeller(String seller) {
		this.seller = seller;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public int getPno() {return pno;}

	public void setPno(int pno) {this.pno = pno;}
}
