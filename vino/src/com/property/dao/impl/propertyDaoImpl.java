package com.property.dao.impl;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.king.pojo.PmInfo;
import com.property.dao.propertyDao;
import com.property.vo.companyVo;
import com.property.vo.proertyVo;

public class propertyDaoImpl extends SqlMapClientDaoSupport implements propertyDao {
	public List<proertyVo> query(proertyVo proVo) {
		proertyVo vo  = new proertyVo();
		System.out.println("查询项目信息。");
		List<proertyVo> list = this.getSqlMapClientTemplate().queryForList("queryPro");
		return list;
	}
	
	public List<companyVo> queryCo(String porId){
		
		return null;
	}
	public void insertPm() {
		PmInfo vo = new PmInfo();
		vo.setId("1");
		vo.setRq("2015-01-01");
		vo.setType("PM25");
		vo.setValue("300");
		Object flag = getSqlMapClientTemplate().insert("inpm", vo);
	}
}
