package com.chapelin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chapelin.dao.PorderDAO;
import com.chapelin.dao.PuserDAO;
import com.chapelin.domain.Porder;
import com.chapelin.domain.Puser;
import com.chapelin.service.PorderService;
@Service
public class PorderServiceImpl implements PorderService{

	@Resource
	public PorderDAO porderDAO;

	public void save(Porder t) {
		porderDAO.save(t);
	}

	@Override
	public void update(Porder t) {
		porderDAO.update(t);
	}

	@Override
	public void delete(String id) {
		porderDAO.delete(id);
	}

	@Override
	public Porder get(String id) {
		return porderDAO.get(id);
	}

	@Override
	public List<Porder> query(int page,int size) {
		return porderDAO.query(page,size);
	}
	@Override
	public Integer getCount(){
		return porderDAO.getCount();
	}

	@Override
	public List<Porder> getOrder(String username) {
		return porderDAO.getOrder(username);
	}

}
