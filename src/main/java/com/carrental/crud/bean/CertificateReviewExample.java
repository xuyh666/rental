package com.carrental.crud.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class CertificateReviewExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public CertificateReviewExample() {
        oredCriteria = new ArrayList<Criteria>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<Criterion>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        protected void addCriterionForJDBCDate(String condition, Date value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value.getTime()), property);
        }

        protected void addCriterionForJDBCDate(String condition, List<Date> values, String property) {
            if (values == null || values.size() == 0) {
                throw new RuntimeException("Value list for " + property + " cannot be null or empty");
            }
            List<java.sql.Date> dateList = new ArrayList<java.sql.Date>();
            Iterator<Date> iter = values.iterator();
            while (iter.hasNext()) {
                dateList.add(new java.sql.Date(iter.next().getTime()));
            }
            addCriterion(condition, dateList, property);
        }

        protected void addCriterionForJDBCDate(String condition, Date value1, Date value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            addCriterion(condition, new java.sql.Date(value1.getTime()), new java.sql.Date(value2.getTime()), property);
        }

        public Criteria andClientIdIsNull() {
            addCriterion("client_id is null");
            return (Criteria) this;
        }

        public Criteria andClientIdIsNotNull() {
            addCriterion("client_id is not null");
            return (Criteria) this;
        }

        public Criteria andClientIdEqualTo(Integer value) {
            addCriterion("client_id =", value, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientIdNotEqualTo(Integer value) {
            addCriterion("client_id <>", value, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientIdGreaterThan(Integer value) {
            addCriterion("client_id >", value, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("client_id >=", value, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientIdLessThan(Integer value) {
            addCriterion("client_id <", value, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientIdLessThanOrEqualTo(Integer value) {
            addCriterion("client_id <=", value, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientIdIn(List<Integer> values) {
            addCriterion("client_id in", values, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientIdNotIn(List<Integer> values) {
            addCriterion("client_id not in", values, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientIdBetween(Integer value1, Integer value2) {
            addCriterion("client_id between", value1, value2, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientIdNotBetween(Integer value1, Integer value2) {
            addCriterion("client_id not between", value1, value2, "clientId");
            return (Criteria) this;
        }

        public Criteria andClientRealNameIsNull() {
            addCriterion("client_real_name is null");
            return (Criteria) this;
        }

        public Criteria andClientRealNameIsNotNull() {
            addCriterion("client_real_name is not null");
            return (Criteria) this;
        }

        public Criteria andClientRealNameEqualTo(String value) {
            addCriterion("client_real_name =", value, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameNotEqualTo(String value) {
            addCriterion("client_real_name <>", value, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameGreaterThan(String value) {
            addCriterion("client_real_name >", value, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameGreaterThanOrEqualTo(String value) {
            addCriterion("client_real_name >=", value, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameLessThan(String value) {
            addCriterion("client_real_name <", value, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameLessThanOrEqualTo(String value) {
            addCriterion("client_real_name <=", value, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameLike(String value) {
            addCriterion("client_real_name like", value, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameNotLike(String value) {
            addCriterion("client_real_name not like", value, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameIn(List<String> values) {
            addCriterion("client_real_name in", values, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameNotIn(List<String> values) {
            addCriterion("client_real_name not in", values, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameBetween(String value1, String value2) {
            addCriterion("client_real_name between", value1, value2, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientRealNameNotBetween(String value1, String value2) {
            addCriterion("client_real_name not between", value1, value2, "clientRealName");
            return (Criteria) this;
        }

        public Criteria andClientGenderIsNull() {
            addCriterion("client_gender is null");
            return (Criteria) this;
        }

        public Criteria andClientGenderIsNotNull() {
            addCriterion("client_gender is not null");
            return (Criteria) this;
        }

        public Criteria andClientGenderEqualTo(String value) {
            addCriterion("client_gender =", value, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderNotEqualTo(String value) {
            addCriterion("client_gender <>", value, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderGreaterThan(String value) {
            addCriterion("client_gender >", value, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderGreaterThanOrEqualTo(String value) {
            addCriterion("client_gender >=", value, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderLessThan(String value) {
            addCriterion("client_gender <", value, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderLessThanOrEqualTo(String value) {
            addCriterion("client_gender <=", value, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderLike(String value) {
            addCriterion("client_gender like", value, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderNotLike(String value) {
            addCriterion("client_gender not like", value, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderIn(List<String> values) {
            addCriterion("client_gender in", values, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderNotIn(List<String> values) {
            addCriterion("client_gender not in", values, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderBetween(String value1, String value2) {
            addCriterion("client_gender between", value1, value2, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientGenderNotBetween(String value1, String value2) {
            addCriterion("client_gender not between", value1, value2, "clientGender");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateIsNull() {
            addCriterion("client_birth_date is null");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateIsNotNull() {
            addCriterion("client_birth_date is not null");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateEqualTo(Date value) {
            addCriterionForJDBCDate("client_birth_date =", value, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateNotEqualTo(Date value) {
            addCriterionForJDBCDate("client_birth_date <>", value, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateGreaterThan(Date value) {
            addCriterionForJDBCDate("client_birth_date >", value, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("client_birth_date >=", value, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateLessThan(Date value) {
            addCriterionForJDBCDate("client_birth_date <", value, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("client_birth_date <=", value, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateIn(List<Date> values) {
            addCriterionForJDBCDate("client_birth_date in", values, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateNotIn(List<Date> values) {
            addCriterionForJDBCDate("client_birth_date not in", values, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("client_birth_date between", value1, value2, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientBirthDateNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("client_birth_date not between", value1, value2, "clientBirthDate");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberIsNull() {
            addCriterion("client_id_number is null");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberIsNotNull() {
            addCriterion("client_id_number is not null");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberEqualTo(String value) {
            addCriterion("client_id_number =", value, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberNotEqualTo(String value) {
            addCriterion("client_id_number <>", value, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberGreaterThan(String value) {
            addCriterion("client_id_number >", value, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberGreaterThanOrEqualTo(String value) {
            addCriterion("client_id_number >=", value, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberLessThan(String value) {
            addCriterion("client_id_number <", value, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberLessThanOrEqualTo(String value) {
            addCriterion("client_id_number <=", value, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberLike(String value) {
            addCriterion("client_id_number like", value, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberNotLike(String value) {
            addCriterion("client_id_number not like", value, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberIn(List<String> values) {
            addCriterion("client_id_number in", values, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberNotIn(List<String> values) {
            addCriterion("client_id_number not in", values, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberBetween(String value1, String value2) {
            addCriterion("client_id_number between", value1, value2, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdNumberNotBetween(String value1, String value2) {
            addCriterion("client_id_number not between", value1, value2, "clientIdNumber");
            return (Criteria) this;
        }

        public Criteria andClientIdImageIsNull() {
            addCriterion("client_id_image is null");
            return (Criteria) this;
        }

        public Criteria andClientIdImageIsNotNull() {
            addCriterion("client_id_image is not null");
            return (Criteria) this;
        }

        public Criteria andClientIdImageEqualTo(String value) {
            addCriterion("client_id_image =", value, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageNotEqualTo(String value) {
            addCriterion("client_id_image <>", value, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageGreaterThan(String value) {
            addCriterion("client_id_image >", value, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageGreaterThanOrEqualTo(String value) {
            addCriterion("client_id_image >=", value, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageLessThan(String value) {
            addCriterion("client_id_image <", value, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageLessThanOrEqualTo(String value) {
            addCriterion("client_id_image <=", value, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageLike(String value) {
            addCriterion("client_id_image like", value, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageNotLike(String value) {
            addCriterion("client_id_image not like", value, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageIn(List<String> values) {
            addCriterion("client_id_image in", values, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageNotIn(List<String> values) {
            addCriterion("client_id_image not in", values, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageBetween(String value1, String value2) {
            addCriterion("client_id_image between", value1, value2, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdImageNotBetween(String value1, String value2) {
            addCriterion("client_id_image not between", value1, value2, "clientIdImage");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyIsNull() {
            addCriterion("client_id_card_verify is null");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyIsNotNull() {
            addCriterion("client_id_card_verify is not null");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyEqualTo(Integer value) {
            addCriterion("client_id_card_verify =", value, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyNotEqualTo(Integer value) {
            addCriterion("client_id_card_verify <>", value, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyGreaterThan(Integer value) {
            addCriterion("client_id_card_verify >", value, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyGreaterThanOrEqualTo(Integer value) {
            addCriterion("client_id_card_verify >=", value, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyLessThan(Integer value) {
            addCriterion("client_id_card_verify <", value, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyLessThanOrEqualTo(Integer value) {
            addCriterion("client_id_card_verify <=", value, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyIn(List<Integer> values) {
            addCriterion("client_id_card_verify in", values, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyNotIn(List<Integer> values) {
            addCriterion("client_id_card_verify not in", values, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyBetween(Integer value1, Integer value2) {
            addCriterion("client_id_card_verify between", value1, value2, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientIdCardVerifyNotBetween(Integer value1, Integer value2) {
            addCriterion("client_id_card_verify not between", value1, value2, "clientIdCardVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberIsNull() {
            addCriterion("client_driver_license_number is null");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberIsNotNull() {
            addCriterion("client_driver_license_number is not null");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberEqualTo(String value) {
            addCriterion("client_driver_license_number =", value, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberNotEqualTo(String value) {
            addCriterion("client_driver_license_number <>", value, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberGreaterThan(String value) {
            addCriterion("client_driver_license_number >", value, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberGreaterThanOrEqualTo(String value) {
            addCriterion("client_driver_license_number >=", value, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberLessThan(String value) {
            addCriterion("client_driver_license_number <", value, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberLessThanOrEqualTo(String value) {
            addCriterion("client_driver_license_number <=", value, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberLike(String value) {
            addCriterion("client_driver_license_number like", value, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberNotLike(String value) {
            addCriterion("client_driver_license_number not like", value, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberIn(List<String> values) {
            addCriterion("client_driver_license_number in", values, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberNotIn(List<String> values) {
            addCriterion("client_driver_license_number not in", values, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberBetween(String value1, String value2) {
            addCriterion("client_driver_license_number between", value1, value2, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseNumberNotBetween(String value1, String value2) {
            addCriterion("client_driver_license_number not between", value1, value2, "clientDriverLicenseNumber");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageIsNull() {
            addCriterion("client_driver_license_image is null");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageIsNotNull() {
            addCriterion("client_driver_license_image is not null");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageEqualTo(String value) {
            addCriterion("client_driver_license_image =", value, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageNotEqualTo(String value) {
            addCriterion("client_driver_license_image <>", value, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageGreaterThan(String value) {
            addCriterion("client_driver_license_image >", value, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageGreaterThanOrEqualTo(String value) {
            addCriterion("client_driver_license_image >=", value, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageLessThan(String value) {
            addCriterion("client_driver_license_image <", value, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageLessThanOrEqualTo(String value) {
            addCriterion("client_driver_license_image <=", value, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageLike(String value) {
            addCriterion("client_driver_license_image like", value, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageNotLike(String value) {
            addCriterion("client_driver_license_image not like", value, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageIn(List<String> values) {
            addCriterion("client_driver_license_image in", values, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageNotIn(List<String> values) {
            addCriterion("client_driver_license_image not in", values, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageBetween(String value1, String value2) {
            addCriterion("client_driver_license_image between", value1, value2, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseImageNotBetween(String value1, String value2) {
            addCriterion("client_driver_license_image not between", value1, value2, "clientDriverLicenseImage");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyIsNull() {
            addCriterion("client_driver_license_verify is null");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyIsNotNull() {
            addCriterion("client_driver_license_verify is not null");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyEqualTo(Integer value) {
            addCriterion("client_driver_license_verify =", value, "clientDriverLicenseVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyNotEqualTo(Integer value) {
            addCriterion("client_driver_license_verify <>", value, "clientDriverLicenseVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyGreaterThan(Integer value) {
            addCriterion("client_driver_license_verify >", value, "clientDriverLicenseVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyGreaterThanOrEqualTo(Integer value) {
            addCriterion("client_driver_license_verify >=", value, "clientDriverLicenseVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyLessThan(Integer value) {
            addCriterion("client_driver_license_verify <", value, "clientDriverLicenseVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyLessThanOrEqualTo(Integer value) {
            addCriterion("client_driver_license_verify <=", value, "clientDriverLicenseVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyIn(List<Integer> values) {
            addCriterion("client_driver_license_verify in", values, "clientDriverLicenseVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyNotIn(List<Integer> values) {
            addCriterion("client_driver_license_verify not in", values, "clientDriverLicenseVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyBetween(Integer value1, Integer value2) {
            addCriterion("client_driver_license_verify between", value1, value2, "clientDriverLicenseVerify");
            return (Criteria) this;
        }

        public Criteria andClientDriverLicenseVerifyNotBetween(Integer value1, Integer value2) {
            addCriterion("client_driver_license_verify not between", value1, value2, "clientDriverLicenseVerify");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}