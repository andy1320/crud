	package rundata.akshay.DaoImpl;

import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import rundata.akshay.Dao.LoginDao;
@Repository("LoginDao")
public class LoginDaoImpl implements LoginDao {
	@Autowired
    SessionFactory  sessionFactory;
	
    protected Session CurrentSession() {
    	return sessionFactory.getCurrentSession();
    }

	@SuppressWarnings("rawtypes")
	@Override
	public boolean checkLogin1(String Username, String Password , String Category) {
		boolean userFound = false;
		//Query using Hibernate Query Language
		SQLQuery query = CurrentSession().createSQLQuery(" select category from login where username=? AND password=? AND category=? ");
		
		query.setParameter(0,Username);
		query.setParameter(1,Password);
		query.setParameter(2,Category);
		 
		List list = query.list();

		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}
		return userFound;
	}

}
