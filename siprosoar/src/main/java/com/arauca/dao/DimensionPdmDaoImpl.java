package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.DimensionPdm;

public class DimensionPdmDaoImpl implements DimensionPdmDao {


	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final DimensionPdm pDimensionPdm) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pDimensionPdm);
		tx.commit();
		Serializable id = session.getIdentifier(pDimensionPdm);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<DimensionPdm> getList() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<DimensionPdm> dimensionPdmList = session.createQuery("from Dimension_pdm")  
		    .list();  
		  session.close();  
		  return dimensionPdmList;
	}

	@Override
	@Transactional
	public DimensionPdm getRowById(final int pId) {
		  Session session = sessionFactory.openSession();  
		  DimensionPdm dimensionPdm = (DimensionPdm) session.load(DimensionPdm.class, pId);  
		  return dimensionPdm;  
	}

	@Override
	@Transactional
	public int updateRow(final DimensionPdm pDimensionPdm) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(pDimensionPdm);  
		  tx.commit();  
		  Serializable id = session.getIdentifier(pDimensionPdm);  
		  session.close();  
		  return (Integer) id; 
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  DimensionPdm dimensionPdm = (DimensionPdm) session.load(DimensionPdm.class, pId);  
		  session.delete(dimensionPdm);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(dimensionPdm);  
		  session.close();  
		  return (Integer) ids;  
	}

	public SessionFactory getSessionFactory() {
		return sessionFactory;
	}

	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}



}
