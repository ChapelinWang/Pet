package com.chapelin.action;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.annotation.Resource;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.chapelin.domain.Pcategory;
import com.chapelin.domain.Puser;
import com.chapelin.service.PcategoryService;
import com.chapelin.service.PuserService;
import com.opensymphony.xwork2.ModelDriven;

public class AjaxAction extends BaseAction {

	@Resource
	public PuserService puserService;

	@Resource
	public PcategoryService pcategoryService;
	

	public String checkPet() {
		String arg = ServletActionContext.getRequest().getParameter("arg");
		pageMap = new HashMap<String, Object>();
		try {
			arg = new String(arg.getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("字符转换异常");
		}
		List list = new ArrayList<Pcategory>();
		if (arg != null)
			list = pcategoryService.getCategoryByName(arg);
		if (arg.equals("")) {
			pageMap.put("type", "抱歉!请输入宠物名称");
			pageMap.put("flag", false);
		} else {
			if (list.size() != 0) {
				pageMap.put("type", "抱歉!该宠物已经添加");
				pageMap.put("flag", false);
			} else {
				pageMap.put("type", "恭喜!该宠物可以添加");
				pageMap.put("flag", true);
			}
		}
		return "jsonMap";
	}

	public String checkPrice() {
		String arg = ServletActionContext.getRequest().getParameter("arg");
		pageMap = new HashMap<String, Object>();
		try {
			Double.parseDouble(arg);
			pageMap.put("type", "恭喜!填写正确");
			pageMap.put("flag", true);
		} catch (Exception e) {
			pageMap.put("type", "抱歉!请输入数字");
			pageMap.put("flag", false);
		}
		return "jsonMap";
	}
	
	public String checkUser() {
		String arg = ServletActionContext.getRequest().getParameter("arg");
		pageMap = new HashMap<String, Object>();
		try {
			arg = new String(arg.getBytes("iso-8859-1"), "utf-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("字符转换异常");
		}
		List list = new ArrayList<Puser>();
		if (arg != null)
			list = puserService.getUserByName(arg);
		if (arg.equals("")) {
			pageMap.put("type", "抱歉!请输入用户名称");
			pageMap.put("flag", false);
		} else {
			if (list.size() != 0) {
				pageMap.put("type", "抱歉!该用户已经注册");
				pageMap.put("flag", false);
			} else {
				pageMap.put("type", "恭喜!可以使用该用户");
				pageMap.put("flag", true);
			}
		}
		return "jsonMap";
	}
	
	public String checkEmail() {
		String arg = ServletActionContext.getRequest().getParameter("arg");
		pageMap = new HashMap<String, Object>();
		
	      String pattern = "\\w+@\\w+\\.\\w+";
	 
	      // 创建 Pattern 对象
	      Pattern r = Pattern.compile(pattern);
	 
	      // 现在创建 matcher 对象
	      Matcher m = r.matcher(arg);
	      if (m.find( )) {
	    	  pageMap.put("type", "恭喜!邮箱格式正确");
	    	  pageMap.put("flag", true);
	      } else {
	    	  pageMap.put("type", "抱歉!邮箱格式错误");
	    	  pageMap.put("flag", false);
	      }
		return "jsonMap";
	}

}
