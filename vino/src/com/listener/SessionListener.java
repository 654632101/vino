package com.listener;

import javax.servlet.ServletRequestEvent;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import org.apache.struts2.ServletActionContext;

import com.onLine.OnlineStatistics;

public class SessionListener implements HttpSessionListener,
		HttpSessionAttributeListener {
	@Override
	public void sessionCreated(HttpSessionEvent event) {
		HttpSession ses = event.getSession();
		String name = (String) ses.getAttribute("user");
		System.out.println("name === > " + name);
		String id = ses.getId() + ses.getCreationTime();
		String session_id = ses.getId();
		ses.setAttribute("loginToken", session_id);
		System.out.println("sessionId : " + session_id);
		// String remoteAddr =
		// ServletActionContext.getRequest().getRemoteAddr();
		// System.out.println("获取登录人IP地址 ： " + remoteAddr);
		// SummerConstant.UserMap.put(id, Boolean.TRUE); // 添加用户
		System.out.println("添加了一个session用户！");
	}

	@Override
	public void sessionDestroyed(HttpSessionEvent event) {
		HttpSession ses = event.getSession();
//		String  loginToken = (String) ses.getAttribute("loginToken");
//		System.out.println("自动销毁session的id ： " + loginToken);
//		String id = ses.getId() + ses.getCreationTime();
//		System.out.println("销毁了一个session用户！");
//		if (ses.getAttribute("user") != null) {
//			String user_name = (String) ses.getAttribute("user");
//			System.out.println("销毁登录用户 " + user_name);
//		} else {
//			System.out.println("销毁匿名登录用户。");
//		}
//		synchronized (this) {
//			// SummerConstant.USERNUM--; // 用户数减一
//			// SummerConstant.UserMap.remove(id); // 从用户组中移除掉，用户组为一个map
//			System.out.println("synchronized  销毁了一个session用户！");
//		}
	}

	/**
	 * 用户退出登录(销毁session属性时)
	 */
	public void attributeRemoved(HttpSessionBindingEvent se) {
		System.out.println("session 名字 : " + se.getName());
		String loginToken = (String) se.getSession().getAttribute("loginToken");
		System.out.println("loginToken =============> " + loginToken);
		int old_count = OnlineStatistics.getOnlineVisitors();
		System.out.println("在线用户 " + old_count + "在线。");
		OnlineStatistics.decrease();
		int count = OnlineStatistics.getOnlineVisitors();
		System.out.println("在线用户 " + count + "在线。");
	}

	@Override
	public void attributeAdded(HttpSessionBindingEvent arg0) {
		OnlineStatistics.increase();
		System.out.println("attributeAdded");
	}

	@Override
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
		System.out.println("attributeReplaced");
	}
}