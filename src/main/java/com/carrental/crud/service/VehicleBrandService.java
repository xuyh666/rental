package com.carrental.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carrental.crud.bean.VehicleBrand;
import com.carrental.crud.bean.VehicleBrandExample;
import com.carrental.crud.bean.VehicleBrandExample.Criteria;
import com.carrental.crud.dao.VehicleBrandMapper;

@Service
public class VehicleBrandService {
	@Autowired
	VehicleBrandMapper mapper;
	
	/**
	 * 
	 * <h1>删除多个<h1/>
	 * @param ids
	 * @author xuyh 
	 * @date 2020年2月22日 下午10:35:26
	 */
	public void delBatchBrand(List<Integer> ids) {
		VehicleBrandExample example = new VehicleBrandExample();
		Criteria criteria = example.createCriteria();
		criteria.andVehicleBrandNumberIn(ids);
		mapper.deleteByExample(example);
	}
	
	/**
	 * 
	 * <h1>删除一个<h1/>
	 * @param id
	 * @author xuyh 
	 * @date 2020年2月22日 下午10:32:58
	 */
	public void delOneBrand(Integer id) {
		mapper.deleteByPrimaryKey(id);
	}
	
	/**
	 * 
	 * <h1>修改品牌<h1/>
	 * @param brand
	 * @author xuyh 
	 * @date 2020年2月22日 下午10:04:01
	 */
	public void updateBrand(VehicleBrand brand) {
		mapper.updateByPrimaryKeySelective(brand);
	}
	
	/**
	 * 
	 * <h1>根据ID获取信息<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午9:43:27
	 */
	public VehicleBrand getOneBrand(Integer id) {
		VehicleBrand brand = mapper.selectByPrimaryKey(id);
		return brand;
	}
	
	/**
	 * 
	 * <h1>新增品牌<h1/>
	 * @param brand
	 * @author xuyh 
	 * @date 2020年2月22日 下午9:41:20
	 */
	public void saveBrand(VehicleBrand brand) {
		mapper.insert(brand);
	}
	
	/**
	 * 
	 * <h1>判断品牌名是否重复。若返回true，则不重复<h1/>
	 * @param brand
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午9:17:08
	 */
	public boolean checkBrand(String brand) {
		VehicleBrandExample example = new VehicleBrandExample();
		Criteria criteria = example.createCriteria();
		criteria.andVehicleBrandEqualTo(brand);
		return mapper.countByExample(example) == 0;
	}
	
	/**
	 * 
	 * <h1>获取所有品牌<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午8:38:31
	 */
	public List<VehicleBrand> getAllBrand(){
		List<VehicleBrand> list = mapper.selectByExample(null);
		return list;
	}
}
