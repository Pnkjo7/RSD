package com.rsd;
public class ResumeTable {

	private String email,tenth,twelfth,grad_course,grad_marks,postgrad_course,postgrad_marks,designation,experience,internship,project,skills,curricular;

	
	public ResumeTable() {
		super();
	}
	
	public ResumeTable(String email,String tenth,String twelfth,String grad_course,String grad_marks,String postgrad_course,String postgrad_marks,String designation,String experience,String internship,String project,String skills,String curricular) {
		
		super();
		this.email = email;
		this.tenth = tenth;
		this.twelfth = twelfth;
		this.grad_course = grad_course;
		this.grad_marks = grad_marks;
		this.postgrad_course = postgrad_course;
		this.postgrad_marks = postgrad_marks;
		this.designation = designation;
		this.experience = experience;
		this.internship = internship;
		this.project = project;
		this.skills = skills;
		this.curricular = curricular;
		
	}

	public String getTenth() {
		return tenth;
	}

	public String getExperience() {
		return experience;
	}

	public void setExperience(String experience) {
		this.experience = experience;
	}

	public String getInternship() {
		return internship;
	}

	public void setInternship(String internship) {
		this.internship = internship;
	}

	public String getProject() {
		return project;
	}

	public void setProject(String project) {
		this.project = project;
	}

	public String getSkills() {
		return skills;
	}

	public void setSkills(String skills) {
		this.skills = skills;
	}

	public String getCurricular() {
		return curricular;
	}

	public void setCurricular(String curricular) {
		this.curricular = curricular;
	}

	public void setTenth(String tenth) {
		this.tenth = tenth;
	}

	public String getTwelfth() {
		return twelfth;
	}

	public void setTwelfth(String twelfth) {
		this.twelfth = twelfth;
	}

	public String getGrad_course() {
		return grad_course;
	}

	public void setGrad_course(String grad_course) {
		this.grad_course = grad_course;
	}

	public String getGrad_marks() {
		return grad_marks;
	}

	public void setGrad_marks(String grad_marks) {
		this.grad_marks = grad_marks;
	}

	public String getPostgrad_course() {
		return postgrad_course;
	}

	public void setPostgrad_course(String postgrad_course) {
		this.postgrad_course = postgrad_course;
	}

	public String getPostgrad_marks() {
		return postgrad_marks;
	}

	public void setPostgrad_marks(String postgrad_marks) {
		this.postgrad_marks = postgrad_marks;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}
	
}

