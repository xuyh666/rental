package com.carrental.crud.bean;

public class Vehicle {
    private Integer vehicleId;//车编号

    private String vehicleName;//车名

    private String vehiclePlateNumber;//车牌号

    private Integer vehicleClassNumber;//类型号

    private Integer vehicleBrandNumber;//品牌号

    private String vehicleColor;//颜色

    private String vehicleIntroduction;//车描述

    private Integer vehicleAge;//车龄

    private String vehicleDisplacement;//排量

    private String vehicleOilType;//油型

    private String vehicleOilCapacity;//油容量

    private String vehicleSeatNum;//车座数

    private String vehicleImage1;//图片1

    private String vehicleImage2;//图片2

    private String vehicleImage3;//图片3

    private String vehicleImage4;//图片4

    private double vehicleDailyRent;//日租金

    private double vehicleCashPledge;//押金

    private Integer vehicleState;//车状态

    private Integer vehicleRentalStatistic;//被租统计
    
    private VehicleClass vehicleClass;//车类型
    
    private VehicleBrand vehicleBrand;//车品牌
    
    @Override
	public String toString() {
		return "Vehicle [vehicleId=" + vehicleId + ", vehicleName=" + vehicleName + ", vehiclePlateNumber="
				+ vehiclePlateNumber + ", vehicleClassNumber=" + vehicleClassNumber + ", vehicleBrandNumber="
				+ vehicleBrandNumber + ", vehicleColor=" + vehicleColor + ", vehicleIntroduction=" + vehicleIntroduction
				+ ", vehicleAge=" + vehicleAge + ", vehicleDisplacement=" + vehicleDisplacement + ", vehicleOilType="
				+ vehicleOilType + ", vehicleOilCapacity=" + vehicleOilCapacity + ", vehicleSeatNum=" + vehicleSeatNum
				+ ", vehicleImage1=" + vehicleImage1 + ", vehicleImage2=" + vehicleImage2 + ", vehicleImage3="
				+ vehicleImage3 + ", vehicleImage4=" + vehicleImage4 + ", vehicleDailyRent=" + vehicleDailyRent
				+ ", vehicleCashPledge=" + vehicleCashPledge + ", vehicleState=" + vehicleState
				+ ", vehicleRentalStatistic=" + vehicleRentalStatistic + "]";
	}

	public VehicleClass getVehicleClass() {
		return vehicleClass;
	}

	public void setVehicleClass(VehicleClass vehicleClass) {
		this.vehicleClass = vehicleClass;
	}

	public VehicleBrand getVehicleBrand() {
		return vehicleBrand;
	}

	public void setVehicleBrand(VehicleBrand vehicleBrand) {
		this.vehicleBrand = vehicleBrand;
	}

	public Integer getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(Integer vehicleId) {
        this.vehicleId = vehicleId;
    }

    public String getVehicleName() {
        return vehicleName;
    }

    public void setVehicleName(String vehicleName) {
        this.vehicleName = vehicleName == null ? null : vehicleName.trim();
    }

    public String getVehiclePlateNumber() {
        return vehiclePlateNumber;
    }

    public void setVehiclePlateNumber(String vehiclePlateNumber) {
        this.vehiclePlateNumber = vehiclePlateNumber == null ? null : vehiclePlateNumber.trim();
    }

    public Integer getVehicleClassNumber() {
        return vehicleClassNumber;
    }

    public void setVehicleClassNumber(Integer vehicleClassNumber) {
        this.vehicleClassNumber = vehicleClassNumber;
    }

    public Integer getVehicleBrandNumber() {
        return vehicleBrandNumber;
    }

    public void setVehicleBrandNumber(Integer vehicleBrandNumber) {
        this.vehicleBrandNumber = vehicleBrandNumber;
    }

    public String getVehicleColor() {
        return vehicleColor;
    }

    public void setVehicleColor(String vehicleColor) {
        this.vehicleColor = vehicleColor == null ? null : vehicleColor.trim();
    }

    public String getVehicleIntroduction() {
        return vehicleIntroduction;
    }

    public void setVehicleIntroduction(String vehicleIntroduction) {
        this.vehicleIntroduction = vehicleIntroduction == null ? null : vehicleIntroduction.trim();
    }

    public Integer getVehicleAge() {
        return vehicleAge;
    }

    public void setVehicleAge(Integer vehicleAge) {
        this.vehicleAge = vehicleAge;
    }

    public String getVehicleDisplacement() {
        return vehicleDisplacement;
    }

    public void setVehicleDisplacement(String vehicleDisplacement) {
        this.vehicleDisplacement = vehicleDisplacement == null ? null : vehicleDisplacement.trim();
    }

    public String getVehicleOilType() {
        return vehicleOilType;
    }

    public void setVehicleOilType(String vehicleOilType) {
        this.vehicleOilType = vehicleOilType == null ? null : vehicleOilType.trim();
    }

    public String getVehicleOilCapacity() {
        return vehicleOilCapacity;
    }

    public void setVehicleOilCapacity(String vehicleOilCapacity) {
        this.vehicleOilCapacity = vehicleOilCapacity == null ? null : vehicleOilCapacity.trim();
    }

    public String getVehicleSeatNum() {
        return vehicleSeatNum;
    }

    public void setVehicleSeatNum(String vehicleSeatNum) {
        this.vehicleSeatNum = vehicleSeatNum == null ? null : vehicleSeatNum.trim();
    }

    public String getVehicleImage1() {
        return vehicleImage1;
    }

    public void setVehicleImage1(String vehicleImage1) {
        this.vehicleImage1 = vehicleImage1 == null ? null : vehicleImage1.trim();
    }

    public String getVehicleImage2() {
        return vehicleImage2;
    }

    public void setVehicleImage2(String vehicleImage2) {
        this.vehicleImage2 = vehicleImage2 == null ? null : vehicleImage2.trim();
    }

    public String getVehicleImage3() {
        return vehicleImage3;
    }

    public void setVehicleImage3(String vehicleImage3) {
        this.vehicleImage3 = vehicleImage3 == null ? null : vehicleImage3.trim();
    }

    public String getVehicleImage4() {
        return vehicleImage4;
    }

    public void setVehicleImage4(String vehicleImage4) {
        this.vehicleImage4 = vehicleImage4 == null ? null : vehicleImage4.trim();
    }

    public double getVehicleDailyRent() {
        return vehicleDailyRent;
    }

    public void setVehicleDailyRent(double vehicleDailyRent) {
        this.vehicleDailyRent = vehicleDailyRent;
    }

    public double getVehicleCashPledge() {
        return vehicleCashPledge;
    }

    public void setVehicleCashPledge(double vehicleCashPledge) {
        this.vehicleCashPledge = vehicleCashPledge;
    }

    public Integer getVehicleState() {
        return vehicleState;
    }

    public void setVehicleState(Integer vehicleState) {
        this.vehicleState = vehicleState;
    }

    public Integer getVehicleRentalStatistic() {
        return vehicleRentalStatistic;
    }

    public void setVehicleRentalStatistic(Integer vehicleRentalStatistic) {
        this.vehicleRentalStatistic = vehicleRentalStatistic;
    }
}