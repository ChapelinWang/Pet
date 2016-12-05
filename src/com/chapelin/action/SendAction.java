package com.chapelin.action;

import java.net.URLDecoder;
import java.net.URLEncoder;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class SendAction extends ActionSupport {
	@Override
	public String execute() throws Exception {
		String sc = ServletActionContext.getRequest().getParameter("sc");
		String s="";
		if (sc != null) {
			s=new String(sc.getBytes("ISO-8859-1"),"UTF-8");
		}
		ServletActionContext.getRequest().setAttribute("sc", s);
		return SUCCESS;
	}
}
