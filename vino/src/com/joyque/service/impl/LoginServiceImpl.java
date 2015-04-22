package com.joyque.service.impl;

import com.joyque.dao.ILoginDAO;
import com.joyque.pojo.Account;
import com.joyque.service.ILoginService;

public class LoginServiceImpl implements ILoginService {
	private ILoginDAO loginDao;
	public Account login(String userName,String passWord) {
		System.out.println("LoginServiceImpl.login()");
		Account  account = loginDao.login(userName,passWord);
		return account;
	}
	public ILoginDAO getLoginDao() {
		return loginDao;
	}
	public void setLoginDao(ILoginDAO loginDao) {
		this.loginDao = loginDao;
	}
	
}
