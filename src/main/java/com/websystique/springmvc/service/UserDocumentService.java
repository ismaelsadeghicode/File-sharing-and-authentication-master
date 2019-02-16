package com.websystique.springmvc.service;

import com.websystique.springmvc.model.UserDocument;

import java.util.List;

public interface UserDocumentService {

	UserDocument findById(int id);

	List<UserDocument> findAll();

	List<UserDocument> findAll(String documentName);

	List<UserDocument> findAllByUserId(int id);
	
	void saveDocument(UserDocument document);
	
	void deleteById(int id);

}
