package com.chapelin.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSenderImpl;

import com.chapelin.domain.Puser;
import com.chapelin.service.PuserService;
import com.mchange.net.MailSender;
import com.opensymphony.xwork2.ModelDriven;

public class PuserAction extends BaseAction implements ModelDriven<Puser> {


	@Resource
	public PuserService puserService;

	private Puser puser = new Puser();

	@Override
	public Puser getModel() {
		return puser;
	}

	/**
	 * 查询所有用户返回JSON
	 * 
	 * @return
	 */
	public String queryUser() {
		List<Puser> list = puserService.query(page, rows);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", puserService.getCount());
		return "jsonMap";
	}

	/**
	 * 通过id查询用户
	 * 
	 * @return
	 */
	public String searchUser() {
		String id = ServletActionContext.getRequest().getParameter("userid");
		Puser user = puserService.get(id);
		ServletActionContext.getRequest().setAttribute("user", user);
		return "input";
	}

	/**
	 * 添加用户信息
	 * 
	 * @param username
	 * @param password
	 * @param email
	 * @return
	 */
	public String insertUser() {
		List list = puserService.getUserByName(puser.getUsername());
		if (list.size() != 0) {
			request.put("message", "表单格式不正确");
		} else {
			puserService.save(puser);
			pageMap = new HashMap<String, Object>();
			request.put("message", "添加成功!");
		}
		return "input";
	}

	/**
	 * 根据Id删除User 返回JSON
	 * 
	 * @param username
	 * @return
	 */
	public String delUser() {
		String ids = ServletActionContext.getRequest().getParameter("id");
		String[] arr = ids.split(",");
		for (String str : arr) {
			if (str == null || str.equals("")) {
			} else {
				puserService.delete(str);
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
	public String editUser() {
		puserService.update(puser);
		pageMap = new HashMap<String, Object>();
		request.put("message", "修改成功!");
		return "input";
	}

	/**
	 * 根据关键字，查询，返回JSON
	 * 
	 * @return
	 */
	public String findUser() {
		String username = ServletActionContext.getRequest().getParameter("sc");
		try {
			username = new String(username.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("字符转换异常");
		}
		List<Puser> list = puserService.getUser(username);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", puserService.getCount());
		return "jsonMap";
	}

	/**
	 * 处理登录
	 * 
	 * @return
	 */
	public String login() {
		String username = puser.getUsername();
		String password = puser.getUserpassword();
		if (username == null || password == null) {
			username = "";
			password = "";
		}
		// 判断是否存在用户
		if (puserService.getUserByName(username) == null
				|| puserService.getUserByName(username).size() <= 0) {
			request.put("err", "用户名或密码错误！");
			return "login";
		} else {
			Puser userdata = puserService.getUserByName(username).get(0);
			// 判断账号密码是否相同
			if (userdata.getUserpassword().equals(password)) {
				ServletActionContext.getContext().getSession()
						.put("user", userdata);
				if (userdata.getPower() == null) {
					userdata.setPower("");
				}
				// 判断用户权限
				if (userdata.getPower().equals("root")) {
					return "admin";
				} else {
					return "index";
				}
			} else {
				request.put("err", "用户名或密码错误！");
				return "login";
			}
		}
	}

	// 注销
	public String logout() {
		Map<String, Object> session = ServletActionContext.getContext()
				.getSession();
		if (session.get("user") != null) {
			session.remove("user");
		}
		return "index";
	}

	/**
	 * 注册成功跳转主页
	 * 
	 * @return
	 */
	public String regist() {

		List<Puser> userlist = puserService.getUserByName(puser.getUsername());
		System.out.println(userlist.size());
		if (userlist.size()==0) {
			puserService.save(puser);
			session.put("user", puser);
			return "index";
		} else {
			ServletActionContext.getRequest().setAttribute("err", "你的账号已被注册");
			return "login";
		}

	}


}
