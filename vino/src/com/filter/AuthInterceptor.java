package com.filter;

import java.util.Map;

import com.joyque.action.LoginAction;
import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class AuthInterceptor extends AbstractInterceptor {
	private static final long serialVersionUID = -5114658085937727056L;
	private String sessionKey = "user";
	private String parmKey = "withoutAuthentication";
	private boolean excluded;

	@Override
	public String intercept(ActionInvocation invocation) throws Exception {
		System.out.println("AuthInterceptor");
		ActionContext ac = invocation.getInvocationContext();
		Map<?, ?> session = ac.getSession();
		String parm = (String) ac.getParameters().get(parmKey);
		
		if(LoginAction.class == invocation.getAction().getClass()){
			return invocation.invoke();
		}
		if (parm != null) {
			excluded = parm.toUpperCase().equals("TRUE");
		}

		String user = (String) session.get(sessionKey);
		if (excluded || user != null) {
			return invocation.invoke();
		}
		ac.put("tip", "您还没有登录!");
		// 直接返回 login 的逻辑视图
		return Action.LOGIN;
	}
}
