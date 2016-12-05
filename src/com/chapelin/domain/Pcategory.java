package com.chapelin.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Pcategory entity. @author MyEclipse Persistence Tools
 */

public class Pcategory implements java.io.Serializable {

	// Fields

	private String categoryid;
	private String type;
	private String sex;
	private String vaccin;
	private String age;
	private String detail;
	private Double price;
	private String image;

	private Set porders = new HashSet(0);
	private Set pcomments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Pcategory() {
	}

	/** minimal constructor */
	public Pcategory(String type) {
		this.type = type;
	}

	/** full constructor */
	public Pcategory(String type, String sex, String vaccin, String age,
			String detail, Double price, Set porders, Set pcomments) {
		this.type = type;
		this.sex = sex;
		this.vaccin = vaccin;
		this.age = age;
		this.detail = detail;
		this.price = price;
		this.porders = porders;
		this.pcomments = pcomments;
	}

	// Property accessors

	public String getCategoryid() {
		return this.categoryid;
	}

	public void setCategoryid(String categoryid) {
		this.categoryid = categoryid;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSex() {
		return this.sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getVaccin() {
		return this.vaccin;
	}

	public void setVaccin(String vaccin) {
		this.vaccin = vaccin;
	}

	public String getAge() {
		return this.age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	public String getDetail() {
		return this.detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}

	public Double getPrice() {
		return this.price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Set getPorders() {
		return this.porders;
	}

	public void setPorders(Set porders) {
		this.porders = porders;
	}

	public Set getPcomments() {
		return this.pcomments;
	}

	public void setPcomments(Set pcomments) {
		this.pcomments = pcomments;
	}

}