package com.carrental.crud.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.carrental.crud.bean.Admin;
import com.carrental.crud.bean.AdminExample;
import com.carrental.crud.bean.Product;
import com.carrental.crud.bean.AdminExample.Criteria;
import com.carrental.crud.dao.AdminMapper;

@Service
public class AdminService {
     
	@Autowired
	AdminMapper adminMapper;
	
	@Transactional
	public void saveHeadPortrait(MultipartFile file, Admin admin, ModelMap map) throws IOException {
		
		// 保存图片的路径，图片上传成功后，将路径保存到数据库
		String filePath = "D:\\workspace\\img";
		// 获取原始图片的扩展名
		String originalFilename = file.getOriginalFilename();
		System.out.println(file);
		// 生成文件新的名字
		String str = UUID.randomUUID().toString().replace("-", "");
		String newFileName = str.substring(0, 6) + originalFilename;
		// 封装上传文件位置的全路径
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);	
		// 保存到数据库
		admin.setAdminHeadportrait(newFileName);
		adminMapper.saveHeadPortrait(admin);
	}
	
	/**
	 * 
	 * <h1>删除多个管理员<h1/>
	 * @param adminIds
	 * @author xuyh 
	 * @date 2020年2月18日 下午10:11:39
	 */
	public void delBatchAdmin(List<Integer> adminIds) {
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andAdminIdIn(adminIds);
		adminMapper.deleteByExample(example);
	}
	
	/**
	 * 
	 * <h1>删除单个管理员<h1/>
	 * @param adminId
	 * @author xuyh 
	 * @date 2020年2月18日 下午10:08:45
	 */
	public void delAdmin(Integer adminId) {
		adminMapper.deleteByPrimaryKey(adminId);
	}
	
	/**
	 * 
	 * <h1>新增员工<h1/>
	 * @param admin
	 * @author xuyh 
	 * @date 2020年2月18日 下午9:10:00
	 */
	public void saveAdmin(Admin admin) {
		adminMapper.insertSelective(admin);
	}
	
	/**
	 * 
	 * <h1>判断用户名是否重复<h1/>
	 *  如果返回true,代表当前用户名可用
	 * @param adminUsername
	 * @return
	 * @author xuyh 
	 * @date 2020年2月18日 下午4:16:06
	 */
	public boolean checkAdminUsername(String adminUsername) {
		AdminExample example = new AdminExample();
		Criteria criteria = example.createCriteria();
		criteria.andAdminUsernameEqualTo(adminUsername);
		long countByExample = adminMapper.countByExample(example);
		return countByExample==0;
	}
	
	/**
	 * 
	 * <h1>更新管理员信息<h1/>
	 * @param admin
	 * @author xuyh 
	 * @date 2020年2月17日 下午5:04:22
	 */
	public void updateAdmin(Admin admin) {
		adminMapper.updateByPrimaryKeySelective(admin);
	}
	
	/**
	 * 
	 * <h1>通过id查找管理员<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年2月17日 下午2:54:04
	 */
	public Admin getAdminById(Integer id) {
		Admin admin = adminMapper.selectByPrimaryKey(id);
		return admin;
	}
	
	/**
	 * 
	 * <h1>获取所有管理员<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年2月16日 下午4:23:09
	 */
	public List<Admin> getAllManagers(){
		List<Admin> list = adminMapper.selectByExample(null);
		return list;
	}
	
	/**
	 * 
	 * <h1>根据ID查找<h1/>
	 * @param adminId
	 * @return
	 * @author xuyh 
	 * @date 2020年2月14日 下午3:42:43
	 */
	public Admin findById(String adminId) {
		Admin admin =adminMapper.selectByPrimaryKey(Integer.parseInt(adminId));
		return admin;
	}
	
	/**
	 * 
	 * <h1>管理员登录<h1/>
	 * @param record
	 * @author xuyh 
	 * @date 2020年2月12日 下午9:03:02
	 */
	public Admin adminLogin(String adminUsername,String adminPassword ) {
		Admin admin = adminMapper.adminLogin(adminUsername,adminPassword);
		return admin;
	}
}
