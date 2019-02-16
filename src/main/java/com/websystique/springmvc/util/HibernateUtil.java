package com.websystique.springmvc.util;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.io.Serializable;
import java.util.List;

/**
 * @author Ranga Reddy
 * @version 1.0
 */
@Repository
public class HibernateUtil {

	@Autowired
    private SessionFactory sessionFactory;

  @SuppressWarnings("rawtypes")
  public <T> List fetchAll(String query) {
    return sessionFactory.getCurrentSession().createSQLQuery(query).list();
  }

}
