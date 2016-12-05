package com.chapelin.dao;

import java.util.List;

import com.chapelin.domain.Pcomment;

public interface PcommentDAO extends BaseDAO<Pcomment> {
	int getCount();

	List<Pcomment> getComment(String name);
	
	List<Pcomment> getCommentByArticleid(String articleid);
}
