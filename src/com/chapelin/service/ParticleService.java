package com.chapelin.service;

import java.util.List;

import com.chapelin.domain.Particle;
import com.chapelin.domain.Puser;

public interface ParticleService extends BaseService<Particle>{

	public Integer getCount();

	public List<Particle> getTitle(String title);
	
	public List<Particle> query();
}
