package com.arauca.dao;

import java.io.Serializable;
import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.arauca.domain.SectorInversionPdm;

public class SectorInversionPdmDaoImpl implements SectorInversionPdmDao{


	@Autowired
	private SessionFactory sessionFactory;

	@Override
	@Transactional
	public int insertRow(final SectorInversionPdm pSectorInversionPdm) {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		session.saveOrUpdate(pSectorInversionPdm);
		tx.commit();
		Serializable id = session.getIdentifier(pSectorInversionPdm);
		session.close();
		return (Integer) id;
	}

	@Override
	@Transactional
	public List<SectorInversionPdm> getList() {
		 Session session = sessionFactory.openSession();  
		  @SuppressWarnings("unchecked")  
		  List<SectorInversionPdm> sectorInversionPdmList = session.createQuery("from Sector_inversion_pdm")  
		    .list();  
		  session.close();  
		  return sectorInversionPdmList;
	}

	@Override
	@Transactional
	public SectorInversionPdm getRowById(final int pId) {
		  Session session = sessionFactory.openSession();  
		  SectorInversionPdm sectorInversionPdm = (SectorInversionPdm) session.load(SectorInversionPdm.class, pId);  
		  return sectorInversionPdm;  
	}

	@Override
	@Transactional
	public int updateRow(final SectorInversionPdm pSectorInversionPdm) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  session.saveOrUpdate(pSectorInversionPdm);  
		  tx.commit();  
		  Serializable id = session.getIdentifier(pSectorInversionPdm);  
		  session.close();  
		  return (Integer) id; 
	}

	@Override
	@Transactional
	public int deleteRow(final int pId) {
		  Session session = sessionFactory.openSession();  
		  Transaction tx = session.beginTransaction();  
		  SectorInversionPdm sectorInversionPdm = (SectorInversionPdm) session.load(SectorInversionPdm.class, pId);  
		  session.delete(sectorInversionPdm);  
		  tx.commit();  
		  Serializable ids = session.getIdentifier(sectorInversionPdm);  
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
