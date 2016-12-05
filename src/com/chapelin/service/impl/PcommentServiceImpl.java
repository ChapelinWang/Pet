package com.chapelin.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import com.chapelin.dao.BaseDAO;
import com.chapelin.dao.PcommentDAO;
import com.chapelin.domain.Pcomment;
import com.chapelin.domain.Puser;
import com.chapelin.service.PcommentService;

@Service
public class PcommentServiceImpl implements PcommentService {

	@Resource
	public PcommentDAO pcommentDAO;

	@Override
	public void save(Pcomment t) {
		pcommentDAO.save(t);
	}

	@Override
	public void update(Pcomment t) {
		pcommentDAO.update(t);
	}

	@Override
	public void delete(String id) {
		pcommentDAO.delete(id);
	}

	@Override
	public Pcomment get(String id) {
		return pcommentDAO.get(id);
	}

	@Override
	public List<Pcomment> query(int page,int size) {
		return pcommentDAO.query(page,size);
	}
	
	public int getCount(){
		return pcommentDAO.getCount();
	}

	@Override
	public List<Pcomment> getComment(String name) {
		return pcommentDAO.getComment(name);
	}

	@Override
	public List<Pcomment> getCommentByArticleid(String articleid) {
		return pcommentDAO.getCommentByArticleid(articleid);
	}
}
