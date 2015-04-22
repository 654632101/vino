package com.property.dao;

import java.util.List;

import com.king.pojo.PmInfo;
import com.property.vo.proertyVo;

public interface propertyDao {
	public  List<proertyVo> query(proertyVo proVo);
	public void insertPm();
}
