package com.chapelin.dao;

import java.util.List;

import com.chapelin.domain.Porder;
import com.chapelin.domain.Puser;

public interface PorderDAO extends BaseDAO<Porder>{

	List<Porder> getOrder(String username);
	
	Integer getCount();

}
