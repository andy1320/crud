package rundata.akshay.Service;

import java.util.List;

import rundata.akshay.model.Emp;
import rundata.akshay.model.User;

public interface EmpService {
	public void create(Emp emp);
	public void create(User user);
	public void update(Emp emp);
	public Emp edit(int id);
	public void delete(int id);
	public Emp find(int id);
	public List<Emp> getAll();
	public List<User> getAllU();
    public boolean checkLogin(String email, String Password );
}
