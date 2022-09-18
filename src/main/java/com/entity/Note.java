package com.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Note {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	private String title;

	@Column(length = 2000)
	private String content;

	private Date date;

	public Note(int id, String title, String content, Date date) {
		this.id = id;
		this.title = title;
		this.content = content;
		this.date = date;
	}

	public Note(String title, String content, Date date) {
		this.title = title;
		this.content = content;
		this.date = date;
	}

	public Note() {
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "note [id=" + id + ", title=" + title + ", content=" + content + ", date=" + date + "]";
	}

}
