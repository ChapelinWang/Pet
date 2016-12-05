package com.chapelin.dao.impl;

import java.util.List;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chapelin.dao.PcommentDAO;
import com.chapelin.domain.Pcomment;

@Repository
public class PcommentDAOImpl extends BaseDAOImpl implements PcommentDAO {
	@Transactional
	@Override
	public void save(Pcomment t) {
		getSession().save(t);
	}

	@Transactional
	@Override
	public void update(Pcomment t) {
		getSession().update(t);
	}

	@Transactional
	@Override
	public void delete(String id) {
		String hql = "DELETE Pcomment where id=:id";
		getSession().createQuery(hql).setString("id", id).executeUpdate();
	}

	@Override
	public Pcomment get(String id) {
		return (Pcomment) getSession().get(Pcomment.class, id);
	}

	@Override
	public List<Pcomment> query(int page, int size) {
		String hql = "FROM Pcomment";
		return getSession().createQuery(hql).setFirstResult((page - 1) * size)
				.setMaxResults(size).list();
	}

	public int getCount() {
		String hql = "SELECT COUNT(*) FROM Pcomment";
		return Integer.valueOf(getSession().createQuery(hql).list().get(0)
				.toString());
	}

	@Override
	public List<Pcomment> getComment(String name) {
		String hql = "FROM Pcomment where commentcontent like '%" + name + "%'";
		return getSession().createQuery(hql).list();
	}

	@Override
	public List<Pcomment> getCommentByArticleid(String articleid) {
		String hql = "FROM Pcomment where articleid=:articleid";
		return getSession().createQuery(hql).setString("articleid", articleid)
				.list();
	}
}
