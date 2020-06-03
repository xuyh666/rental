package com.carrental.crud.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class OrderItem {
    private Integer itemId;//订单编号

    private Integer clientId;//用户编号

    private String clientRealName;//真实姓名

    private String clientIdNumber;//身份证号

    private String clientPhoneNumber;//手机号

    private Integer vehicleId;//车辆编号

    private String vehiclePlateNumber;//车牌号

    private Date vehicleRentTime;//租出日期

    private Date vehicleReturnTime;//归还日期

    private double vehicleDailyRent;//日租金

    private double vehicleCashPledge;//押金

    private Integer itemState;//订单状态
    
    private Vehicle vehicle;
    
	@Override
	public String toString() {
		return "OrderItem [itemId=" + itemId + ", clientId=" + clientId + ", clientRealName=" + clientRealName
				+ ", clientIdNumber=" + clientIdNumber + ", clientPhoneNumber=" + clientPhoneNumber + ", vehicleId="
				+ vehicleId + ", vehiclePlateNumber=" + vehiclePlateNumber + ", vehicleRentTime=" + vehicleRentTime
				+ ", vehicleReturnTime=" + vehicleReturnTime + ", vehicleDailyRent=" + vehicleDailyRent
				+ ", vehicleCashPledge=" + vehicleCashPledge + ", itemState=" + itemState + "]";
	}

	public Vehicle getVehicle() {
		return vehicle;
	}

	public void setVehicle(Vehicle vehicle) {
		this.vehicle = vehicle;
	}

	public Integer getItemId() {
        return itemId;
    }

    public void setItemId(Integer itemId) {
        this.itemId = itemId;
    }

    public Integer getClientId() {
        return clientId;
    }

    public void setClientId(Integer clientId) {
        this.clientId = clientId;
    }

    public String getClientRealName() {
        return clientRealName;
    }

    public void setClientRealName(String clientRealName) {
        this.clientRealName = clientRealName == null ? null : clientRealName.trim();
    }

    public String getClientIdNumber() {
        return clientIdNumber;
    }

    public void setClientIdNumber(String clientIdNumber) {
        this.clientIdNumber = clientIdNumber == null ? null : clientIdNumber.trim();
    }

    public String getClientPhoneNumber() {
        return clientPhoneNumber;
    }

    public void setClientPhoneNumber(String clientPhoneNumber) {
        this.clientPhoneNumber = clientPhoneNumber == null ? null : clientPhoneNumber.trim();
    }

    public Integer getVehicleId() {
        return vehicleId;
    }

    public void setVehicleId(Integer vehicleId) {
        this.vehicleId = vehicleId;
    }

    public String getVehiclePlateNumber() {
        return vehiclePlateNumber;
    }

    public void setVehiclePlateNumber(String vehiclePlateNumber) {
        this.vehiclePlateNumber = vehiclePlateNumber == null ? null : vehiclePlateNumber.trim();
    }

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    public Date getVehicleRentTime() {
        return vehicleRentTime;
    }
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    public void setVehicleRentTime(Date vehicleRentTime) {
        this.vehicleRentTime = vehicleRentTime;
    }
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    public Date getVehicleReturnTime() {
        return vehicleReturnTime;
    }
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    public void setVehicleReturnTime(Date vehicleReturnTime) {
        this.vehicleReturnTime = vehicleReturnTime;
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

    public Integer getItemState() {
        return itemState;
    }

    public void setItemState(Integer itemState) {
        this.itemState = itemState;
    }
}