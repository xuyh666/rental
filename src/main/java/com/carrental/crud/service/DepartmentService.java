package com.carrental.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carrental.crud.bean.Department;
import com.carrental.crud.dao.DepartmentMapper;

@Service
public class DepartmentService {

	@Autowired
	private DepartmentMapper departmentMapper;

	/**
	 * <h1>获取部门信息<h1/>
	 * @return List<Department>
	 * @author xuyh 666666
	 * @date 2020年1月17日 下午6:30:18
	 */
	public List<Department> getDepts() {
		List<Department> list = departmentMapper.selectByExample(null);
		return list;
	}
}
