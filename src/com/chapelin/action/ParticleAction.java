package com.chapelin.action;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.faces.application.Application;
import javax.servlet.Servlet;

import org.apache.struts2.ServletActionContext;
import org.jboss.weld.context.ApplicationContext;

import com.chapelin.domain.Particle;
import com.chapelin.domain.Particle;
import com.chapelin.domain.Pcomment;
import com.chapelin.domain.Puser;
import com.chapelin.service.ParticleService;
import com.chapelin.service.PcommentService;
import com.chapelin.service.PuserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ModelDriven;

public class ParticleAction extends BaseAction implements ModelDriven<Particle> {

	@Resource
	public ParticleService particleService;

	@Resource
	public PcommentService pcommentService;

	private Particle particle = new Particle();

	@Override
	public Particle getModel() {
		return particle;
	}

	/**
	 * 查询所有文章返回JSON
	 * 
	 * @return
	 */
	public String queryArticle() {
		List<Particle> list = particleService.query(page, rows);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", particleService.getCount());
		return "jsonMap";
	}

	/**
	 * 查询所有文章返回list
	 * 
	 * @return
	 */
	public String selectArticle() {
		List<Particle> list = particleService.query();
		request.put("list", list);
		return "input";
	}

	/**
	 * 通过id查询文章
	 * 
	 * @return
	 */
	public String searchArticle() {
		String id = ServletActionContext.getRequest().getParameter("articleid");
		Particle particle = particleService.get(id);
		List<Pcomment> list = pcommentService.getCommentByArticleid(id);
		ServletActionContext.getRequest().setAttribute("list", list);
		ServletActionContext.getRequest().setAttribute("particle", particle);
		return "input";
	}

	/**
	 * 添加文章信息
	 * 
	 * @param username
	 * @param password
	 * @param email
	 * @return
	 */
	public String insertArticle() {
//		String userid = ServletActionContext.getRequest()
//				.getParameter("user");
//		if (userid == null)
//			userid = "";
//		Puser user = new Puser();
		Puser user=(Puser) ActionContext.getContext().getSession().get("user");
		particle.setPuser(user);
		particleService.save(particle);
		pageMap = new HashMap<String, Object>();
		request.put("message", "添加成功!");
		return "input";
	}

	/**
	 * 根据Id删除Article 返回JSON
	 * 
	 * @param username
	 * @return
	 */
	public String delArticle() {
		String ids = ServletActionContext.getRequest().getParameter("id");
		String[] arr = ids.split(",");
		for (String str : arr) {
			if (str == null || str.equals("")) {
			} else {
				particleService.delete(str);
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
	public String editArticle() {
		String userid = ServletActionContext.getRequest()
				.getParameter("userid");
		Puser user = new Puser();
		user.setUserid(userid);
		particle.setPuser(user);
		particleService.update(particle);
		pageMap = new HashMap<String, Object>();
		request.put("message", "修改成功!");
		return "input";
	}

	/**
	 * 根据关键字，查询，返回JSON
	 * 
	 * @return
	 */
	public String findArticle() {
		String title = ServletActionContext.getRequest().getParameter("sc");
		try {
			title = new String(title.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("字符转换异常");
		}
		List<Particle> list = particleService.getTitle(title);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", particleService.getCount());
		return "jsonMap";
	}

}
