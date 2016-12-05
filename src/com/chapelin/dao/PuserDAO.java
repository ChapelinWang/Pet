package com.chapelin.dao;


import java.util.List;

import com.chapelin.domain.Pcategory;
import com.chapelin.domain.Puser;

public interface PuserDAO extends BaseDAO<Puser>{

	Integer getCount();
	
	List<Puser> getUser(String username);

	List<Puser> getUserByName(String username);

}
