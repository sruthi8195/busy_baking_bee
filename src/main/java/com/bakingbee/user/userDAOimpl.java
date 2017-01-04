package com.bakingbee.user;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;



@Repository
@EnableTransactionManagement
public class userDAOimpl implements userDAO {
	
	@Autowired
	SessionFactory sess;
	
	
	@Transactional
	public void insert(user U) {
		// TODO Auto-generated method stub
		sess.getCurrentSession().save(U);	
	}

	@Transactional
	public void update(user U) {
		// TODO Auto-generated method stub
		sess.getCurrentSession().update(U);
	}

	@Transactional
	public void delete(int uid) {
		// TODO Auto-generated method stub
		sess.getCurrentSession().createQuery("delete from user U where U.id = :id").setInteger("id",uid).executeUpdate();		
	}

	@Transactional
	public user getuser(int uid) {
		// TODO Auto-generated method stub
List<user> list = sess.getCurrentSession().createQuery("from user U where U.id").setInteger("id",uid).list();
		
		if(!list.isEmpty())
		{
			return list.get(0);
		}else
		return null;
	}

	@Transactional
	public List<user> getAlluser() {
		// TODO Auto-generated method stub
		List<user> list = sess.getCurrentSession().createQuery("from user U").list();
		return list;
	}

	
	
}
