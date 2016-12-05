package com.chapelin.service;

import java.util.List;

/**
 * Service接口的基类
 * @author StudiousBird
 *
 * @param <T>
 */
public interface BaseService <T>{
	public void save(T t);
	public void update(T t);
	public void delete(String id);
	public T get(String id);
	public List<T> query(int page,int size);
}
