package com.chapelin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.chapelin.dao.PuserDAO;
import com.chapelin.domain.Puser;
import com.chapelin.service.PuserService;

@Service
public class PuserServiceImpl implements PuserService {

	@Resource
	public PuserDAO puserDAO;

	@Override
	public void save(Puser t) {
		puserDAO.save(t);
	}

	@Override
	public void update(Puser t) {
		puserDAO.update(t);
	}

	@Override
	public void delete(String id) {
		puserDAO.delete(id);
	}

	@Override
	public Puser get(String id) {
		return puserDAO.get(id);
	}

	@Override
	public List<Puser> query(int page,int size) {
		return puserDAO.query(page,size);
	}
	@Override
	public Integer getCount(){
		return puserDAO.getCount();
	}

	@Override
	public List<Puser> getUser(String username) {
		return puserDAO.getUser(username);
	}

	@Override
	public List<Puser> getUserByName(String username) {
		return puserDAO.getUserByName(username);
	}

}
