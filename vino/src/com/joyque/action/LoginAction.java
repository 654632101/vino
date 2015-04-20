package com.joyque.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;

import org.apache.struts2.ServletActionContext;

import com.joyque.service.ILoginService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private String userName;
	private String password;
	private String flag;

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	private ILoginService loginService;

	public String execute() {
		return "login";
	}

	public String loginUser() {
		Map session = ActionContext.getContext().getSession();
		session.put("user", this.userName);
		System.out.println("UserName : " + this.userName);
		System.out.println("PassWord : " + this.password);
		this.flag = "0";
		return SUCCESS;
	}

	public String valuLogin() {
		Map session = ActionContext.getContext().getSession();
		String login_name = (String) session.get("user");
		if (login_name!= null) {
			this.flag = "1";
		} else {
			this.flag = "0";
		}
		return SUCCESS;
	}

	public String login() {
		loginService.login();
		ActionContext.getContext().getSession().remove("user");
		System.out.println("销毁Session！！！！");
		return "login";
	}
	
	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public ILoginService getLoginService() {
		return loginService;
	}

	public void setLoginService(ILoginService loginService) {
		this.loginService = loginService;
	}

}
