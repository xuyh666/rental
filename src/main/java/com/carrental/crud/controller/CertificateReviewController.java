package com.carrental.crud.controller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.carrental.crud.bean.CertificateReview;
import com.carrental.crud.bean.Client;
import com.carrental.crud.bean.Msg;
import com.carrental.crud.dao.ClientMapper;
import com.carrental.crud.service.CertificateReviewService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class CertificateReviewController {

	@Autowired
	CertificateReviewService dao;
	@Autowired
	ClientMapper dao1;
	
	/**
	 * 
	 * <h1>条件查询<h1/>
	 * @param pn
	 * @param review
	 * @return
	 * @author xuyh 
	 * @date 2020年3月12日 下午8:05:42
	 */
	@RequestMapping(value="/findSomeCertificateReview",method=RequestMethod.POST)
	@ResponseBody
	public Msg findSomeCertificateReview(@RequestParam(value="pn",defaultValue="1") Integer pn,CertificateReview review){
		PageHelper.startPage(pn, 8);
		System.out.println(review);
		List<CertificateReview> list = dao.findSomeCertificateReview(review);
		PageInfo<CertificateReview> pageInfo = new PageInfo<>(list, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 
	 * <h1>驾驶证身份认证失败百<h1/>
	 * @param cfr
	 * @return
	 * @author xuyh 
	 * @date 2020年3月12日 下午7:29:44
	 */
	@RequestMapping(value="/refuseId",method=RequestMethod.POST)
	@ResponseBody
	public Msg updateCertificateReview(CertificateReview cfr) {
		dao.updateCertificateReview(cfr);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>审核驾驶证成功<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年3月12日 下午5:30:40
	 */
	@RequestMapping(value="/approveDriver",method=RequestMethod.POST)
	@ResponseBody
	public Msg approveDriver(Client client) {
		Client cc = dao1.selectByPrimaryKey(client.getClientId());
		client.setClientBalance(cc.getClientBalance());
		dao1.updateByPrimaryKeySelective(client);
		CertificateReview review = new CertificateReview();
		review.setClientId(client.getClientId());
		review.setClientDriverLicenseVerify(1);
		dao.updateCertificateReview(review);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>审核身份成功<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年3月12日 下午5:31:06
	 */
	@RequestMapping(value="/approveId",method=RequestMethod.POST)
	@ResponseBody
	public Msg approveId(Client client) {
		Client cc = dao1.selectByPrimaryKey(client.getClientId());
		client.setClientBalance(cc.getClientBalance());
		dao1.updateByPrimaryKeySelective(client);
		CertificateReview review = new CertificateReview();
		review.setClientId(client.getClientId());
		review.setClientIdCardVerify(1);
		dao.updateCertificateReview(review);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>获取所有验证<h1/>
	 * @param pn
	 * @return
	 * @author xuyh 
	 * @date 2020年3月12日 下午2:32:45
	 */
	@RequestMapping(value="/findAllCertificateReview",method=RequestMethod.GET)
	@ResponseBody
	public Msg findAllCertificateReview(@RequestParam(value="pn",defaultValue="1") Integer pn) {
		PageHelper.startPage(pn, 8);
		List<CertificateReview> list = dao.findAllCertificateReview();
		PageInfo<CertificateReview> pageInfo = new PageInfo<>(list, 5);
		return Msg.success().add("pageInfo", pageInfo);
		
	}
	
	/**
	 * 
	 * <h1>审核驾驶证信息<h1/>
	 * @param cfr
	 * @param file
	 * @return
	 * @throws Exception
	 * @author xuyh 
	 * @date 2020年3月11日 下午8:23:49
	 */
	@RequestMapping(value="/addDriverLicense",method=RequestMethod.POST)
	@ResponseBody
	public Msg addDriverLicense(CertificateReview cfr,@RequestParam("file") MultipartFile file) throws Exception{
		System.out.println(cfr);
		System.out.println(file.getOriginalFilename());
		// 保存图片的路径，图片上传成功后，将路径保存到数据库
		String filePath = "D:\\workspace\\img";
		// 获取原始图片的扩展名
		String originalFilename = file.getOriginalFilename();
		// 生成文件新的名字
		String str = UUID.randomUUID().toString().replace("-", "");
		String newFileName = str.substring(0, 6) + originalFilename;
		// 封装上传文件位置的全路径
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);	
		cfr.setClientDriverLicenseImage(newFileName);
		CertificateReview c = dao.findOneCfrById(cfr.getClientId());
		cfr.setClientDriverLicenseVerify(-1);
		if(c == null) {
			dao.saveOneCertificateReview(cfr);
		}else {
			dao.updateCertificateReview(cfr);
		}
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>审核身份信息<h1/>
	 * @param cfr
	 * @param file
	 * @return
	 * @throws Exception
	 * @author xuyh 
	 * @date 2020年3月11日 下午8:21:20
	 */
	@RequestMapping(value="/addCertificateReview",method=RequestMethod.POST)
	@ResponseBody
	public Msg addCertificateReview(CertificateReview cfr,@RequestParam("file") MultipartFile file) throws Exception{
		System.out.println(cfr);
		System.out.println(file.getOriginalFilename());
		// 保存图片的路径，图片上传成功后，将路径保存到数据库
		String filePath = "D:\\workspace\\img";
		// 获取原始图片的扩展名
		String originalFilename = file.getOriginalFilename();
		// 生成文件新的名字
		String str = UUID.randomUUID().toString().replace("-", "");
		String newFileName = str.substring(0, 6) + originalFilename;
		// 封装上传文件位置的全路径
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);	
		cfr.setClientIdImage(newFileName);
		CertificateReview c = dao.findOneCfrById(cfr.getClientId());
		cfr.setClientIdCardVerify(-1);
		if(c == null) {
			dao.saveOneCertificateReview(cfr);
		}else {
			dao.updateCertificateReview(cfr);
		}
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>根据ID查找<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年3月11日 下午5:28:34
	 */
	@RequestMapping(value="/findOneCfrById",method=RequestMethod.POST)
	@ResponseBody
	public Msg findOneCfrById(@RequestParam("clientId") Integer id) {
		CertificateReview certificateReview = dao.findOneCfrById(id);
		if(certificateReview != null) {
			return Msg.success().add("certificateReview", certificateReview);
		}else {
            return Msg.fail();
		}
	}
}
