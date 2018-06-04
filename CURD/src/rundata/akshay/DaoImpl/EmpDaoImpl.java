package rundata.akshay.DaoImpl;

import java.util.List;

import rundata.akshay.Dao.EmpDao;
import rundata.akshay.model.Emp;
import rundata.akshay.model.User;

import org.hibernate.Query;
import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository("EmpDao")
public class EmpDaoImpl implements EmpDao {

	@Autowired
    SessionFactory  sessionFactory;
	
    protected Session CurrentSession() {
    	return sessionFactory.getCurrentSession();
    }
	@Override
	public void create(Emp emp) {
		CurrentSession().save(emp);

	}

	@Override
	public void update(Emp emp) {
		CurrentSession().update(emp);

	}

	@Override
	public Emp edit(int id) {
		
		return find(id);
	}

	@Override
	public void delete(int id) {
		Emp emp = new Emp();
		emp.setId(id);
		CurrentSession().delete(emp);

	}

	@Override
	public Emp find(int id) {
	
		return (Emp)CurrentSession().get(Emp.class, id);
	}

	@Override
	public List<Emp> getAll() {
		
		return CurrentSession().createCriteria(Emp.class).list();
	}
	@SuppressWarnings("rawtypes")
	@Override
	public boolean checkLogin(String email, String Password ) {
		
		
		boolean userFound = false;
		//Query using Hibernate Query Language
		SQLQuery query = CurrentSession().createSQLQuery(" select * from emp where email=? AND Password=? ");
		
		query.setParameter(0,email);
		query.setParameter(1,Password);
		
		List list = query.list();

		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}

		return userFound;              
   }
	@Override
	public void create(User user) {
		CurrentSession().save(user);
		
	}
	@Override
	public List<User> getAllU() {
		
		return CurrentSession().createCriteria(User.class).list();
	}
}
