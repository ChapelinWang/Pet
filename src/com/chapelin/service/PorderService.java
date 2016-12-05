package com.chapelin.service;

import java.util.List;

import com.chapelin.domain.Porder;

public interface PorderService extends BaseService<Porder>{

	public Integer getCount();

	public List<Porder> getOrder(String username);
	
}