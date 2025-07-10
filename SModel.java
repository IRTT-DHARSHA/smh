package com.example.smh.Model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name="ds1")
public class SModel {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
   private int id;
   @Override
public String toString() {
	return "SModel [id=" + id + ", rollno=" + rollno + ", name=" + name + ", dept=" + dept + ", year=" + year + ", dob="
			+ dob + ", bloodgroup=" + bloodgroup + ", nativeplace=" + nativeplace + ", hostel_r_not=" + hostel_r_not
			+ "]";
}
   public SModel(int id, String rollno, String name, String dept, String year, String dob, String bloodgroup,
		String nativeplace, String hostel_r_not) {
	super();
	this.id = id;
	this.rollno = rollno;
	this.name = name;
	this.dept = dept;
	this.year = year;
	this.dob = dob;
	this.bloodgroup = bloodgroup;
	this.nativeplace = nativeplace;
	this.hostel_r_not = hostel_r_not;
}
   public int getId() {
	return id;
}
   public void setId(int id) {
	this.id = id;
   }
   public String getRollno() {
	return rollno;
   }
   public void setRollno(String rollno) {
	this.rollno = rollno;
   }
   public String getName() {
	return name;
   }
   public void setName(String name) {
	this.name = name;
   }
   public String getDept() {
	return dept;
   }
   public void setDept(String dept) {
	this.dept = dept;
   }
   public String getYear() {
	return year;
   }
   public void setYear(String year) {
	this.year = year;
   }
   public String getDob() {
	return dob;
   }
   public void setDob(String dob) {
	this.dob = dob;
   }
   public String getBloodgroup() {
	return bloodgroup;
   }
   public void setBloodgroup(String bloodgroup) {
	this.bloodgroup = bloodgroup;
   }
   public String getNativeplace() {
	return nativeplace;
   }
   public void setNativeplace(String nativeplace) {
	this.nativeplace = nativeplace;
   }
   public String getHostel_r_not() {
	return hostel_r_not;
   }
   public void setHostel_r_not(String hostel_r_not) {
	this.hostel_r_not = hostel_r_not;
   }
   @Column
   private String rollno;
   private String name;
   private String dept;
   private String year;
   private String dob;
   private String bloodgroup;
   private String nativeplace;
   private String hostel_r_not;
   public SModel() { }
   
}
