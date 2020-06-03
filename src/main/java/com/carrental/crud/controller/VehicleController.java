package com.carrental.crud.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.carrental.crud.bean.Msg;
import com.carrental.crud.bean.Vehicle;
import com.carrental.crud.service.VehicleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class VehicleController {
	
	@Autowired
	VehicleService dao;
	
	/**
	 * 
	 * <h1>获取TOP5<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年4月5日 下午7:18:23
	 */
	@RequestMapping(value="/selectWelcomVehicle",method=RequestMethod.GET)
	@ResponseBody
	public Msg selectWelcomVehicle() {
		List<Vehicle> list = dao.selectWelcomVehicle();
		return Msg.success().add("list", list);
	}
	
	/**
	 * 
	 * <h1>根据价格筛选<h1/>
	 * @param pn
	 * @param vehicle
	 * @param priceMin
	 * @param priceMax
	 * @return
	 * @author xuyh 
	 * @date 2020年3月15日 下午8:58:10
	 */
	@ResponseBody
	@RequestMapping(value="/clientFindVehiicleByConditions",method=RequestMethod.POST)
	public Msg clientFindVehiicleByConditions(@RequestParam(value="pn",defaultValue="1") Integer pn ,Vehicle vehicle,@RequestParam("priceMin")Double priceMin,@RequestParam("priceMax")Double priceMax) {
		PageHelper.startPage(pn, 12);
		List<Vehicle> list = dao.selectWithPriceCondition(vehicle.getVehicleClassNumber(), vehicle.getVehicleBrandNumber(), priceMin, priceMax,vehicle.getVehicleState());
		PageInfo<Vehicle> pageInfo = new PageInfo<>(list, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 
	 * <h1>条件查询<h1/>
	 * @param pn
	 * @param vehicle
	 * @return
	 * @author xuyh 
	 * @date 2020年3月2日 下午10:00:49
	 */
	@RequestMapping(value="/selectVehicleByConditions/{pn}",method=RequestMethod.POST)
	@ResponseBody
	public Msg selectVehicleByConditions(@PathVariable("pn") Integer pn,Vehicle vehicle) {
		PageHelper.startPage(pn, 12);
		List<Vehicle> list = dao.selectVehicleByConditions(vehicle);
		PageInfo<Vehicle> pageInfo = new PageInfo<>(list, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	@RequestMapping(value="/selectVehicleByConditionss/{pn}",method=RequestMethod.POST)
	@ResponseBody
	public Msg selectVehicleByConditionss(@PathVariable("pn") Integer pn,Vehicle vehicle) {
		PageHelper.startPage(pn, 12);
		List<Vehicle> list = dao.findAnotherVehicle();
		PageInfo<Vehicle> pageInfo = new PageInfo<>(list, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 
	 * <h1>根据车类型查车<h1/>
	 * @param pn
	 * @param classId
	 * @return
	 * @author xuyh 
	 * @date 2020年3月2日 下午8:27:49
	 */
	@RequestMapping(value="/findAllVehicleByClassNum/{classId}",method=RequestMethod.GET)
	@ResponseBody
	public Msg findAllVehicleByClassNum(@RequestParam(value="pn",defaultValue="1") Integer pn,@PathVariable("classId")Integer classId) {
		PageHelper.startPage(pn, 5);
		List<Vehicle> list = dao.findAllVehicleByClassNum(classId);
		PageInfo<Vehicle> pageInfo = new PageInfo<>(list,3);
		return Msg.success().add("pageInfo", pageInfo);
	}

	/**
	 * 
	 * <h1>删除车车<h1/>
	 * @param ids
	 * @return
	 * @author xuyh 
	 * @date 2020年2月29日 下午8:24:17
	 */
	@RequestMapping(value="/delVehicle/{ids}",method=RequestMethod.DELETE)
	@ResponseBody
	public Msg delVehicle(@PathVariable("ids")String ids) {
		if(ids.contains("-")) {
			List<Integer> list = new ArrayList<Integer>();
			String[] string = ids.split("-");
			for (String str : string) {
				list.add(Integer.parseInt(str));
			}
			dao.delBatchVehicle(list);
		}else {
			dao.delOneVehicle(Integer.parseInt(ids));
		}
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>修改图片<h1/>
	 * @param file
	 * @param vehicle
	 * @param code
	 * @return
	 * @throws Exception
	 * @author xuyh 
	 * @date 2020年2月29日 下午8:08:03
	 */
	@RequestMapping(value="/altImage1/{vehicleId}",method=RequestMethod.POST)
	@ResponseBody
	public Msg altImage1(@RequestParam("file")MultipartFile file,Vehicle vehicle,@RequestParam("code")Integer code) throws Exception{
		// 保存图片的路径，图片上传成功后，将路径保存到数据库
		String filePath = "D:\\workspace\\img";
		// 获取原始图片的扩展名
		String originalFilename = file.getOriginalFilename();
		// 生成文件新的名字
		String str = UUID.randomUUID().toString().replace("-", "");
		String newFileName = str.substring(0, 6) + originalFilename;
		// 封装上传文件位置的全路径
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);
		if(code == 1) {
			vehicle.setVehicleImage1(newFileName);
		}else if(code == 2) {
			vehicle.setVehicleImage2(newFileName);
		}else if(code == 3) {
			vehicle.setVehicleImage3(newFileName);
		}else if(code == 4) {
			vehicle.setVehicleImage4(newFileName);
		}else {
			System.out.println("error");
		}
		Vehicle vehicle2 = dao.getOneVehicle(vehicle.getVehicleId());
		vehicle.setVehicleDailyRent(vehicle2.getVehicleDailyRent());
		vehicle.setVehicleCashPledge(vehicle2.getVehicleCashPledge());
		dao.updateVehicle(vehicle);
		return Msg.success().add("code", vehicle.getVehicleId());
	}
	
	/**
	 * 
	 * <h1>更新车信息<h1/>
	 * @param vehicle
	 * @return
	 * @author xuyh 
	 * @date 2020年2月28日 下午5:36:43
	 */
	@ResponseBody
	@RequestMapping(value="/updateVehicle/{vehicleId}",method=RequestMethod.PUT)
	public Msg updateVehicle(Vehicle vehicle) {
		//System.out.println(vehicle.getVehicleId());
		dao.updateVehicle(vehicle);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>通过id获取车<h1/>
	 * @param vehicleId
	 * @return
	 * @author xuyh 
	 * @date 2020年2月28日 下午3:05:00
	 */
	@RequestMapping(value="/getOneVehicle/{ids}",method=RequestMethod.GET)
	@ResponseBody
	public Msg getOneVehicle(@PathVariable("ids") String vehicleId) {
		Vehicle vehicle = dao.getOneVehicle(Integer.parseInt(vehicleId));
		return Msg.success().add("vehicle", vehicle);
	}
	
	/**
	 * 
	 * <h1>获取所有车车<h1/>
	 * @param pn
	 * @return
	 * @author xuyh 
	 * @date 2020年2月27日 下午8:35:33
	 */
	@RequestMapping(value="/getAllVehicle",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAllVehicle(@RequestParam(value="pn",defaultValue="1") Integer pn) {
		PageHelper.startPage(pn, 8);
		List<Vehicle> list = dao.getAllVehicle();
		PageInfo<Vehicle> pageInfo = new PageInfo<>(list,5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 
	 * <h1>判断车牌号是否存在<h1/>
	 * @param vehiclePlateNumber
	 * @return
	 * @author xuyh 
	 * @date 2020年2月25日 下午10:14:34
	 */
	@ResponseBody
	@RequestMapping(value="/isExistPlateNumber",method=RequestMethod.POST)
	public Msg isExistPlateNumber(@RequestParam("vehiclePlateNumber")String vehiclePlateNumber) {
		if(dao.isExistPlateNumber(vehiclePlateNumber)) {
			return Msg.success();
		}else {
			return Msg.fail().add("pnum_msg", "车牌号已存在");
		}
	}
 
	/**
	 * 
	 * <h1>插入一条数据<h1/>
	 * @param file1
	 * @param file2
	 * @param file3
	 * @param file4
	 * @param vehicle
	 * @return
	 * @throws IOException
	 * @author xuyh 
	 * @date 2020年2月25日 下午7:50:46
	 */
	@ResponseBody
	@RequestMapping(value="/addOne",method=RequestMethod.POST)
	public Msg addOne(@RequestParam("file1") MultipartFile file1,@RequestParam("file2") MultipartFile file2,@RequestParam("file3") MultipartFile file3,@RequestParam("file4") MultipartFile file4,Vehicle vehicle)throws IOException  {
		dao.addOne(file1, file2, file3, file4, vehicle);
		return Msg.success();
	}
}
