package com.joyque.service;

import com.joyque.pojo.Account;

public interface ILoginService {
	public Account login(String userName,String passWord);
}
