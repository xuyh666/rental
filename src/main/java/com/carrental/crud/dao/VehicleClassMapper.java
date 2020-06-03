package com.carrental.crud.dao;

import com.carrental.crud.bean.VehicleClass;
import com.carrental.crud.bean.VehicleClassExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VehicleClassMapper {
    long countByExample(VehicleClassExample example);

    int deleteByExample(VehicleClassExample example);

    int deleteByPrimaryKey(Integer vehicleClassNumber);

    int insert(VehicleClass record);

    int insertSelective(VehicleClass record);

    List<VehicleClass> selectByExample(VehicleClassExample example);

    VehicleClass selectByPrimaryKey(Integer vehicleClassNumber);

    int updateByExampleSelective(@Param("record") VehicleClass record, @Param("example") VehicleClassExample example);

    int updateByExample(@Param("record") VehicleClass record, @Param("example") VehicleClassExample example);

    int updateByPrimaryKeySelective(VehicleClass record);

    int updateByPrimaryKey(VehicleClass record);
}