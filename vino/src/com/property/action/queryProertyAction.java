package com.property.action;

import java.util.List;
import java.util.Map;

import net.sf.json.JSONArray;

import com.opensymphony.xwork2.ActionSupport;
import com.property.service.propertyService;
import com.property.vo.proertyVo;

public class queryProertyAction extends ActionSupport {

	List<proertyVo> list;
	private String name;

	private String title;

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	private Map<String, Map<String, List>> map;

	public Map<String, Map<String, List>> getMap() {
		return map;
	}

	public void setMap(Map<String, Map<String, List>> map) {
		this.map = map;
	}

	private propertyService proService;

	public String queryProerty() {
		System.out.println("ddd");
		list = proService.queryPm();
		// JSONArray jsonObject = JSONArray.fromObject(map);
		// System.out.println("返回Action");
		// System.out.println(map);
		// this.name = jsonObject.toString();
		return SUCCESS;
	}

	public void setProService(propertyService proService) {
		this.proService = proService;
	}

	public propertyService getProService() {
		return proService;
	}

	public List<proertyVo> getList() {
		return list;
	}

	public void setList(List<proertyVo> list) {
		this.list = list;
	}

}
