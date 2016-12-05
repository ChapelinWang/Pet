package com.chapelin.interceptor;

import com.chapelin.domain.Puser;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.AbstractInterceptor;

public class LoginInterceptor extends AbstractInterceptor {

	@Override
	public String intercept(ActionInvocation ai) throws Exception {
		Puser user = (Puser) ai.getInvocationContext().getSession().get("user");
		if (user == null) {
			ActionContext ac = ai.getInvocationContext();
			ac.put("err", "你还未登录，请登录");
			return "login";
		} else {
			return ai.invoke();
		}

	}

}
