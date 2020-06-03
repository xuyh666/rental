package com.carrental.crud.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.w3c.dom.ls.LSInput;

import com.carrental.crud.bean.Admin;
import com.carrental.crud.bean.Msg;
import com.carrental.crud.bean.Product;
import com.carrental.crud.service.AdminService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class AdminController {

	@Autowired
	AdminService dao;
	
	/**
	 * 
	 * <h1>更换头像<h1/>
	 * @param file
	 * @param admin
	 * @param map
	 * @return
	 * @author xuyh 
	 * @date 2020年2月20日 下午4:59:42
	 */
	@RequestMapping("/saveHeadPortrait")
	public void saveHeadPortrait(MultipartFile file, Admin admin, ModelMap map,HttpServletRequest request,HttpServletResponse response) {
		try {
			 String id = request.getParameter("adminId");
			 admin.setAdminId(Integer.parseInt(id));
			 dao.saveHeadPortrait(file, admin, map);
			 request.getRequestDispatcher("adminInformationMaintenance.jsp?adminId="+id).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	/**
	 * 
	 * <h1>删除管理员<h1/>
	 * @param adminIds
	 * @return
	 * @author xuyh 
	 * @date 2020年2月20日 下午4:58:07
	 */
	@RequestMapping(value="/delAdminByPrimaryKey/{Ids}",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg delAdminByPrimaryKey(@PathVariable("Ids") String adminIds) {
		if(adminIds.contains("-")) {
			List<Integer> list = new ArrayList<>();
			String[] strings = adminIds.split("-");
			for (String string : strings) {
				list.add(Integer.parseInt(string));
			}
			dao.delBatchAdmin(list);
		}else {
			dao.delAdmin(Integer.parseInt(adminIds));
		}
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>新增管理员<h1/>
	 * @param admin
	 * @param result
	 * @return
	 * @author xuyh 
	 * @date 2020年2月18日 下午9:19:34
	 */
	@RequestMapping(value="/saveAdmin",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveAdmin(@Valid Admin admin,BindingResult result) {
		Map<String, Object> map = new HashMap<>();
		if(result.hasErrors()) {
			List<FieldError> list = result.getFieldErrors();
			for (FieldError fieldError : list) {
				map.put(fieldError.getField(), fieldError.getDefaultMessage());
			}
			return Msg.fail().add("errorFields", map);
		}else {
			dao.saveAdmin(admin);
			return Msg.success();
		}
		
	}
	
	/**
	 * 
	 * <h1>判断用户名是否重复<h1/>
	 * @param adminUsername
	 * @return
	 * @author xuyh 
	 * @date 2020年2月18日 下午4:20:42
	 */
	@RequestMapping(value="/checkAdminUsername",method=RequestMethod.POST)
	@ResponseBody
	public Msg checkAdminUsername(@RequestParam("adminUsername") String adminUsername) {
		String regAdminUsername = "(^[a-zA-Z0-9_-]{6,16}$)";
		if(!adminUsername.matches(regAdminUsername)) {
			return Msg.fail().add("va_msg", "用户名必须为6到16位数字和字母的组合");
		}
		boolean b = dao.checkAdminUsername(adminUsername);
		if(b) {
			return Msg.success();
		}else {
			return Msg.fail().add("va_msg", "用户名已存在");
		}
	}
	
	/**
	 * 
	 * <h1>更细员工数据<h1/>
	 * @param admin
	 * @param request
	 * @return
	 * @author xuyh 
	 * @date 2020年2月18日 下午4:17:34
	 */
	@RequestMapping(value="/updateAdmin/{adminId}",method=RequestMethod.PUT)
	@ResponseBody
	public Msg updateAdmin(Admin admin,HttpServletRequest request) {
		dao.updateAdmin(admin);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>根据ID获取员工<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年2月17日 下午5:02:23
	 */
	@RequestMapping(value="/getAdminById/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAdminById(@PathVariable("id") Integer id) {
		Admin admin = dao.getAdminById(id);
		return Msg.success().add("admin", admin);
	}
	
	/**
	 * 
	 * <h1>获取所有管理员<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年2月16日 下午4:29:00
	 */
	@RequestMapping(value="/getAllManagers",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAllManagers(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model){
		// 8为每页显示8条数据
		PageHelper.startPage(pn, 8);
		List<Admin> list = dao.getAllManagers();
		// 5为显示5个页数
		PageInfo<Admin> page = new PageInfo<>(list, 5);
		return Msg.success().add("pageInfo", page);
	}
	
	/**
	 * 
	 * <h1>根据ID查找<h1/>
	 * @param adminId
	 * @return
	 * @author xuyh 
	 * @date 2020年2月14日 下午3:35:50
	 */
	@RequestMapping(value="/findById",method=RequestMethod.GET)
	@ResponseBody
	public Msg findById(@RequestParam("adminId") String adminId) {
		System.out.println(adminId);
		Admin admin = dao.findById(adminId);
		if(admin !=null) {
			return Msg.success().add("admin", admin);
		}else {
			return Msg.fail();
		}
		
	}
	
	/**
	 * 
	 * <h1>管理员登录<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年2月12日 下午9:03:45
	 */
	@RequestMapping(value="/adLogin",method=RequestMethod.POST)
	@ResponseBody
	public Msg adminLogin(@RequestParam("adminUsername") String adminUsername,@RequestParam("adminPassword") String adminPassword) {
		System.out.println(adminUsername+" "+adminPassword);
		Admin ad=dao.adminLogin(adminUsername,adminPassword);
		if(ad==null) {
			return Msg.fail();
		}else {
			return Msg.success().add("admin", ad);
		}
	}
}
