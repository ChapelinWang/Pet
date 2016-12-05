package com.chapelin.service;

import java.util.List;

import com.chapelin.domain.Pcomment;

public interface PcommentService extends BaseService<Pcomment> {

	int getCount();

	List<Pcomment> getComment(String name);
	
	List<Pcomment> getCommentByArticleid(String articleid);
}
