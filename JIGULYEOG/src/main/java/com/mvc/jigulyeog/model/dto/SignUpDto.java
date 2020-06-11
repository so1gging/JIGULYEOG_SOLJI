package com.mvc.jigulyeog.model.dto;

public class SignUpDto {
	
	private int sig_no;
	private int pet_no;
	private String sig_content;
	private String user_id;
	
	public SignUpDto() {
		super();
	}

	public SignUpDto(int sig_no, int pet_no, String sig_content, String user_id) {
		super();
		this.sig_no = sig_no;
		this.pet_no = pet_no;
		this.sig_content = sig_content;
		this.user_id = user_id;
	}

	public int getSig_no() {
		return sig_no;
	}

	public void setSig_no(int sig_no) {
		this.sig_no = sig_no;
	}

	public int getPet_no() {
		return pet_no;
	}

	public void setPet_no(int pet_no) {
		this.pet_no = pet_no;
	}

	public String getSig_content() {
		return sig_content;
	}

	public void setSig_content(String sig_content) {
		this.sig_content = sig_content;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}	
	
}
