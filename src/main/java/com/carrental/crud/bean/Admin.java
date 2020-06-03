package com.carrental.crud.bean;

import javax.validation.constraints.Pattern;

public class Admin {
    private Integer adminId; //管理员编号
    
    @Pattern(regexp="(^[a-zA-Z0-9_-]{6,16}$)",message="用户名必须为6到16位数字和字母的组合")
    private String adminUsername; //用户名

    @Pattern(regexp="(^[a-zA-Z0-9_-]{3,16}$)",message="密码格式必须为3到16位数字和字母的组合")
    private String adminPassword; //密码

    private String adminGender; //性别

    private String adminPhonenumber; //联系电话

    private String adminLevel; //级别

    private String adminHeadportrait; //头像

    public Integer getAdminId() {
        return adminId;
    }

    public void setAdminId(Integer adminId) {
        this.adminId = adminId;
    }

    public String getAdminUsername() {
        return adminUsername;
    }

    public void setAdminUsername(String adminUsername) {
        this.adminUsername = adminUsername == null ? null : adminUsername.trim();
    }

    public String getAdminPassword() {
        return adminPassword;
    }

    public void setAdminPassword(String adminPassword) {
        this.adminPassword = adminPassword == null ? null : adminPassword.trim();
    }

    public String getAdminGender() {
        return adminGender;
    }

    public void setAdminGender(String adminGender) {
        this.adminGender = adminGender == null ? null : adminGender.trim();
    }

    public String getAdminPhonenumber() {
        return adminPhonenumber;
    }

    public void setAdminPhonenumber(String adminPhonenumber) {
        this.adminPhonenumber = adminPhonenumber == null ? null : adminPhonenumber.trim();
    }

    public String getAdminLevel() {
        return adminLevel;
    }

    public void setAdminLevel(String adminLevel) {
        this.adminLevel = adminLevel == null ? null : adminLevel.trim();
    }

    public String getAdminHeadportrait() {
        return adminHeadportrait;
    }

    public void setAdminHeadportrait(String adminHeadportrait) {
        this.adminHeadportrait = adminHeadportrait == null ? null : adminHeadportrait.trim();
    }

	@Override
	public String toString() {
		return "Admin [adminId=" + adminId + ", adminUsername=" + adminUsername + ", adminPassword=" + adminPassword
				+ ", adminGender=" + adminGender + ", adminPhonenumber=" + adminPhonenumber + ", adminLevel="
				+ adminLevel + ", adminHeadportrait=" + adminHeadportrait + "]";
	}
    
}