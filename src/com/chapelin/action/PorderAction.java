package com.chapelin.action;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import com.chapelin.domain.Pcategory;
import com.chapelin.domain.Porder;
import com.chapelin.domain.Puser;
import com.chapelin.service.PorderService;
import com.opensymphony.xwork2.ModelDriven;

public class PorderAction extends BaseAction implements ModelDriven<Porder> {

	@Resource
	public PorderService porderService;

	private Porder porder = new Porder();

	@Override
	public Porder getModel() {
		return porder;
	}

	/**
	 * 查询所有用户返回JSON
	 * 
	 * @return
	 */
	public String queryOrder() {
		List<Porder> list = porderService.query(page, rows);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", porderService.getCount());
		return "jsonMap";
	}

	/**
	 * 通过id查询订单
	 * 
	 * @return
	 */
	public String searchOrder() {
		String id = ServletActionContext.getRequest().getParameter("orderid");
		Porder porder = porderService.get(id);
		ServletActionContext.getRequest().setAttribute("porder", porder);
		return "input";
	}

	/**
	 * 添加订单信息
	 * 
	 * @return
	 */
	public String insertOrder() {
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		porder.setOrdertime(ts);
		String userid = ServletActionContext.getRequest()
				.getParameter("userid");
		String categoryid = ServletActionContext.getRequest().getParameter(
				"categoryid");
		if (userid == null || userid.equals("")) {
		} else {
			System.out.println("111");
			Puser user = new Puser();
			user.setUserid(userid);
			porder.setPuser(user);
		}
		if (categoryid != null) {
			Pcategory pet = new Pcategory();
			pet.setCategoryid(categoryid);
			porder.setPcategory(pet);
		}
		porderService.save(porder);
		pageMap = new HashMap<String, Object>();
		request.put("message", "添加成功!");
		request.put("message2", "发送成功，请等待客服联系!");
		return "input";
	}

	/**
	 * 根据Id删除User 返回JSON
	 * 
	 * @param username
	 * @return
	 */
	public String delOrder() {
		String ids = ServletActionContext.getRequest().getParameter("id");
		String[] arr = ids.split(",");
		for (String str : arr) {
			if (str == null || str.equals("")) {
			} else {
				porderService.delete(str);
			}
		}
		pageMap = new HashMap<String, Object>();
		pageMap.put("result", true);
		return "jsonMap";
	}

	/**
	 * 修改用户
	 * 
	 * @return
	 */
	public String editOrder() {
		System.out.println(porder.getStatus() + "--"
				+ porder.getPuser().getUserid());
		request.put("message", "修改成功!");
		try {
			porderService.update(porder);
		} catch (Exception e) {
			request.put("message", "修改失败!");
		}
		pageMap = new HashMap<String, Object>();
		return "input";
	}

	/**
	 * 根据关键字，查询，返回JSON
	 * 
	 * @return
	 */
	public String findOrder() {
		String username = ServletActionContext.getRequest().getParameter("sc");
		try {
			username = new String(username.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("字符转换异常");
		}
		if (username == null || username.equals("")) {
			username = "";
		}
		List<Porder> list = porderService.getOrder(username);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", porderService.getCount());
		return "jsonMap";
	}

}
