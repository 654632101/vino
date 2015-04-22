package com.property.vo;

public class companyVo {
	private String Id;
	private String companName;
	private String scale;
	private String nature;
	private String industry;
	private int intention;

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getCompanName() {
		return companName;
	}

	public void setCompanName(String companName) {
		this.companName = companName;
	}

	public String getScale() {
		return scale;
	}

	public void setScale(String scale) {
		this.scale = scale;
	}

	public String getNature() {
		return nature;
	}

	public void setNature(String nature) {
		this.nature = nature;
	}

	public String getIndustry() {
		return industry;
	}

	public void setIndustry(String industry) {
		this.industry = industry;
	}

	public int getIntention() {
		return intention;
	}

	public void setIntention(int intention) {
		this.intention = intention;
	}

}
