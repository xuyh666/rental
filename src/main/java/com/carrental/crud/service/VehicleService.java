package com.carrental.crud.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.carrental.crud.bean.Vehicle;
import com.carrental.crud.bean.VehicleExample;
import com.carrental.crud.bean.VehicleExample.Criteria;
import com.carrental.crud.dao.VehicleMapper;

@Service
public class VehicleService {

	@Autowired
	VehicleMapper mapper;
	
	/**
	 * 
	 * <h1>查找其他车<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年4月5日 下午5:53:36
	 */
	public List<Vehicle> findAnotherVehicle(){
		VehicleExample example = new VehicleExample();
		Criteria criteria = example.createCriteria();
		criteria.andVehicleClassNumberGreaterThan(4);
		List<Vehicle> list = mapper.selectByExample(example);
		return list;
	}
	
	/**
	 * 
	 * <h1>获取受欢迎的车<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年3月15日 下午8:57:30
	 */
	public List<Vehicle> selectWelcomVehicle(){
		List<Vehicle> list = mapper.selectWelcomVehicle();
		return list;
	}
	
	/**
	 * 
	 * <h1>根据价格查询<h1/>
	 * @param vehicleClassNumber
	 * @param vehicleBrandNumber
	 * @param priceMin
	 * @param priceMax
	 * @return
	 * @author xuyh 
	 * @date 2020年3月15日 下午8:55:57
	 */
	public List<Vehicle> selectWithPriceCondition(Integer vehicleClassNumber,Integer vehicleBrandNumber,Double priceMin,Double priceMax,Integer vehicleState){
		List<Vehicle> list = mapper.selectWithPriceCondition(vehicleClassNumber, vehicleBrandNumber, priceMin, priceMax,vehicleState);
		return list;
	}
	
	/**
	 * 
	 * <h1>多条件查询车<h1/>
	 * @param vehicle
	 * @return
	 * @author xuyh 
	 * @date 2020年3月2日 下午8:30:13
	 */
	public List<Vehicle> selectVehicleByConditions(Vehicle vehicle){
		List<Vehicle> list = mapper.selectVehicleByConditions(vehicle);
		return list;
	}
	
	/**
	 * 
	 * <h1>通过类型号查找所有车<h1/>
	 * @param classId
	 * @return
	 * @author xuyh 
	 * @date 2020年3月1日 下午8:40:47
	 */
	public List<Vehicle> findAllVehicleByClassNum(Integer classId){
		List<Vehicle> list = mapper.selectByNumberWithClassBrand(classId);
		return list;
	}
	
	/**
	 * 
	 * <h1>批量删除<h1/>
	 * @param ids
	 * @author xuyh 
	 * @date 2020年2月29日 下午8:07:31
	 */
	public void delBatchVehicle(List<Integer> ids) {
		VehicleExample example = new VehicleExample();
		Criteria criteria = example.createCriteria();
		criteria.andVehicleIdIn(ids);
		mapper.deleteByExample(example);
	}
	
	/**
	 * 
	 * <h1>删除单个<h1/>
	 * @param id
	 * @author xuyh 
	 * @date 2020年2月29日 下午8:04:59
	 */
	public void delOneVehicle(Integer id) {
		mapper.deleteByPrimaryKey(id);
	}
	
	/**
	 * 
	 * <h1>更新车信息<h1/>
	 * @param vehicle
	 * @author xuyh 
	 * @date 2020年2月28日 下午5:33:08
	 */
	public void updateVehicle(Vehicle vehicle) {
		mapper.updateByPrimaryKeySelective(vehicle);
	}
	
	/**
	 * 
	 * <h1>通过id获取车<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年2月28日 下午3:00:39
	 */
	public Vehicle getOneVehicle(Integer id) {
		Vehicle vehicle = mapper.selectByPrimaryKey1(id);
		return vehicle;
	}
	
	/**
	 * 
	 * <h1>获取所有车车<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年2月27日 下午7:57:59
	 */
    public List<Vehicle> getAllVehicle(){
    	List<Vehicle> list = mapper.selectByExampleWithClassBrand(null);
    	return list;
    }
	
	/**
	 * 
	 * <h1>判段车牌号是否重复，返回true则不重复<h1/>
	 * @param num
	 * @return
	 * @author xuyh 
	 * @date 2020年2月25日 下午10:10:10
	 */
	public boolean  isExistPlateNumber(String num) {
		VehicleExample example = new VehicleExample();
		Criteria criteria = example.createCriteria();
		criteria.andVehiclePlateNumberEqualTo(num);
		long count = mapper.countByExample(example);
		return count == 0;
	}
	
	/**
	 * 
	 * <h1>新增一条数据<h1/>
	 * @param file1
	 * @param file2
	 * @param file3
	 * @param file4
	 * @param vehicle
	 * @throws IOException
	 * @author xuyh 
	 * @date 2020年2月25日 下午7:48:10
	 */
	public void addOne(MultipartFile file1,MultipartFile file2,MultipartFile file3,MultipartFile file4,Vehicle vehicle)throws IOException  {
		        // 保存图片的路径，图片上传成功后，将路径保存到数据库
				String filePath = "D:\\workspace\\img";
				// 获取原始图片的扩展名
				String originalFilename1 = file1.getOriginalFilename();
				String originalFilename2 = file2.getOriginalFilename();
				String originalFilename3 = file3.getOriginalFilename();
				String originalFilename4 = file4.getOriginalFilename();
				// 生成文件新的名字
				String str = UUID.randomUUID().toString().replace("-", "");
				String newFileName1 = str.substring(0, 6) + originalFilename1;
				String newFileName2 = str.substring(0, 6) + originalFilename2;
				String newFileName3 = str.substring(0, 6) + originalFilename3;
				String newFileName4 = str.substring(0, 6) + originalFilename4;
				// 封装上传文件位置的全路径
				File targetFile1 = new File(filePath, newFileName1);
				File targetFile2 = new File(filePath, newFileName2);
				File targetFile3 = new File(filePath, newFileName3);
				File targetFile4 = new File(filePath, newFileName4);
				file1.transferTo(targetFile1);
				file2.transferTo(targetFile2);
				file3.transferTo(targetFile3);
				file4.transferTo(targetFile4);
				vehicle.setVehicleImage1(newFileName1);
				vehicle.setVehicleImage2(newFileName2);
				vehicle.setVehicleImage3(newFileName3);
				vehicle.setVehicleImage4(newFileName4);
				mapper.insertSelective(vehicle);
	}
}
