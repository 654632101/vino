package com.property.vo;

import java.util.List;

public class proertyVo {
	private String Id;
	private String proName;
	private String section;
	private String regional;
	private String measureArea;
	private int rent;
	private String eentType;
	private String CJR;
	private String CJSJ;

	private List<companyVo> companList;

	public List<companyVo> getCompanList() {
		return companList;
	}

	public void setCompanList(List<companyVo> companList) {
		this.companList = companList;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public String getSection() {
		return section;
	}

	public void setSection(String section) {
		this.section = section;
	}

	public String getRegional() {
		return regional;
	}

	public void setRegional(String regional) {
		this.regional = regional;
	}

	public String getMeasureArea() {
		return measureArea;
	}

	public void setMeasureArea(String measureArea) {
		this.measureArea = measureArea;
	}

	public int getRent() {
		return rent;
	}

	public void setRent(int rent) {
		this.rent = rent;
	}

	public String getEentType() {
		return eentType;
	}

	public void setEentType(String eentType) {
		this.eentType = eentType;
	}

	public String getCJR() {
		return CJR;
	}

	public void setCJR(String cJR) {
		CJR = cJR;
	}

	public String getCJSJ() {
		return CJSJ;
	}

	public void setCJSJ(String cJSJ) {
		CJSJ = cJSJ;
	}

}
