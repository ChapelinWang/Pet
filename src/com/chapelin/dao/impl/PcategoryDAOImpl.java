package com.chapelin.dao.impl;

import java.util.List;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chapelin.dao.PcategoryDAO;
import com.chapelin.domain.Pcategory;
@Repository
public class PcategoryDAOImpl extends BaseDAOImpl implements PcategoryDAO  {
	@Transactional
	@Override
	public void save(Pcategory t) {
		getSession().save(t);
	}
	@Transactional
	@Override
	public void update(Pcategory t) {
		getSession().update(t);
	}
	@Transactional
	@Override
	public void delete(String id) {
		String hql="DELETE Pcategory where id=:id";
		try {
			getSession().createQuery(hql).setString("id", id).executeUpdate();
		} catch (Exception e) {
			String hql2 = "DELETE Pcomment where categoryid=:categoryid";
			try {
				getSession().createQuery(hql2).setString("categoryid", id).executeUpdate();
				getSession().createQuery(hql).setString("id", id)
						.executeUpdate();
			} catch (Exception e2) {
				throw new RuntimeException("删除Category失败");
			}
		}
	}

	@Override
	public Pcategory get(String id) {
		return (Pcategory)getSession().get(Pcategory.class, id);
	}

	@Override
	public List<Pcategory> query(int page,int size) {
		String hql="FROM Pcategory";
		return getSession().createQuery(hql)
				.setFirstResult((page-1)*size).setMaxResults(size).list();
	}
	
	@Override
	public List<Pcategory> query() {
		String hql="FROM Pcategory";
		return getSession().createQuery(hql).list();
				
	}
	
	public int getCount(){
		String hql="SELECT COUNT(*) FROM Pcategory";
		return  Integer.valueOf(getSession().createQuery(hql).list().get(0).toString());
	}
	@Override
	public List<Pcategory> getCategory(String name) {
		
		String hql = "FROM Pcategory where type like '%"+name+"%'";
		return getSession().createQuery(hql).list();
	}
	public List<Pcategory> getCategoryByName(String name) {
		
		String hql = "FROM Pcategory where type = '"+name+"'";
		return getSession().createQuery(hql).list();
	}
}
