package com.carrental.crud.bean;

public class VehicleClass {
    private Integer vehicleClassNumber; //类型号

    private String vehicleClass; //类型名

    public Integer getVehicleClassNumber() {
        return vehicleClassNumber;
    }

    public void setVehicleClassNumber(Integer vehicleClassNumber) {
        this.vehicleClassNumber = vehicleClassNumber;
    }

    public String getVehicleClass() {
        return vehicleClass;
    }

    public void setVehicleClass(String vehicleClass) {
        this.vehicleClass = vehicleClass == null ? null : vehicleClass.trim();
    }

	@Override
	public String toString() {
		return "VehicleClass [vehicleClassNumber=" + vehicleClassNumber + ", vehicleClass=" + vehicleClass + "]";
	}
    
}