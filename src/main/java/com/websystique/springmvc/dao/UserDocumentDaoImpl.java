package com.websystique.springmvc.dao;

import com.websystique.springmvc.model.UserDocument;
import com.websystique.springmvc.util.HibernateUtil;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.math.BigInteger;
import java.util.ArrayList;
import java.util.List;

@Repository("userDocumentDao")
public class UserDocumentDaoImpl extends AbstractDao<Integer, UserDocument> implements UserDocumentDao {

	@Autowired
	private HibernateUtil hibernateUtil;

	@SuppressWarnings("unchecked")
	public List<UserDocument> findAll() {
		Criteria crit = createEntityCriteria();
		return (List<UserDocument>)crit.list();
	}

	public void save(UserDocument document) {
		persist(document);
	}

	
	public UserDocument findById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<UserDocument> findAllByUserId(int userId){
		Criteria crit = createEntityCriteria();
		Criteria userCriteria = crit.createCriteria("user");
		userCriteria.add(Restrictions.eq("id", userId));
		return (List<UserDocument>)crit.list();
	}

	
	public void deleteById(int id) {
		UserDocument document =  getByKey(id);
		delete(document);
	}

	@Override
	public List<UserDocument> findAll(String documentName) {
		String query = "SELECT e.* FROM user_document e WHERE e.description like '%" + documentName + "%'";
		List<Object[]> documentObjects = hibernateUtil.fetchAll(query);
		List<UserDocument> documents = new ArrayList<UserDocument>();
		for (Object[] documentObject : documentObjects) {
			UserDocument document = new UserDocument();
			long id = ((BigInteger) documentObject[0]).longValue();
			long user_id = ((BigInteger) documentObject[1]).longValue();
			String name = (String) documentObject[2];
			String description = (String) documentObject[3];
			String type = (String) documentObject[4];
			byte[] content = (byte[]) documentObject[5];

			document.setId((int) id);
			document.setName(name);
			document.setDescription(description);
			document.setType(type);
			document.setContent(content);
			documents.add(document);
		}
		System.out.println(documents);
		return documents;
	}


}
