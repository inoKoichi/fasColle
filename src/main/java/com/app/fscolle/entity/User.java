package com.app.fscolle.entity;

import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "USER")
public class User {

	@Id
	@Column(name = "user_id")
	private Integer userId;

	@Column(name = "user_name")
	private String userName;

	@Column(name = "mail_address")
	private String mailAddress;

	@Column(name = "password")
	private String password;

	@Column(name = "profile_pic_url")
	private String profilePicUrl;

	@Column(name = "register_datetime")
	private Date registerDatetime;

	@Column(name = "update_datetime")
	private Date updateDatetime;

	@Column(name = "unsubscribe_flg")
	private Integer unsubscribeFlg;

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getMailAddress() {
		return mailAddress;
	}

	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getProfilePicUrl() {
		return profilePicUrl;
	}

	public void setProfilePicUrl(String profilePicUrl) {
		this.profilePicUrl = profilePicUrl;
	}

	public Date getRegisterDatetime() {
		return registerDatetime;
	}

	public void setUserId(Date registerDatetime) {
		this.registerDatetime = registerDatetime;
	}

	public Date getUpdateDatetime() {
		return updateDatetime;
	}

	public void setUpdateDatetime(Date updateDatetime) {
		this.updateDatetime = updateDatetime;
	}

	public Integer getUnsubscribeFlg() {
		return unsubscribeFlg;
	}

	public void setUnsubscribeFlg(Integer unsubscribeFlg) {
		this.unsubscribeFlg = unsubscribeFlg;
	}

}