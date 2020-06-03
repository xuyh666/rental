package com.carrental.crud.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carrental.crud.bean.Msg;
import com.carrental.crud.bean.VehicleBrand;
import com.carrental.crud.service.VehicleBrandService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;


@Controller
public class VehicleBrandController {
  
	@Autowired
	VehicleBrandService dao;
	
	@RequestMapping(value="/deleteBrand/{ids}",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg deleteBrand(@PathVariable("ids")String ids) {
		if(ids.contains("-")) {
			List<Integer> list = new ArrayList<>();
			String[] string = ids.split("-");
			for (String str : string) {
				list.add(Integer.parseInt(str));
			}
			dao.delBatchBrand(list);
		}else {
		   dao.delOneBrand(Integer.parseInt(ids));
		}
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>更新品牌信息<h1/>
	 * @param brand
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午10:35:40
	 */
	@ResponseBody
	@RequestMapping(value="/updateBrand/{VehicleBrandNumber}",method=RequestMethod.PUT)
	public Msg updateBrand(VehicleBrand brand) {
		dao.updateBrand(brand);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>获取一个品牌<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午9:47:06
	 */
	@ResponseBody
	@RequestMapping(value="/getOneBrand/{id}",method=RequestMethod.GET)
	public Msg getOneBrand(@PathVariable("id")String id) {
		VehicleBrand brand = dao.getOneBrand(Integer.parseInt(id));
		return Msg.success().add("vehicleBrand", brand);
	}
	
	/**
	 * 
	 * <h1>保存品牌<h1/>
	 * @param brand
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午9:25:24
	 */
	@RequestMapping(value="/saveBrand",method=RequestMethod.POST)
	@ResponseBody
	public Msg saveBrand(VehicleBrand brand) {
		dao.saveBrand(brand);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>检查品牌是否存在<h1/>
	 * @param vehicleBrand
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午9:20:15
	 */
	@ResponseBody
	@RequestMapping(value="/checkBrand",method=RequestMethod.POST)
	public Msg checkBrand(@RequestParam("vehicleBrand") String vehicleBrand) {
		 if(dao.checkBrand(vehicleBrand)) {
			 return Msg.success();
		 }else {
			 return Msg.fail().add("va_msg", "该品牌已存在");
		 }
	}
	/**
	 * 
	 * <h1>获取所有品牌<h1/>
	 * @param pn
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午8:43:10
	 */
	@ResponseBody
	@RequestMapping(value="/getAllBrand",method=RequestMethod.GET)
	public Msg getAllBrand(@RequestParam(value = "pn", defaultValue = "1") Integer pn) {
		PageHelper.startPage(pn, 8);
		List<VehicleBrand> list = dao.getAllBrand();
		PageInfo<VehicleBrand> page = new PageInfo<VehicleBrand>(list,5);
		return Msg.success().add("pageInfo", page);
	}
	
	/**
	 * 
	 * <h1>获取所有品牌不分页<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年2月25日 下午3:57:55
	 */
	@ResponseBody
	@RequestMapping(value="/getAllBrands",method=RequestMethod.GET)
	public Msg getAllBrands() {
		List<VehicleBrand> list = dao.getAllBrand();
		return Msg.success().add("list", list);
	}
}
