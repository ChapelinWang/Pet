package com.chapelin.dao.impl;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import com.chapelin.dao.BaseDAO;
import com.chapelin.service.BaseService;
@SuppressWarnings("unchecked")
@Repository
@Lazy(true)
public class BaseDAOImpl{
	
	@Resource
	private SessionFactory sessionFactory;
	
	protected Session getSession() {
		return sessionFactory.getCurrentSession();
	}

}
