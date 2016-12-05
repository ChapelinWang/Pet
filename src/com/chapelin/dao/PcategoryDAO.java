package com.chapelin.dao;

import java.util.List;

import com.chapelin.domain.Pcategory;

public interface PcategoryDAO extends BaseDAO<Pcategory>{
	int getCount();
	
	List<Pcategory> getCategory(String name);
	
	List<Pcategory> getCategoryByName(String name);
	
	List<Pcategory> query();
}
