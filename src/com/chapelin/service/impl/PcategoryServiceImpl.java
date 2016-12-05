package com.chapelin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.chapelin.dao.BaseDAO;
import com.chapelin.dao.PcategoryDAO;
import com.chapelin.domain.Pcategory;
import com.chapelin.domain.Pcomment;
import com.chapelin.domain.Puser;
import com.chapelin.service.PcategoryService;
import com.chapelin.service.PcommentService;

@Service
public class PcategoryServiceImpl implements PcategoryService{
	
	@Resource
	public PcategoryDAO pcategoryDAO;
	
	@Override
	public void save(Pcategory t) {
		pcategoryDAO.save(t);
	}

	@Override
	public void update(Pcategory t) {
		pcategoryDAO.update(t);
	}

	@Override
	public void delete(String id) {
		pcategoryDAO.delete(id);
	}

	@Override
	public Pcategory get(String id) {
		return pcategoryDAO.get(id);
	}

	@Override
	public List<Pcategory> query(int page,int size) {
		return pcategoryDAO.query(page,size);
	}

	@Override
	public int getCount() {
		return pcategoryDAO.getCount();
	}

	public List<Pcategory> getCategory(String name) {
		return pcategoryDAO.getCategory(name);
	}

	@Override
	public List<Pcategory> query() {
		return pcategoryDAO.query();
	}
	/**
	 * 精确查找
	 * @param name
	 * @return
	 */
	public List<Pcategory> getCategoryByName(String name){
		return pcategoryDAO.getCategoryByName(name);
	}


}
