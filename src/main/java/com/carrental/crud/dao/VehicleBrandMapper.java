package com.carrental.crud.dao;

import com.carrental.crud.bean.VehicleBrand;
import com.carrental.crud.bean.VehicleBrandExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VehicleBrandMapper {
    long countByExample(VehicleBrandExample example);

    int deleteByExample(VehicleBrandExample example);

    int deleteByPrimaryKey(Integer vehicleBrandNumber);

    int insert(VehicleBrand record);

    int insertSelective(VehicleBrand record);

    List<VehicleBrand> selectByExample(VehicleBrandExample example);

    VehicleBrand selectByPrimaryKey(Integer vehicleBrandNumber);

    int updateByExampleSelective(@Param("record") VehicleBrand record, @Param("example") VehicleBrandExample example);

    int updateByExample(@Param("record") VehicleBrand record, @Param("example") VehicleBrandExample example);

    int updateByPrimaryKeySelective(VehicleBrand record);

    int updateByPrimaryKey(VehicleBrand record);
}