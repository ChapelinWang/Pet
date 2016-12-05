package com.chapelin.domain;

import java.sql.Timestamp;

/**
 * Particle entity. @author MyEclipse Persistence Tools
 */

public class Particle implements java.io.Serializable {

	// Fields

	private String articleid;
	private Pcomment pcomment;
	private Puser puser;
	private Timestamp time;
	private String article;
	private String title;
	private String image;

	// Constructors

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	/** default constructor */
	public Particle() {
	}

	/** full constructor */
	public Particle(Pcomment pcomment, Puser puser, Timestamp time,
			String article) {
		this.pcomment = pcomment;
		this.puser = puser;
		this.time = time;
		this.article = article;
	}

	// Property accessors

	public String getArticleid() {
		return this.articleid;
	}

	public void setArticleid(String articleid) {
		this.articleid = articleid;
	}

	public Pcomment getPcomment() {
		return this.pcomment;
	}

	public void setPcomment(Pcomment pcomment) {
		this.pcomment = pcomment;
	}

	public Puser getPuser() {
		return this.puser;
	}

	public void setPuser(Puser puser) {
		this.puser = puser;
	}

	public Timestamp getTime() {
		return this.time;
	}

	public void setTime(Timestamp time) {
		this.time = time;
	}

	public String getArticle() {
		return this.article;
	}

	public void setArticle(String article) {
		this.article = article;
	}

}