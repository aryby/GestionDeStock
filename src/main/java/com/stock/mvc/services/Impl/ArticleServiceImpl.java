package com.stock.mvc.services.Impl;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.stock.mvc.dao.IArticleDao;
import com.stock.mvc.entities.Article;
import com.stock.mvc.services.IArticleService;

@Transactional
public class ArticleServiceImpl implements IArticleService {

	IArticleDao dao;
	
	public void setDao(IArticleDao dao) {
		this.dao = dao;
	}
	
	@Override
	public Article save(Article entity) {
		return dao.save(entity);
	}

	@Override
	public Article update(Article entity) {
		return dao.update(entity);
	}

	@Override
	public List<Article> selectAll() {
		return dao.selectAll();
	}

	@Override
	public List<Article> selectAll(String sortField, String sort) {
		return dao.selectAll(sortField, sort);
	}

	@Override
	public Article getById(Long id) {
		return dao.getById(id);
	}

	@Override
	public void remove(Long id) {
		dao.remove(id);
	}

	@Override
	public Article findOne(String paramName, Object paramValue) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Article findOne(String[] paramNames, Object[] paramValues) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int findCountBy(String paramName, String paramValue) {
		// TODO Auto-generated method stub
		return 0;
	}

}
