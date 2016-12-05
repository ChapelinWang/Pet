package com.chapelin.test;

import java.sql.Timestamp;

import com.chapelin.domain.Pcomment;
import com.chapelin.domain.Puser;

/**
 * ParticleId entity. @author MyEclipse Persistence Tools
 */

public class ParticleId implements java.io.Serializable {

	// Fields

	private Puser puser;
	private String userid;
	private Timestamp time;
	private String article;
	private Pcomment pcomment;
	private String title;

	// Constructors

	/** default constructor */
	public ParticleId() {
	}

	/** full constructor */
	public ParticleId(Puser puser, String userid, Timestamp time,
			String article, Pcomment pcomment) {
		this.puser = puser;
		this.userid = userid;
		this.time = time;
		this.article = article;
		this.pcomment = pcomment;
	}

	// Property accessors

	public Puser getPuser() {
		return this.puser;
	}

	public void setPuser(Puser puser) {
		this.puser = puser;
	}

	public String getUserid() {
		return this.userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
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

	public Pcomment getPcomment() {
		return this.pcomment;
	}

	public void setPcomment(Pcomment pcomment) {
		this.pcomment = pcomment;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof ParticleId))
			return false;
		ParticleId castOther = (ParticleId) other;

		return ((this.getPuser() == castOther.getPuser()) || (this.getPuser() != null
				&& castOther.getPuser() != null && this.getPuser().equals(
				castOther.getPuser())))
				&& ((this.getUserid() == castOther.getUserid()) || (this
						.getUserid() != null && castOther.getUserid() != null && this
						.getUserid().equals(castOther.getUserid())))
				&& ((this.getTime() == castOther.getTime()) || (this.getTime() != null
						&& castOther.getTime() != null && this.getTime()
						.equals(castOther.getTime())))
				&& ((this.getArticle() == castOther.getArticle()) || (this
						.getArticle() != null && castOther.getArticle() != null && this
						.getArticle().equals(castOther.getArticle())))
				&& ((this.getPcomment() == castOther.getPcomment()) || (this
						.getPcomment() != null
						&& castOther.getPcomment() != null && this
						.getPcomment().equals(castOther.getPcomment())));
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result
				+ (getPuser() == null ? 0 : this.getPuser().hashCode());
		result = 37 * result
				+ (getUserid() == null ? 0 : this.getUserid().hashCode());
		result = 37 * result
				+ (getTime() == null ? 0 : this.getTime().hashCode());
		result = 37 * result
				+ (getArticle() == null ? 0 : this.getArticle().hashCode());
		result = 37 * result
				+ (getPcomment() == null ? 0 : this.getPcomment().hashCode());
		return result;
	}

}