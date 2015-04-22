package com.joyque.action;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionBindingEvent;

import org.apache.struts2.ServletActionContext;

import com.joyque.pojo.Account;
import com.joyque.service.ILoginService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.tools.Image;

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
		System.out.println("进入login方法!");
		
		String flag_temp = (String) ActionContext.getContext().getSession().get("verifycode");
		System.out.println("flag_temp：" + flag_temp);
		if(this.flag == "" || this.userName == "" || this.password == ""){
			super.addActionError("请填写验证码.");
			return "error";
		}
		System.out.println("this.flag : " + this.flag);
		if(!flag_temp.equals(this.flag)){
			super.addActionError("验证码错误!");
			return "error";
		}
		Account user = loginService.login(this.userName,this.password);
		if(user != null){
			System.out.println("欢迎用户 " + user.getUserName() + "登录.");
			ActionContext.getContext().getSession().put("user", user);
		}else{
			super.addActionError("用户不存在!");
			return "error";
		}
		return "OK";
	}
	
	public String autoImage(){
		Image image = new Image();
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
        image.printImage(request, response);
		return null;
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
