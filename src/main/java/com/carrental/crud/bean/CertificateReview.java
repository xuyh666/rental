package com.carrental.crud.bean;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import com.fasterxml.jackson.annotation.JsonFormat;

public class CertificateReview {
	
    private Integer clientId;//用户编号

    private String clientRealName;//真实姓名

    private String clientGender;//性别

    private Date clientBirthDate;//出生日期

    private String clientIdNumber;//身份证号

    private String clientIdImage;//身份证图片

    private Integer clientIdCardVerify;//身份验证结果

    private String clientDriverLicenseNumber;//驾驶证号

    private String clientDriverLicenseImage;//驾驶证图片

    private Integer clientDriverLicenseVerify;//驾驶证验证结果
    
    

    @Override
	public String toString() {
		return "CertificateReview [clientId=" + clientId + ", clientRealName=" + clientRealName + ", clientGender="
				+ clientGender + ", clientBirthDate=" + clientBirthDate + ", clientIdNumber=" + clientIdNumber
				+ ", clientIdImage=" + clientIdImage + ", clientIdCardVerify=" + clientIdCardVerify
				+ ", clientDriverLicenseNumber=" + clientDriverLicenseNumber + ", clientDriverLicenseImage="
				+ clientDriverLicenseImage + ", clientDriverLicenseVerify=" + clientDriverLicenseVerify + "]";
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

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    public void setClientBirthDate(Date clientBirthDate) {
        this.clientBirthDate = clientBirthDate;
    }

    public String getClientIdNumber() {
        return clientIdNumber;
    }

    public void setClientIdNumber(String clientIdNumber) {
        this.clientIdNumber = clientIdNumber == null ? null : clientIdNumber.trim();
    }

    public String getClientIdImage() {
        return clientIdImage;
    }

    public void setClientIdImage(String clientIdImage) {
        this.clientIdImage = clientIdImage == null ? null : clientIdImage.trim();
    }

    public Integer getClientIdCardVerify() {
        return clientIdCardVerify;
    }

    public void setClientIdCardVerify(Integer clientIdCardVerify) {
        this.clientIdCardVerify = clientIdCardVerify;
    }

    public String getClientDriverLicenseNumber() {
        return clientDriverLicenseNumber;
    }

    public void setClientDriverLicenseNumber(String clientDriverLicenseNumber) {
        this.clientDriverLicenseNumber = clientDriverLicenseNumber == null ? null : clientDriverLicenseNumber.trim();
    }

    public String getClientDriverLicenseImage() {
        return clientDriverLicenseImage;
    }

    public void setClientDriverLicenseImage(String clientDriverLicenseImage) {
        this.clientDriverLicenseImage = clientDriverLicenseImage == null ? null : clientDriverLicenseImage.trim();
    }

    public Integer getClientDriverLicenseVerify() {
        return clientDriverLicenseVerify;
    }

    public void setClientDriverLicenseVerify(Integer clientDriverLicenseVerify) {
        this.clientDriverLicenseVerify = clientDriverLicenseVerify;
    }
}