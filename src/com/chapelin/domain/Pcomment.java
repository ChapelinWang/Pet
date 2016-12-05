package com.chapelin.domain;

import java.sql.Timestamp;
import java.util.HashSet;
import java.util.Set;

/**
 * Pcomment entity. @author MyEclipse Persistence Tools
 */

public class Pcomment implements java.io.Serializable {

	// Fields

	private String commentid;
	private Pcategory pcategory;
	private Puser puser;
	private String commentcontent;
	private Timestamp ptime;
	private String articleid;
	private Set particles = new HashSet(0);

	// Constructors

	/** default constructor */
	public Pcomment() {
	}

	public String getArticleid() {
		return articleid;
	}

	public void setArticleid(String articleid) {
		this.articleid = articleid;
	}

	/** minimal constructor */
	public Pcomment(Puser puser, String commentcontent) {
		this.puser = puser;
		this.commentcontent = commentcontent;
	}

	/** full constructor */
	public Pcomment(Pcategory pcategory, Puser puser, String commentcontent,
			Timestamp ptime, Set particles) {
		this.pcategory = pcategory;
		this.puser = puser;
		this.commentcontent = commentcontent;
		this.ptime = ptime;
		this.particles = particles;
	}

	// Property accessors

	public String getCommentid() {
		return this.commentid;
	}

	public void setCommentid(String commentid) {
		this.commentid = commentid;
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

	public String getCommentcontent() {
		return this.commentcontent;
	}

	public void setCommentcontent(String commentcontent) {
		this.commentcontent = commentcontent;
	}

	public Timestamp getPtime() {
		return this.ptime;
	}

	public void setPtime(Timestamp ptime) {
		this.ptime = ptime;
	}

	public Set getParticles() {
		return this.particles;
	}

	public void setParticles(Set particles) {
		this.particles = particles;
	}

}