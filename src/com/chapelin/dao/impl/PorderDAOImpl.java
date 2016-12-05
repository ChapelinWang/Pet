package com.chapelin.dao.impl;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chapelin.dao.PorderDAO;
import com.chapelin.domain.Porder;
import com.chapelin.domain.Puser;

@Repository
public class PorderDAOImpl extends BaseDAOImpl implements PorderDAO {
	@Transactional
	@Override
	public void save(Porder t) {
		getSession().save(t);
	}

	@Transactional
	public void update(Porder t) {
		getSession().update(t);
	}

	@Transactional
	public void delete(String id) {
		String hql = "DELETE Porder where orderid=:id";
		getSession().createQuery(hql).setString("id", id).executeUpdate();
	}

	public Porder get(String id) {
		return (Porder) getSession().get(Porder.class, id);
	}

	public List<Porder> query(int page, int size) {
		String hql = "FROM Porder";
		return getSession().createQuery(hql).setFirstResult((page - 1) * size)
				.setMaxResults(size).list();
	}

	public Integer getCount() {
		String hql = "SELECT COUNT(*) FROM Porder";
		return Integer.valueOf(getSession().createQuery(hql).list().get(0)
				.toString());
	}

	@Override
	public List<Porder> getOrder(String username) {
		String hql = "FROM Porder as p where p.puser.username like '%"
				+ username + "%'";
		return getSession().createQuery(hql).list();

	}

}
