package com.carrental.crud.dao;

import com.carrental.crud.bean.VehicleRental;
import com.carrental.crud.bean.VehicleRentalExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface VehicleRentalMapper {
    long countByExample(VehicleRentalExample example);

    int deleteByExample(VehicleRentalExample example);

    int deleteByPrimaryKey(Integer rentalId);

    int insert(VehicleRental record);

    int insertSelective(VehicleRental record);

    List<VehicleRental> selectByExample(VehicleRentalExample example);

    VehicleRental selectByPrimaryKey(Integer rentalId);
    //条件查询
    VehicleRental selectByConditions(VehicleRental record);

    int updateByExampleSelective(@Param("record") VehicleRental record, @Param("example") VehicleRentalExample example);

    int updateByExample(@Param("record") VehicleRental record, @Param("example") VehicleRentalExample example);

    int updateByPrimaryKeySelective(VehicleRental record);

    int updateByPrimaryKey(VehicleRental record);
}