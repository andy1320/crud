package rundata.akshay.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import rundata.akshay.Service.EmpService;
import rundata.akshay.Service.LoginService;
import rundata.akshay.model.Emp;
import rundata.akshay.model.Guest;
import rundata.akshay.model.Login;
import rundata.akshay.model.User;

@EnableGlobalMethodSecurity

@EnableWebSecurity
@Controller
public class DataController {
	@Autowired
	LoginService loginservice;
	@Autowired
	EmpService empservice;

	@RequestMapping("/")
	public ModelAndView show() {
		ModelAndView mv = new ModelAndView("index");
		return mv;
	}
	
	@RequestMapping(value="/welcome", method = RequestMethod.POST)
	private String checlLogin1(Login login, Map<String, Object>map) {
		boolean userFound = loginservice.checkLogin1(login.getUsername() ,login.getPassword(), login.getCategory());
		if(userFound){
	
			
			if(login.getCategory().equals("admin")) {
			return "welcome";
			}
			else if(login.getCategory().equals("user")){
		   return "regester1";
			}else if(login.getCategory().equals("guest")){
		 
				return "details2";	
			}	
		}	
		map.put("try", "userExists");
		map.put("error", "invalid email or Password or category");
		return "index";
	}

	/*@RequestMapping(value = "/welcome", method = RequestMethod.GET)
	public String checlLogin(Emp emp, Map<String, Object> map) {
		boolean userFound = empservice.checkLogin(emp.getEmail(), emp.getPassword());
		if (userFound) {

			map.put("email", emp.getEmail());
			map.put("password", emp.getPassword());

			return "welcome";
		}
		map.put("try", "userExists");
		map.put("error", "invalid email or Password or category");
		return "index";
	}*/

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String regester(Map<String, Object> map) {
		map.put("emp", new Emp());
		map.put("user", new User());
		map.put("guest", new Guest());
		return "regester";
		
	}

	@RequestMapping(value = "/details", method = RequestMethod.GET)
	public String create(Emp emp, Map<String, Object> map) {
		empservice.create(emp);
		return "redirect:/details/" + emp.getId();
	}
	
	@RequestMapping(value = "/details1", method = RequestMethod.GET)
	public String create(User user, Map<String, Object> map) {
		empservice.create(user);
		return "redirect:/details1/" + user.getId();
	}
	
	

	@RequestMapping(value = "/details/{id}", method = RequestMethod.GET)
	public String details(@PathVariable("id") int id, Map<String, Object> map) {
		Emp emp = empservice.find(id);
		map.put("age", emp.getAge());
		map.put("id", emp.getId());
		map.put("name", emp.getName());
		map.put("email", emp.getEmail());
		map.put("password", emp.getPassword());
		map.put("category", emp.getCategory());
		return "details";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public String list(Map<String, Object> map) {
		map.put("emplist", empservice.getAll());
		return "regester";
	}
		

	@RequestMapping(value = "/edit/{id}", method = RequestMethod.GET)
	public String edit(@PathVariable("id") int id, Map<String, Object> map) {
		Emp emp = empservice.find(id);
		map.put("emp", emp);
		return "regester";

	}

	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String update(Emp emp, Map<String, Object> map) {
		empservice.update(emp);
		return "redirect:/details/" + emp.getId();

	}

	@RequestMapping(value = "/delete/{id}", method = RequestMethod.GET)
	public String delete(@PathVariable("id") int id, Map<String, Object> map) {
		empservice.delete(id);
		return "redirect:/list/";

	}
	@RequestMapping("/Groups")
	public ModelAndView show1() {
		ModelAndView mv = new ModelAndView("Groups");
		return mv;
	}
	@RequestMapping("/online")
	public ModelAndView show2() {
		ModelAndView mv = new ModelAndView("online");
		return mv;
	}
	@RequestMapping("/indexpage")
	public ModelAndView show3() {
		ModelAndView mv = new ModelAndView("indexpage");
		return mv;
	}
}