package com.summit.drproject.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="timesheet")
public class Timesheet {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	private int id;
	
	@Column(name="sitecode")
	private String siteCode;
	
	@Column(name="name")
	private String name;
	
	@Column(name="hourlyrate")
	private int hours;
	
	@Column(name="maxhourperday")
	private double totalpay;
	
	@Column(name="status")
	private boolean status;
	
	public Timesheet() {
		super();
		this.status=false;
		// TODO Auto-generated constructor stub
	}
	public Timesheet(String siteCode, String name, int hours, double totalpay) {
		super();
		this.siteCode = siteCode;
		this.name = name;
		this.hours = hours;
		this.totalpay = totalpay;
		this.status = false;
	}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public boolean isStatus() {
		return status;
	}
	public void setStatus(boolean status) {
		this.status = status;
	}
	public String getSiteCode() {
		return siteCode;
	}
	public void setSiteCode(String siteCode) {
		this.siteCode = siteCode;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getHours() {
		return hours;
	}
	public void setHours(int hours) {
		this.hours = hours;
	}
	public double getTotalpay() {
		return totalpay;
	}
	public void setTotalpay(double totalpay) {
		this.totalpay = totalpay;
	}
	
}