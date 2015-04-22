package com.joyque.dao.impl;

import java.util.List;

import org.apache.log4j.Appender;
import org.apache.log4j.Logger;
import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.joyque.dao.ILoginDAO;
import com.joyque.pojo.Account;

public class LoginDAOImpl extends SqlMapClientDaoSupport implements ILoginDAO {
	private static Logger logger = Logger.getLogger(LoginDAOImpl.class
			.getName());

	public Account login(String userName,String passWord) {
		System.out.println("LoginDAOImpl.login()");
		logger.info("LoginDAOImpl.login()");
		Account acc = new Account();
		acc.setUserAccount(userName);
		acc.setPassWord(passWord);
		Account account_info = (Account) getSqlMapClientTemplate().queryForObject("queryUser", acc);
		System.out.println("返回结果集:" + account_info);
		return account_info;
	}
}
