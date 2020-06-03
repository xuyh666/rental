package com.carrental.crud.controller;

import java.util.ArrayList;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carrental.crud.bean.Msg;
import com.carrental.crud.bean.VehicleClass;
import com.carrental.crud.service.VehicleClassService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class VehicleClassController {
  
	@Autowired
	VehicleClassService dao;
	
	/**
	 * 
	 * <h1>删除类型<h1/>
	 * @param vehicleClassNumbers
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午5:57:03
	 */
	@RequestMapping(value="/deleteClass/{Ids}",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg deleteClass(@PathVariable("Ids") String vehicleClassNumbers) {
		if(vehicleClassNumbers.contains("-")) {
			List<Integer> list = new ArrayList<>();
			String[] strings = vehicleClassNumbers.split("-");
			for (String string : strings) {
				list.add(Integer.parseInt(string));
			}
			dao.delBatchClass(list);
		}else {
			dao.deleteOne(Integer.parseInt(vehicleClassNumbers));
		}
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>修改<h1/>
	 * @param vs
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午5:44:04
	 */
	@ResponseBody
	@RequestMapping(value="/updateClass/{vehicleClassNumber}",method=RequestMethod.PUT)
	public Msg updateClass(VehicleClass vs) {
		dao.updateClass(vs);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>根据id获取<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午4:51:47
	 */
	@RequestMapping(value="/getOne/{id}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getOne(@PathVariable("id") String id) {
		VehicleClass vs = dao.getOne(Integer.parseInt(id));
		return Msg.success().add("vehicleClass", vs);
	}
	
	/**
	 * 
	 * <h1>新增类<h1/>
	 * @param classes
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午3:21:52
	 */
	@RequestMapping(value="/saveClass",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveClass(VehicleClass classes) {
	    dao.saveClass(classes);
	    return Msg.success();
	}
	
	/**
	 * 
	 * <h1>判断类名是否重复<h1/>
	 * @param vehicleClass
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午2:52:17
	 */
	@ResponseBody
	@RequestMapping(value="/checkClass",method=RequestMethod.POST)
	public Msg checkClass(@RequestParam("vehicleClass") String vehicleClass) {
		if(dao.checkClass(vehicleClass)) {
			return Msg.success();
		}else {
			return Msg.fail().add("va_msg", "该类已存在");
		}
	}
	
	/**
	 * 
	 * <h1>获取所有类型<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 上午11:41:05
	 */
	@RequestMapping(value="/getAllClass",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAllClass(@RequestParam(value = "pn", defaultValue = "1") Integer pn, Model model){
		PageHelper.startPage(pn, 8);
		List<VehicleClass> list = dao.getAllClass();
		PageInfo<VehicleClass> page = new PageInfo<VehicleClass>(list,5);
		return Msg.success().add("pageInfo", page);
	}
	
	/**
	 * 
	 * <h1>获取所有类型不分页<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年2月25日 下午3:01:14
	 */
	@RequestMapping(value="/getClasses",method=RequestMethod.GET)
	@ResponseBody
	public Msg getClasses(){
		List<VehicleClass> list = dao.getAllClass();
		return Msg.success().add("classes", list);
	}
	
}
