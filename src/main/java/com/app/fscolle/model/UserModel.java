package com.app.fscolle.model;

import java.sql.Date;

public class UserModel {

	/** */
	private Integer userId;

	/** */
	private String userName;

	/** */
	private String mailAddress;

	/** */
	private String password;

	/** */
	private String profilePicUrl;

	/** */
	private Date registerDatetime;

	/** */
	private Date updateDatetime;

	/** */
	private Integer unsubscribeFlg;

	/**
	 * userIdを取得する
	 * @return
	 */
	public Integer getUserId() {
		return userId;
	}

	/**
	 *
	 * @param userId
	 */
	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	/**
	 *
	 * @return
	 */
	public String getUserName() {
		return userName;
	}

	/**
	 *
	 * @param userName
	 */
	public void setUserName(String userName) {
		this.userName = userName;
	}

	/**
	 *
	 * @return
	 */
	public String getMailAddress() {
		return mailAddress;
	}

	/**
	 *
	 * @param mailAddress
	 */
	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}

	/**
	 *
	 * @return
	 */
	public String getPassword() {
		return password;
	}

	/**
	 *
	 * @param password
	 */
	public void setPassword(String password) {
		this.password = password;
	}

	/**
	 *
	 * @return
	 */
	public String getProfilePicUrl() {
		return profilePicUrl;
	}

	/**
	 *
	 * @param profilePicUrl
	 */
	public void setProfilePicUrl(String profilePicUrl) {
		this.profilePicUrl = profilePicUrl;
	}

	/**
	 *
	 * @return
	 */
	public Date getRegisterDatetime() {
		return registerDatetime;
	}

	/**
	 *
	 * @param registerDatetime
	 */
	public void setUserId(Date registerDatetime) {
		this.registerDatetime = registerDatetime;
	}

	/**
	 *
	 * @return
	 */
	public Date getUpdateDatetime() {
		return updateDatetime;
	}

	/**
	 *
	 * @param updateDatetime
	 */
	public void setUpdateDatetime(Date updateDatetime) {
		this.updateDatetime = updateDatetime;
	}

	/**
	 *
	 * @return
	 */
	public Integer getUnsubscribeFlg() {
		return unsubscribeFlg;
	}

	/**
	 *
	 * @param unsubscribeFlg
	 */
	public void setUnsubscribeFlg(Integer unsubscribeFlg) {
		this.unsubscribeFlg = unsubscribeFlg;
	}

}
