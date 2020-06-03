package com.carrental.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carrental.crud.bean.AdminExample;
import com.carrental.crud.bean.VehicleClass;
import com.carrental.crud.bean.VehicleClassExample;
import com.carrental.crud.bean.VehicleClassExample.Criteria;
import com.carrental.crud.dao.VehicleClassMapper;

@Service
public class VehicleClassService {
	
	@Autowired
	VehicleClassMapper mapper;

	/**
	 * 
	 * <h1>批量删除<h1/>
	 * @param ids
	 * @author xuyh 
	 * @date 2020年2月22日 下午5:56:20
	 */
	public void delBatchClass(List<Integer> ids) {
       VehicleClassExample example = new VehicleClassExample();
		Criteria criteria = example.createCriteria();
		criteria.andVehicleClassNumberIn(ids);
		mapper.deleteByExample(example);
	}
	
	
	/**
	 * 
	 * <h1>根据id删除<h1/>
	 * @param id
	 * @author xuyh 
	 * @date 2020年2月22日 下午5:43:46
	 */
	public void deleteOne(Integer id) {
		mapper.deleteByPrimaryKey(id);
	}
	
	/**
	 * 
	 * <h1>修改类型<h1/>
	 * @param vs
	 * @author xuyh 
	 * @date 2020年2月22日 下午5:11:28
	 */
	public void updateClass(VehicleClass vs) {
		mapper.updateByPrimaryKeySelective(vs);
	}
	
	/**
	 * 
	 * <h1>根据ID查找<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午4:47:30
	 */
	public VehicleClass getOne(Integer id) {
		return mapper.selectByPrimaryKey(id);
	}
	
	/**
	 * 
	 * <h1>新增类<h1/>
	 * @param classes
	 * @author xuyh 
	 * @date 2020年2月22日 下午3:18:23
	 */
	public void saveClass(VehicleClass classes) {
	    mapper.insert(classes);
	}
	
	/**
	 * 
	 * <h1>判断类型名是否重复。若返回true，则不重复<h1/>
	 * @param classes
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 下午2:46:46
	 */
	public boolean checkClass(String classes) {
		VehicleClassExample example = new VehicleClassExample();
		Criteria criteria = example.createCriteria();
		criteria.andVehicleClassEqualTo(classes);
		return mapper.countByExample(example) ==0;
	}
	
	/**
	 * 
	 * <h1>获取所有类型<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年2月22日 上午11:38:18
	 */
	public List<VehicleClass> getAllClass(){
		List<VehicleClass> list = mapper.selectByExample(null);
		return list;
	}
}
