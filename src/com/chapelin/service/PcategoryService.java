package com.chapelin.service;

import java.util.List;

import com.chapelin.domain.Pcategory;

public interface PcategoryService extends BaseService<Pcategory> {

	int getCount();

	List<Pcategory> getCategory(String name);

	public List<Pcategory> getCategoryByName(String name);

	List<Pcategory> query();
}
