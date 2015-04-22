package com.joyque.dao;

import com.joyque.pojo.Account;

public interface ILoginDAO {
	public Account login(String userName,String passWord);
}
