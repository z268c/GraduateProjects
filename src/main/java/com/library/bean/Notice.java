package com.library.bean;

import java.util.Date;

public class Notice {
	
	private int N_id;
	private String content;
	private Date publish_time;
	private int publish_human;
	
	public Notice(int N_id, String content, Date publish_time, int publish_human) {
		super();
		this.N_id = N_id;
		this.content = content;
		this.publish_time = publish_time;
		this.publish_human = publish_human;
	}
	public Notice() {
		super();
	}
	
	public int getId() {
		return N_id;
	}
	public void setId(int N_id) {
		this.N_id = N_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getPublish_time() {
		return publish_time;
	}
	public void setPublish_time(Date publish_time) {
		this.publish_time = publish_time;
	}
	public int getPublish_human() {
		return publish_human;
	}
	public void setPublish_human(int publish_human) {
		this.publish_human = publish_human;
	}
	
	
}
