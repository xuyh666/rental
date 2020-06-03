package com.carrental.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carrental.crud.bean.Employee;
import com.carrental.crud.bean.EmployeeExample;
import com.carrental.crud.bean.EmployeeExample.Criteria;
import com.carrental.crud.dao.EmployeeMapper;

@Service
public class EmployeeService {

	@Autowired
	EmployeeMapper employeeMapper;
	
	/**
	 * 
	 * <h1>批量删除员工<h1/>
	 * @param ids
	 * @author xuyh 
	 * @date 2020年1月27日 下午9:33:15
	 */
	public void delEmpBatch(List<Integer> ids) {
		EmployeeExample example = new EmployeeExample();
		Criteria criteria = example.createCriteria();
		//delete from xxx where emp_id in (ids);
		criteria.andEmpIdIn(ids);
		employeeMapper.deleteByExample(example);
	}
	
	/**
	 * 
	 * <h1>删除单个员工<h1/>
	 * @param empId
	 * @author xuyh 
	 * @date 2020年1月26日 下午7:46:15
	 */
	public void delEmpByPrimaryKey(Integer empId) {
		employeeMapper.deleteByPrimaryKey(empId);
	}
	
	/**
	 * 
	 * <h1>修改员工数据<h1/>
	 * @param employee
	 * @author xuyh 
	 * @date 2020年1月25日 下午8:59:38
	 */
	public void updateEmp(Employee employee) {
		employeeMapper.updateByPrimaryKeySelective(employee);
	}

	/**
	 * 
	 * <h1>新增员工
	 * <h1/>
	 * 
	 * @author xuyh
	 * @date 2020年1月18日 下午5:32:41
	 */
	public void saveEmp(Employee emp) {
		employeeMapper.insertSelective(emp);
	}

	/**
	 * 查询所有员工
	 * 
	 * @return
	 */
	public List<Employee> getAll() {
		return employeeMapper.selectByExampleWithDept(null);
	}

	/**
	 * 
	 * <h1>判断用户名是否重复<h1/>
	 * 
	 * @param empName
	 * @author xuyh
	 * @date 2020年1月20日 下午3:54:34 
	  * 如果返回true,代表当前姓名可用
	 */
	public boolean checkUserName(String empName) {
		EmployeeExample example = new EmployeeExample();
		Criteria criteria = example.createCriteria();
		criteria.andEmpNameEqualTo(empName);
		long countByExample = employeeMapper.countByExample(example);
		return countByExample == 0;
	}
	
	/**
	 * 
	 * <h1>通过id查询<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年1月23日 下午2:24:05
	 */
	public Employee getEmp(Integer id) {
		Employee employee = employeeMapper.selectByPrimaryKey(id);
		return employee;
	}
}
