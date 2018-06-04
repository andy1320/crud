package rundata.akshay.ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import rundata.akshay.Dao.EmpDao;
import rundata.akshay.Service.EmpService;
import rundata.akshay.model.Emp;
import rundata.akshay.model.User;
@Service ("EmpService")
@Transactional(propagation=Propagation.SUPPORTS, rollbackFor=Exception.class)
public class EmpServiceImpl implements EmpService {
	@Autowired 
	EmpDao empDao;

	@Override
	public void create(Emp emp) {
		empDao .create(emp);
	}

	@Override
	public void update(Emp emp) {
		empDao.update(emp);

	}

	@Override
	public Emp edit(int id) {
		
		return empDao.edit(id);
	}

	@Override
	public void delete(int id) {
		empDao.delete(id);
	}

	@Override
	public Emp find(int id) {
		
		return empDao.find(id);
	}

	@Override
	public List<Emp> getAll() {
		
		return empDao.getAll();
	}

	@Override
	public boolean checkLogin(String email, String Password ) {
		
        return empDao.checkLogin(email, Password );
 }

	@Override
	public void create(User user) {
		empDao.create(user);
		
	}

	@Override
	public List<User> getAllU() {
		
		return empDao.getAllU();
	}

}
