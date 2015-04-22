package com.property.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.property.dao.propertyDao;
import com.property.service.propertyService;
import com.property.vo.proertyVo;

public class propertyServiceImpl implements propertyService {
	private propertyDao propertyDao;

	public List<proertyVo> queryPm() {
		System.out.println("Service");
		proertyVo vo = new proertyVo();
		List<proertyVo> list = propertyDao.query(vo);
		return list;
	}

	public propertyDao getPropertyDao() {
		return propertyDao;
	}

	public void setPropertyDao(propertyDao propertyDao) {
		this.propertyDao = propertyDao;
	}

}
