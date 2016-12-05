package com.chapelin.service;

import java.util.List;

import com.chapelin.domain.Puser;

public interface PuserService extends BaseService<Puser>{

	public Integer getCount();

	public List<Puser> getUser(String username);
	
	public List<Puser> getUserByName(String username);
}
