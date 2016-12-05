package com.chapelin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.chapelin.dao.ParticleDAO;
import com.chapelin.domain.Particle;
import com.chapelin.service.ParticleService;

@Service
public class ParticleServiceImpl implements ParticleService {

	@Resource
	public ParticleDAO particleDao;

	@Override
	public void save(Particle t) {
		particleDao.save(t);
	}

	@Override
	public void update(Particle t) {
		particleDao.update(t);
	}

	@Override
	public void delete(String id) {
		particleDao.delete(id);
	}

	@Override
	public Particle get(String id) {
		return particleDao.get(id);
	}

	@Override
	public List<Particle> query(int page, int size) {
		return particleDao.query(page, size);
	}

	@Override
	public Integer getCount() {
		return particleDao.getCount();
	}

	@Override
	public List<Particle> getTitle(String title) {
		return particleDao.getArticle(title);
	}

	public List<Particle> query() {
		return particleDao.query();
	}

}
