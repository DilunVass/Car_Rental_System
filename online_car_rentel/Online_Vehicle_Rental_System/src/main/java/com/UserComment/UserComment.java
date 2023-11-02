package com.UserComment;

public class UserComment {
	
	private int id;
	private String comment;
	private String userEmail;
	private String userName;
	private String userImage;
	private String date;
	
	
	public UserComment(int id, String comment, String userEmail, String userName, String userImage, String date) {
		super();
		this.id = id;
		this.comment = comment;
		this.userEmail = userEmail;
		this.userName = userName;
		this.userImage = userImage;
		this.date = date;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getComment() {
		return comment;
	}


	public void setComment(String comment) {
		this.comment = comment;
	}


	public String getUserEmail() {
		return userEmail;
	}


	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}


	public String getUserName() {
		return userName;
	}


	public void setUserName(String userName) {
		this.userName = userName;
	}


	public String getUserImage() {
		return userImage;
	}


	public void setUserImage(String userImage) {
		this.userImage = userImage;
	}


	public String getDate() {
		return date;
	}


	public void setDate(String date) {
		this.date = date;
	}
	
	

}
