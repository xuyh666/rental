package com.carrental.crud.dao;

import com.carrental.crud.bean.Vehicle;
import com.carrental.crud.bean.VehicleExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VehicleMapper {
    long countByExample(VehicleExample example);

    int deleteByExample(VehicleExample example);

    int deleteByPrimaryKey(Integer vehicleId);

    int insert(Vehicle record);

    int insertSelective(Vehicle record);
    
    List<Vehicle> selectWelcomVehicle();

    List<Vehicle> selectWithPriceCondition(@Param("vehicleClassNumber") Integer vehicleClassNumber,@Param("vehicleBrandNumber")Integer vehicleBrandNumber,@Param("priceMin") Double priceMin, @Param("priceMax") Double priceMax,@Param("vehicleState")Integer vehicleState);    
    
    List<Vehicle> selectByExample(VehicleExample example);
    
    List<Vehicle> selectByExampleWithClassBrand(VehicleExample example);
    
    List<Vehicle> selectByNumberWithClassBrand(@Param("vehicleClassNumber")Integer vehicleClassNumber);
    
    List<Vehicle> selectVehicleByConditions(Vehicle vehicle);

    Vehicle selectByPrimaryKey(Integer vehicleId);
    
    Vehicle selectByPrimaryKey1(Integer vehicleId);

    int updateByExampleSelective(@Param("record") Vehicle record, @Param("example") VehicleExample example);

    int updateByExample(@Param("record") Vehicle record, @Param("example") VehicleExample example);

    int updateByPrimaryKeySelective(Vehicle record);

    int updateByPrimaryKey(Vehicle record);
}