package com.carrental.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carrental.crud.bean.CertificateReview;
import com.carrental.crud.dao.CertificateReviewMapper;

@Service
public class CertificateReviewService {

	@Autowired
	CertificateReviewMapper mapper;
	
	/**
	 * 
	 * <h1>条件查询<h1/>
	 * @param cfr
	 * @return
	 * @author xuyh 
	 * @date 2020年3月12日 下午2:19:29
	 */
	public List<CertificateReview> findSomeCertificateReview(CertificateReview cfr){
		List<CertificateReview> list = mapper.selectCertificateReviewByCondition(cfr);
		return list;
	}
	
	/**
	 * 
	 * <h1>获取所有认证申请<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年3月12日 下午2:06:02
	 */
	public List<CertificateReview> findAllCertificateReview(){
		List<CertificateReview> list = mapper.selectByExample(null);
		return list;
	}
	
	/**
	 * 
	 * <h1>选择修改<h1/>
	 * @param cfr
	 * @author xuyh 
	 * @date 2020年3月11日 下午4:29:26
	 */
	public void updateCertificateReview(CertificateReview cfr) {
		mapper.updateByPrimaryKeySelective(cfr);
	}
	
	/**
	 * 
	 * <h1>新增一条<h1/>
	 * @param cfr
	 * @author xuyh 
	 * @date 2020年3月11日 下午4:27:51
	 */
	public void saveOneCertificateReview(CertificateReview cfr) {
		mapper.insertSelective(cfr);
	}
	
	/**
	 * 
	 * <h1>根据Id查找<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年3月11日 下午4:26:12
	 */
	public CertificateReview findOneCfrById(Integer id) {
		CertificateReview aa = mapper.selectByPrimaryKey(id);
		return aa;
	}
}
