package com.chapelin.dao.impl;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chapelin.dao.PuserDAO;
import com.chapelin.domain.Puser;

@Repository
public class PuserDAOImpl extends BaseDAOImpl implements PuserDAO {

	@Transactional
	@Override
	public void save(Puser t) {
		getSession().save(t);
	}

	@Transactional
	@Override
	public void update(Puser t) {
		getSession().update(t);
	}

	@Transactional
	@Override
	public void delete(String id) {
		String hql = "DELETE Puser where id=:id";
		try {
			getSession().createQuery(hql).setString("id", id).executeUpdate();
		} catch (Exception e) {
			String hql2 = "DELETE Pcomment where userid=:userid";
			try {
				getSession().createQuery(hql2).setString("userid", id)
						.executeUpdate();
				getSession().createQuery(hql).setString("id", id)
						.executeUpdate();
			} catch (Exception e2) {
				throw new RuntimeException("删除User失败");
			}
		}
	}

	@Override
	public Puser get(String id) {
		return (Puser) getSession().get(Puser.class, id);
	}

	@Override
	public List<Puser> query(int page, int size) {
		String hql = "FROM Puser";
		return getSession().createQuery(hql).setFirstResult((page - 1) * size)
				.setMaxResults(size).list();
	}

	public Integer getCount() {
		String hql = "SELECT COUNT(*) FROM Puser";
		return Integer.valueOf(getSession().createQuery(hql).list().get(0)
				.toString());
	}

	@Override
	public List<Puser> getUser(String username) {
		String hql = "FROM Puser where username like '%"+username+"%'";
		return getSession().createQuery(hql).list();

	}
	
	@Override
	public List<Puser> getUserByName(String username) {
		String hql = "FROM Puser where username = '"+username+"'";
		return getSession().createQuery(hql).list();

	}
	
}
