package com.carrental.crud.bean;

public class VehicleBrand {
    private Integer vehicleBrandNumber; //品牌号

    private String vehicleBrand; //品牌名

    public Integer getVehicleBrandNumber() {
        return vehicleBrandNumber;
    }

    public void setVehicleBrandNumber(Integer vehicleBrandNumber) {
        this.vehicleBrandNumber = vehicleBrandNumber;
    }

    public String getVehicleBrand() {
        return vehicleBrand;
    }

    public void setVehicleBrand(String vehicleBrand) {
        this.vehicleBrand = vehicleBrand == null ? null : vehicleBrand.trim();
    }
}