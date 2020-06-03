package com.carrental.crud.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.junit.runners.Parameterized.Parameter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carrental.crud.bean.Employee;
import com.carrental.crud.bean.Msg;
import com.carrental.crud.service.EmployeeService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

/**
 * 处理员工CRUD请求
 * 
 * @author Erhu
 */
@Controller
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;
	
	/**
	 * 
	 * <h1>单个批量删除二合一<h1/>
	 * @param empId
	 * @return
	 * @author xuyh 
	 * @date 2020年1月26日 下午7:48:19
	 */
	@ResponseBody
	@RequestMapping(value = "/emp/{Ids}",method = RequestMethod.DELETE)
	public Msg delEmpByPrimaryKey(@PathVariable("Ids")String empId) {
		if(empId.contains("-")) {
			List<Integer> del_ids =new ArrayList<>();
			String[] strings = empId.split("-");
			for (String string : strings) {
				del_ids.add(Integer.parseInt(string));
			}
			employeeService.delEmpBatch(del_ids);
		}else {
			Integer id = Integer.parseInt(empId);
			employeeService.delEmpByPrimaryKey(id);
		}
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>修改员工数据<h1/>
	 * @param employee
	 * @return
	 * @author xuyh 
	 * @date 2020年1月25日 下午8:58:20
	 */
	@ResponseBody
	@RequestMapping(value = "/emp/{empId}",method = RequestMethod.PUT)
	public Msg updateEmp(Employee employee) {
		employeeService.updateEmp(employee);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>通过id查询个人信息<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年1月23日 下午2:26:28
	 */
	@RequestMapping(value = "/emp/{id}" ,method = RequestMethod.GET)
	@ResponseBody
	public Msg getEmp(@PathVariable("id") Integer id) {
		Employee employee = employeeService.getEmp(id);
		return Msg.success().add("employee", employee);
	}
	
	/**
	 * 
	 * <h1>判断用户名是否重复<h1/>
	 * @param empName
	 * @return
	 * @author xuyh 
	 * @date 2020年1月20日 下午3:52:27
	 */
	@RequestMapping("/checkUserName")
	@ResponseBody
    public Msg checkUserName(@RequestParam("empName")String empName) {
		//先判断用户名是否符合表达式
		String regNm = "(^[a-zA-Z0-9_-]{6,16}$)|(^[\\u2E80-\\u9FFF]{2,5})";
		if(!empName.matches(regNm)) {
			return Msg.fail().add("va_msg", "用户名可以是6到16位数字和字母的组合，也可以是2到5位汉字");
		}
		//然后判断用户名是否重复
		boolean checkUserName = employeeService.checkUserName(empName);
		if(checkUserName) {
			return Msg.success();
		}else {
			return Msg.fail().add("va_msg", "用户名已存在");
		}
    }
	
	/**
	 * <h1>新增员工<h1/>
	 * @param emp
	 * @return
	 * @author xuyh
	 * @date 2020年1月18日 下午5:37:55
	 */
	@RequestMapping(value = "/emp", method = RequestMethod.POST)
	@ResponseBody
	public Msg saveEmp(@Valid Employee emp,BindingResult result) {
		Map<String, Object> map = new HashMap<>();
		if(result.hasErrors()) {
            List<FieldError> fieldErrors = result.getFieldErrors();
            for (FieldError fieldError : fieldErrors) {
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorFields", map);
		}else {
			employeeService.saveEmp(emp);
			return Msg.success();
		}
	}

	/**
	 * 查询员工数据（分页查询）
	 * 
	 * @return
	 */
	@RequestMapping("/empss")
	public String getEmps(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		// 分页查询，传入页码及每页的大小
		PageHelper.startPage(pn, 5);
		// startPage之后紧跟的查询就是分页查询
		List<Employee> emps = employeeService.getAll();
		// pageinfo包装查询后的结果,只需将pageinfo交给将页面
		// 封装了详细的信息，包括查询出来的信息，传入连续显示的页数
		PageInfo page = new PageInfo(emps, 5);
		model.addAttribute("pageInfo", page);
		return "list";
	}

	@RequestMapping("/emps")
	@ResponseBody
	public Msg getEmpsWithJson(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model) {
		// 分页查询，传入页码及每页的大小
		PageHelper.startPage(pn, 5);
		// startPage之后紧跟的查询就是分页查询
		List<Employee> emps = employeeService.getAll();
		// pageinfo包装查询后的结果,只需将pageinfo交给将页面
		// 封装了详细的信息，包括查询出来的信息，传入连续显示的页数
		PageInfo page = new PageInfo(emps, 5);
		return Msg.success().add("pageInfo", page);
	}

}
