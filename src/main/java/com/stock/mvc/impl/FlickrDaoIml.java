package com.stock.mvc.impl;

import java.io.InputStream;

import javax.swing.JOptionPane;

import org.scribe.model.Token;
import org.scribe.model.Verifier;

import com.flickr4java.flickr.Flickr;
import com.flickr4java.flickr.FlickrException;
import com.flickr4java.flickr.REST;
import com.flickr4java.flickr.RequestContext;
import com.flickr4java.flickr.auth.Auth;
import com.flickr4java.flickr.auth.AuthInterface;
import com.flickr4java.flickr.auth.Permission;
import com.flickr4java.flickr.uploader.UploadMetaData;
import com.stock.mvc.dao.IFlickrDao;



public class FlickrDaoIml implements IFlickrDao{


	private Flickr flickr;
	private UploadMetaData uploadMetaData = new UploadMetaData();
	private String apiKey = "a7799016d0ad4243736f9e78636dba81";
	private String sharedSecret = "4334a7f8f07dc17a";
	
	public void connect() {
		flickr = new Flickr(apiKey, sharedSecret, new REST());
		Auth auth = new Auth();
		auth.setPermission(Permission.READ);
		auth.setToken("72157704425486584-0eaa71cf22a7ad20");
		auth.setTokenSecret("e07540f3197d942b");
		RequestContext requestContext = RequestContext.getRequestContext();
		requestContext.setAuth(auth);
		flickr.setAuth(auth);	
	}
	
	@Override
	public String savePhoto(InputStream photo, String title){
		connect();
		uploadMetaData.setTitle(title);
		String photoId = "";
		try {
			photoId = flickr.getUploader().upload(photo, uploadMetaData);
		} catch (FlickrException e) {
			e.printStackTrace();
		}
		try {
			return flickr.getPhotosInterface().getPhoto(photoId).getMedium640Url();
		} catch (FlickrException e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public void auth() {
		flickr = new Flickr(apiKey, sharedSecret, new REST());
		AuthInterface authInterface = flickr.getAuthInterface();
		Token token = authInterface.getRequestToken();
		System.out.println("token : "+token);
		
		String url =authInterface.getAuthorizationUrl(token, Permission.DELETE);
		System.out.println("flow this url to autorize yourself on flickr");
		System.out.println(url);
		System.out.println("past in the tokrn it give you");
		System.out.println(">>");
		
		String tokenKey = JOptionPane.showInputDialog(null);
		Token requestToken = authInterface.getAccessToken(token, new Verifier(tokenKey));
		Auth auth = null;
		
		try {
			auth = authInterface.checkToken(requestToken);
		} catch (FlickrException e) {
			e.printStackTrace();
		}
		System.out.println("token : "+requestToken.getToken());
		System.out.println("secret : "+requestToken.getSecret());
		System.out.println("nsid  : "+auth.getUser().getId());
		System.out.println("reslname : "+auth.getUser().getRealName());
		System.out.println("username : "+auth.getUser().getUsername());
		//System.out.println("permission : "auth.getPermission().getType());
	}
}
