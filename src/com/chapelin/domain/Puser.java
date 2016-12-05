package com.chapelin.domain;

import java.util.HashSet;
import java.util.Set;

/**
 * Puser entity. @author MyEclipse Persistence Tools
 */

public class Puser implements java.io.Serializable {

	// Fields

	private String userid;
	private String username;
	private String userpassword;
	private String email;
	private String power;
	private Set particles = new HashSet(0);
	private Set porders = new HashSet(0);
	private Set pcomments = new HashSet(0);

	// Constructors

	/** default constructor */
	public Puser() {
	}

	/** minimal constructor */
	public Puser(String username, String userpassword, String email) {
		this.username = username;
		this.userpassword = userpassword;
		this.email = email;
	}

	/** full constructor */
	public Puser(String username, String userpassword, String email,
			String power, Set particles, Set porders, Set pcomments) {
		this.username = username;
		this.userpassword = userpassword;
		this.email = email;
		this.power = power;
		this.particles = particles;
		this.porders = porders;
		this.pcomments = pcomments;
	}

	// Property accessors

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUsername() {
		return this.username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getUserpassword() {
		return this.userpassword;
	}

	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}

	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPower() {
		return this.power;
	}

	public void setPower(String power) {
		this.power = power;
	}

	public Set getParticles() {
		return this.particles;
	}

	public void setParticles(Set particles) {
		this.particles = particles;
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