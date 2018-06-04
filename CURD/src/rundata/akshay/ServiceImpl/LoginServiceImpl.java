package rundata.akshay.ServiceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import rundata.akshay.Dao.LoginDao;
import rundata.akshay.Service.LoginService;
@Service ("LoginService")
@Transactional(propagation=Propagation.SUPPORTS, rollbackFor=Exception.class)
public class LoginServiceImpl implements LoginService {
	@Autowired 
	LoginDao loginDao;
	
	@Override
	public boolean checkLogin1(String Username, String Password, String Category) {
		
		return loginDao.checkLogin1(Username, Password, Category);
	}

}
