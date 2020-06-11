package com.mvc.jigulyeog.model.dto;

import java.util.Date;

public class ChungwonDto {
	
	private int pet_no;
	private String pet_title;
	private String pet_content;
	private Date pet_dead;
	private String user_id;
	
	public ChungwonDto() {
		super();
	}

	public ChungwonDto(int pet_no, String pet_title, String pet_content, Date pet_dead, String user_id) {
		super();
		this.pet_no = pet_no;
		this.pet_title = pet_title;
		this.pet_content = pet_content;
		this.pet_dead = pet_dead;
		this.user_id = user_id;
	}

	public int getPet_no() {
		return pet_no;
	}

	public void setPet_no(int pet_no) {
		this.pet_no = pet_no;
	}

	public String getPet_title() {
		return pet_title;
	}

	public void setPet_title(String pet_title) {
		this.pet_title = pet_title;
	}

	public String getPet_content() {
		return pet_content;
	}

	public void setPet_content(String pet_content) {
		this.pet_content = pet_content;
	}

	public Date getPet_dead() {
		return pet_dead;
	}

	public void setPet_dead(Date pet_dead) {
		this.pet_dead = pet_dead;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	
	
}
