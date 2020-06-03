package com.carrental.crud.dao;

import com.carrental.crud.bean.Admin;
import com.carrental.crud.bean.AdminExample;
import com.carrental.crud.bean.Product;

import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface AdminMapper {
	
	// 上传一张图片
	Integer saveHeadPortrait(Admin admin);
	//管理员登录
	Admin adminLogin (@Param("adminUsername") String adminUsername,@Param("adminPassword") String adminPassword);
	
    long countByExample(AdminExample example);

    int deleteByExample(AdminExample example);

    int deleteByPrimaryKey(Integer adminId);

    int insert(Admin record);

    int insertSelective(Admin record);

    List<Admin> selectByExample(AdminExample example);

    Admin selectByPrimaryKey(Integer adminId);

    int updateByExampleSelective(@Param("record") Admin record, @Param("example") AdminExample example);

    int updateByExample(@Param("record") Admin record, @Param("example") AdminExample example);

    int updateByPrimaryKeySelective(Admin record);

    int updateByPrimaryKey(Admin record);
}