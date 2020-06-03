package com.carrental.crud.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carrental.crud.bean.VehicleRental;
import com.carrental.crud.dao.VehicleRentalMapper;

@Service
public class VehicleRentalService {
    @Autowired
	VehicleRentalMapper mapper;
    
    /**
     * 
     * <h1>根据条件查询<h1/>
     * @param vr
     * @return
     * @author xuyh 
     * @date 2020年5月6日 下午11:40:07
     */
    public VehicleRental findByItemId(VehicleRental vr) {
       VehicleRental vehicleRental = mapper.selectByConditions(vr);
       return vehicleRental;
    }
	
    /**
     * 
     * <h1>插入一条数据<h1/>
     * @param vr
     * @author xuyh 
     * @date 2020年4月21日 下午12:57:51
     */
    public void addOne(VehicleRental vr) {
    	mapper.insertSelective(vr);
    }
}
