package com.carrental.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carrental.crud.bean.Department;
import com.carrental.crud.bean.Msg;
import com.carrental.crud.service.DepartmentService;

/**
 * 
 * <h1>部门信息获取</h1>
 * 
 * @author xuyh
 * @date 2020年1月17日 下午6:19:56
 */

@Controller
public class DepartmentController {

	@Autowired
	private DepartmentService departmentService;

	/**
	 * 
	 * <h1>获取数据剧中所有的部门信息<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年1月25日 下午4:42:55
	 */
	@RequestMapping("/depts")
	@ResponseBody
	public Msg getDepts() {
		List<Department> list = departmentService.getDepts();
		return Msg.success().add("depts", list);
	}
}
