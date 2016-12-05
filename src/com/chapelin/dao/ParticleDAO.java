package com.chapelin.dao;

import java.util.List;

import com.chapelin.domain.Particle;
import com.chapelin.domain.Puser;

public interface ParticleDAO extends BaseDAO<Particle> {
	Integer getCount();
	
	List<Particle> getArticle(String title);
	
	List<Particle> query();
}
