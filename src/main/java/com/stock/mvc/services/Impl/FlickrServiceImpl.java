package com.stock.mvc.services.Impl;

import java.io.InputStream;

import com.stock.mvc.dao.IFlickrDao;
import com.stock.mvc.services.IFlickrService;

public class FlickrServiceImpl implements IFlickrService {

	IFlickrDao dao;
	
	public void setDao(IFlickrDao dao) {
		this.dao = dao;
	}
	
	@Override
	public String savePhoto(InputStream photo, String title) {
		return dao.savePhoto(photo, title);
	}

}
