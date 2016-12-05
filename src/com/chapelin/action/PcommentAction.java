package com.chapelin.action;

import java.io.UnsupportedEncodingException;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import com.chapelin.domain.Particle;
import com.chapelin.domain.Pcategory;
import com.chapelin.domain.Pcomment;
import com.chapelin.domain.Puser;
import com.chapelin.service.PcommentService;
import com.opensymphony.xwork2.ModelDriven;
import com.sun.media.sound.PCMtoPCMCodec;

public class PcommentAction extends BaseAction implements ModelDriven<Pcomment> {

	@Resource
	PcommentService pcommentService;

	Pcomment pcomment = new Pcomment();

	@Override
	public Pcomment getModel() {
		return pcomment;
	}

	/**
	 * 查询所有评论返回JSON
	 * 
	 * @return
	 */
	public String queryComment() {
		List<Pcomment> list = pcommentService.query(page, rows);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", pcommentService.getCount());
		return "jsonMap";
	}

	/**
	 * 根据id删除评论
	 * 
	 * @return
	 */
	public String delComment() {
		String ids = ServletActionContext.getRequest().getParameter("id");
		String[] arr = ids.split(",");
		for (String str : arr) {
			if (str == null || str.equals("")) {
			} else {
				pcommentService.delete(str);
			}
		}
		pageMap = new HashMap<String, Object>();
		pageMap.put("result", true);
		return "jsonMap";
	}

	/**
	 * 根据关键字，查询，返回JSON
	 * 
	 * @return
	 */
	public String findComment() {
		String name = ServletActionContext.getRequest().getParameter("sc");
		try {
			name = new String(name.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("字符转换异常");
		}
		List<Pcomment> list = pcommentService.getComment(name);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", pcommentService.getCount());
		return "jsonMap";
	}

	public String insertComment() {
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		pcomment.setPtime(ts);
		String userid = ServletActionContext.getRequest()
				.getParameter("userid");
		String categoryid = ServletActionContext.getRequest().getParameter(
				"categoryid");
		String commentcontent = ServletActionContext.getRequest().getParameter(
				"commentcontent");
		if (commentcontent == null)
			commentcontent = "";
		if (userid == null || userid.equals("")) {
			//userid = "402862815830ae66015830c377e70000";
			ServletActionContext.getRequest().setAttribute("err", "请您先登录!");
			return "login";
		}
		if (categoryid != null) {
			Pcategory pcategory = new Pcategory();
			pcategory.setCategoryid(categoryid);
			pcomment.setPcategory(pcategory);
		}
		pcomment.setCommentcontent(commentcontent);
		Puser user = new Puser();
		user.setUserid(userid);
		pcomment.setPuser(user);
		pcommentService.save(pcomment);
		request.put("categoryid", categoryid);
		request.put("message", "发表成功!");
		return "specail";
	}
	
	public String insertCommentOfArticle(){
		Timestamp ts = new Timestamp(System.currentTimeMillis());
		pcomment.setPtime(ts);
		String userid = ServletActionContext.getRequest()
				.getParameter("userid");
		String articleid = ServletActionContext.getRequest().getParameter(
				"articleid");
		String commentcontent = ServletActionContext.getRequest().getParameter(
				"commentcontent");
		if (commentcontent == null)
			commentcontent = "";
		if (userid == null || userid.equals("")) {
			//userid = "402862815830ae66015830c377e70000";
			ServletActionContext.getRequest().setAttribute("err", "请您先登录!");
			return "login";
		}
		if(articleid==null)
			articleid="";
		pcomment.setArticleid(articleid);
		pcomment.setCommentcontent(commentcontent);
		Puser user = new Puser();
		user.setUserid(userid);
		pcomment.setPuser(user);
		pcommentService.save(pcomment);
		request.put("message", "发表成功!");
		return "specail2";
	}
}
