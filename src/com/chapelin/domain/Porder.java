package com.chapelin.domain;

import java.sql.Timestamp;

/**
 * Porder entity. @author MyEclipse Persistence Tools
 */

public class Porder implements java.io.Serializable {

	// Fields

	private String orderid;
	private Pcategory pcategory;
	private Puser puser;
	private Timestamp ordertime;
	private String orderphone;
	private String orderemail;
	private int status;
	private String remark;

	// Constructors

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getOrderemail() {
		return orderemail;
	}

	public void setOrderemail(String orderemail) {
		this.orderemail = orderemail;
	}

	/** default constructor */
	public Porder() {
	}

	/** full constructor */
	public Porder(Pcategory pcategory, Puser puser, Timestamp ordertime,
			String orderphone,String orderemail,int status) {
		this.pcategory = pcategory;
		this.puser = puser;
		this.ordertime = ordertime;
		this.orderphone = orderphone;
		this.orderemail=orderemail;
		this.status=status;
	}

	// Property accessors

	public String getOrderid() {
		return this.orderid;
	}

	public void setOrderid(String orderid) {
		this.orderid = orderid;
	}

	public Pcategory getPcategory() {
		return this.pcategory;
	}

	public void setPcategory(Pcategory pcategory) {
		this.pcategory = pcategory;
	}

	public Puser getPuser() {
		return this.puser;
	}

	public void setPuser(Puser puser) {
		this.puser = puser;
	}

	public Timestamp getOrdertime() {
		return this.ordertime;
	}

	public void setOrdertime(Timestamp ordertime) {
		this.ordertime = ordertime;
	}

	public String getOrderphone() {
		return this.orderphone;
	}

	public void setOrderphone(String orderphone) {
		this.orderphone = orderphone;
	}

}