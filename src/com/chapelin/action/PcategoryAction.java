package com.chapelin.action;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Set;

import javax.annotation.Resource;

import org.apache.struts2.ServletActionContext;

import com.chapelin.domain.Pcategory;
import com.chapelin.domain.Pcomment;
import com.chapelin.domain.Puser;
import com.chapelin.service.PcategoryService;
import com.chapelin.service.PuserService;
import com.opensymphony.xwork2.ModelDriven;

public class PcategoryAction extends BaseAction implements
		ModelDriven<Pcategory> {
	  

	
	@Resource
	PcategoryService pcategoryService;
	
	@Resource
	PuserService puserService;
	

	Pcategory pcategory = new Pcategory();

	@Override
	public Pcategory getModel() {
		// TODO Auto-generated method stub
		return pcategory;
	}

	/**
	 * 查询所有宠物返回JSON
	 * 
	 * @return
	 */
	public String queryPet() {
		List<Pcategory> list = pcategoryService.query(page, rows);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", pcategoryService.getCount());
		return "jsonMap";
	}

	/**
	 * 查询所有宠物返回list
	 * 
	 * @return
	 */
	public String selectPet() {
		List<Pcategory> list = pcategoryService.query();
		request.put("list", list);
		return "input";
	}

	/**
	 * 添加宠物
	 * 
	 * @return
	 * @throws IOException 
	 */
	public String insertPet() {
		
		pcategoryService.save(pcategory);
		request.put("message", "添加成功!");
		return "input";
	}

	/**
	 * 根据id删除宠物
	 * 
	 * @return
	 */
	public String delPet() {
		String ids = ServletActionContext.getRequest().getParameter("id");
		String[] arr = ids.split(",");
		for (String str : arr) {
			if (str == null || str.equals("")) {
			} else {
				pcategoryService.delete(str);
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
	public String findPet() {
		String name = ServletActionContext.getRequest().getParameter("sc");
		try {
			name = new String(name.getBytes("ISO-8859-1"), "UTF-8");
		} catch (UnsupportedEncodingException e) {
			throw new RuntimeException("字符转换异常");
		}
		List<Pcategory> list = pcategoryService.getCategory(name);
		pageMap = new HashMap<String, Object>();
		pageMap.put("rows", list);
		pageMap.put("total", pcategoryService.getCount());
		return "jsonMap";
	}

	/**
	 * 通过id查询宠物
	 * 
	 * @return
	 */
	public String searchCategory() {
		String id = ServletActionContext.getRequest()
				.getParameter("categoryid");
		
		Pcategory category = pcategoryService.get(id);
		ServletActionContext.getRequest().setAttribute("category", category);
		return "input";
	}

	/**
	 * 修改宠物信息
	 * 
	 * @return
	 */
	public String editCategory() {
		pcategoryService.update(pcategory);
		pageMap = new HashMap<String, Object>();
		request.put("message", "修改成功!");
		return "input";
	}

	/**
	 * 处理订单
	 * 
	 * @return
	 */
	public String order() {
		String id = ServletActionContext.getRequest().getParameter("categoryid");
		Pcategory pet = pcategoryService.get(id);
		Puser user = (Puser) session.get("user");
		String userid = "";
		if (user == null) {
			userid = "402862815830ae66015830c377e70000";
		} else {
			userid = user.getUserid();
		}
		request.put("userid", userid);
		request.put("user", user);
		request.put("pet", pet);
		return "input";
	}
	

}
