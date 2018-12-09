package com.stock.mvc;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import com.stock.mvc.impl.FlickrDaoIml;

public class Test {

	public static void main(String[] args) {

	FlickrDaoIml flickr = new FlickrDaoIml();
	//flickr.auth();
	
	try {
		InputStream stream  = new FileInputStream(new File("D:\\image036.png"));
		String url = flickr.savePhoto(stream, "image de test appliv=cation java ee");
		System.out.println("url : "+url);
	} catch (FileNotFoundException e) {
		e.printStackTrace();
	}
	
	
	}

}
