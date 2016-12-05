package com.chapelin.dao.impl;

import java.util.List;

import javax.management.RuntimeErrorException;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.chapelin.dao.ParticleDAO;
import com.chapelin.dao.PuserDAO;
import com.chapelin.domain.Particle;

@Repository
public class ParticleDAOImpl extends BaseDAOImpl implements ParticleDAO {

	@Transactional
	@Override
	public void save(Particle t) {
		getSession().save(t);
	}

	@Transactional
	@Override
	public void update(Particle t) {
		getSession().update(t);
	}

	@Transactional
	@Override
	public void delete(String id) {
		String hql = "DELETE Particle where id=:id";
		getSession().createQuery(hql).setString("id", id).executeUpdate();
	}

	@Override
	public Particle get(String id) {
		return (Particle) getSession().get(Particle.class, id);
	}

	@Override
	public List<Particle> query(int page, int size) {
		String hql = "FROM Particle";
		return getSession().createQuery(hql).setFirstResult((page - 1) * size)
				.setMaxResults(size).list();
	}
	
	public List<Particle> query() {
		String hql = "FROM Particle";
		return getSession().createQuery(hql).list();
	}

	public Integer getCount() {
		String hql = "SELECT COUNT(*) FROM Particle";
		return Integer.valueOf(getSession().createQuery(hql).list().get(0)
				.toString());
	}

	@Override
	public List<Particle> getArticle(String title) {
		String hql = "FROM Particle where title like '%" + title + "%'";
		return getSession().createQuery(hql).list();

	}
}
