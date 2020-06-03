package com.carrental.crud.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class Client {
    private Integer clientId;//客户编号

    private String clientRealName;//真实姓名

    private String clientGender;//性别

    private Date clientBirthDate;//出生日期

    private String clientPhoneNumber;//手机号

    private String clientUsername;//用户名

    private String clientPassword;//密码

    private String clientEmail;//邮箱

    private double clientBalance;//账户余额

    private String clientIdNumber;//身份证号

    private String clientDriverLicenseNumber;//驾驶证号

    private String clientHeadPortrait;//头像

    private Integer clientActivate;//激活状态

    private String clientActivateCode;//激活状态码
    
   private Integer clientCarRentalState;//汽车租用状态
    

    public Integer getClientCarRentalState() {
		return clientCarRentalState;
	}

	public void setClientCarRentalState(Integer clientCarRentalState) {
		this.clientCarRentalState = clientCarRentalState;
	}

	

	@Override
	public String toString() {
		return "Client [clientId=" + clientId + ", clientRealName=" + clientRealName + ", clientGender=" + clientGender
				+ ", clientBirthDate=" + clientBirthDate + ", clientPhoneNumber=" + clientPhoneNumber
				+ ", clientUsername=" + clientUsername + ", clientPassword=" + clientPassword + ", clientEmail="
				+ clientEmail + ", clientBalance=" + clientBalance + ", clientIdNumber=" + clientIdNumber
				+ ", clientDriverLicenseNumber=" + clientDriverLicenseNumber + ", clientHeadPortrait="
				+ clientHeadPortrait + ", clientActivate=" + clientActivate + ", clientActivateCode="
				+ clientActivateCode + ", clientCarRentalState=" + clientCarRentalState + "]";
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

    public String getClientGender() {
        return clientGender;
    }

    public void setClientGender(String clientGender) {
        this.clientGender = clientGender == null ? null : clientGender.trim();
    }

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    public Date getClientBirthDate() {
        return clientBirthDate;
    }
 
    public void setClientBirthDate(Date clientBirthDate) {
        this.clientBirthDate = clientBirthDate;
    }

    public String getClientPhoneNumber() {
        return clientPhoneNumber;
    }

    public void setClientPhoneNumber(String clientPhoneNumber) {
        this.clientPhoneNumber = clientPhoneNumber == null ? null : clientPhoneNumber.trim();
    }

    public String getClientUsername() {
        return clientUsername;
    }

    public void setClientUsername(String clientUsername) {
        this.clientUsername = clientUsername == null ? null : clientUsername.trim();
    }

    public String getClientPassword() {
        return clientPassword;
    }

    public void setClientPassword(String clientPassword) {
        this.clientPassword = clientPassword == null ? null : clientPassword.trim();
    }

    public String getClientEmail() {
        return clientEmail;
    }

    public void setClientEmail(String clientEmail) {
        this.clientEmail = clientEmail == null ? null : clientEmail.trim();
    }

    public Double getClientBalance() {
        return clientBalance;
    }

    public void setClientBalance(Double clientBalance) {
        this.clientBalance = clientBalance;
    }

    public String getClientIdNumber() {
        return clientIdNumber;
    }

    public void setClientIdNumber(String clientIdNumber) {
        this.clientIdNumber = clientIdNumber == null ? null : clientIdNumber.trim();
    }

    public String getClientDriverLicenseNumber() {
        return clientDriverLicenseNumber;
    }

    public void setClientDriverLicenseNumber(String clientDriverLicenseNumber) {
        this.clientDriverLicenseNumber = clientDriverLicenseNumber == null ? null : clientDriverLicenseNumber.trim();
    }

    public String getClientHeadPortrait() {
        return clientHeadPortrait;
    }

    public void setClientHeadPortrait(String clientHeadPortrait) {
        this.clientHeadPortrait = clientHeadPortrait == null ? null : clientHeadPortrait.trim();
    }

    public Integer getClientActivate() {
        return clientActivate;
    }

    public void setClientActivate(Integer clientActivate) {
        this.clientActivate = clientActivate;
    }

    public String getClientActivateCode() {
        return clientActivateCode;
    }

    public void setClientActivateCode(String clientActivateCode) {
        this.clientActivateCode = clientActivateCode == null ? null : clientActivateCode.trim();
    }
}