package com.carrental.crud.dao;

import com.carrental.crud.bean.CertificateReview;
import com.carrental.crud.bean.CertificateReviewExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface CertificateReviewMapper {
    long countByExample(CertificateReviewExample example);

    int deleteByExample(CertificateReviewExample example);

    int deleteByPrimaryKey(Integer clientId);

    int insert(CertificateReview record);

    int insertSelective(CertificateReview record);

    List<CertificateReview> selectByExample(CertificateReviewExample example);
    
    List<CertificateReview> selectCertificateReviewByCondition(CertificateReview record);

    CertificateReview selectByPrimaryKey(Integer clientId);

    int updateByExampleSelective(@Param("record") CertificateReview record, @Param("example") CertificateReviewExample example);

    int updateByExample(@Param("record") CertificateReview record, @Param("example") CertificateReviewExample example);

    int updateByPrimaryKeySelective(CertificateReview record);

    int updateByPrimaryKey(CertificateReview record);
}