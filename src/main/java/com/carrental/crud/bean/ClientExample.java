package com.carrental.crud.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class ClientExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public ClientExample() {
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

        public Criteria andClientPhoneNumberIsNull() {
            addCriterion("client_phone_number is null");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberIsNotNull() {
            addCriterion("client_phone_number is not null");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberEqualTo(String value) {
            addCriterion("client_phone_number =", value, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberNotEqualTo(String value) {
            addCriterion("client_phone_number <>", value, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberGreaterThan(String value) {
            addCriterion("client_phone_number >", value, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberGreaterThanOrEqualTo(String value) {
            addCriterion("client_phone_number >=", value, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberLessThan(String value) {
            addCriterion("client_phone_number <", value, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberLessThanOrEqualTo(String value) {
            addCriterion("client_phone_number <=", value, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberLike(String value) {
            addCriterion("client_phone_number like", value, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberNotLike(String value) {
            addCriterion("client_phone_number not like", value, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberIn(List<String> values) {
            addCriterion("client_phone_number in", values, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberNotIn(List<String> values) {
            addCriterion("client_phone_number not in", values, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberBetween(String value1, String value2) {
            addCriterion("client_phone_number between", value1, value2, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientPhoneNumberNotBetween(String value1, String value2) {
            addCriterion("client_phone_number not between", value1, value2, "clientPhoneNumber");
            return (Criteria) this;
        }

        public Criteria andClientUsernameIsNull() {
            addCriterion("client_username is null");
            return (Criteria) this;
        }

        public Criteria andClientUsernameIsNotNull() {
            addCriterion("client_username is not null");
            return (Criteria) this;
        }

        public Criteria andClientUsernameEqualTo(String value) {
            addCriterion("client_username =", value, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameNotEqualTo(String value) {
            addCriterion("client_username <>", value, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameGreaterThan(String value) {
            addCriterion("client_username >", value, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("client_username >=", value, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameLessThan(String value) {
            addCriterion("client_username <", value, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameLessThanOrEqualTo(String value) {
            addCriterion("client_username <=", value, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameLike(String value) {
            addCriterion("client_username like", value, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameNotLike(String value) {
            addCriterion("client_username not like", value, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameIn(List<String> values) {
            addCriterion("client_username in", values, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameNotIn(List<String> values) {
            addCriterion("client_username not in", values, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameBetween(String value1, String value2) {
            addCriterion("client_username between", value1, value2, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientUsernameNotBetween(String value1, String value2) {
            addCriterion("client_username not between", value1, value2, "clientUsername");
            return (Criteria) this;
        }

        public Criteria andClientPasswordIsNull() {
            addCriterion("client_password is null");
            return (Criteria) this;
        }

        public Criteria andClientPasswordIsNotNull() {
            addCriterion("client_password is not null");
            return (Criteria) this;
        }

        public Criteria andClientPasswordEqualTo(String value) {
            addCriterion("client_password =", value, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordNotEqualTo(String value) {
            addCriterion("client_password <>", value, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordGreaterThan(String value) {
            addCriterion("client_password >", value, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("client_password >=", value, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordLessThan(String value) {
            addCriterion("client_password <", value, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordLessThanOrEqualTo(String value) {
            addCriterion("client_password <=", value, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordLike(String value) {
            addCriterion("client_password like", value, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordNotLike(String value) {
            addCriterion("client_password not like", value, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordIn(List<String> values) {
            addCriterion("client_password in", values, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordNotIn(List<String> values) {
            addCriterion("client_password not in", values, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordBetween(String value1, String value2) {
            addCriterion("client_password between", value1, value2, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientPasswordNotBetween(String value1, String value2) {
            addCriterion("client_password not between", value1, value2, "clientPassword");
            return (Criteria) this;
        }

        public Criteria andClientEmailIsNull() {
            addCriterion("client_email is null");
            return (Criteria) this;
        }

        public Criteria andClientEmailIsNotNull() {
            addCriterion("client_email is not null");
            return (Criteria) this;
        }

        public Criteria andClientEmailEqualTo(String value) {
            addCriterion("client_email =", value, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailNotEqualTo(String value) {
            addCriterion("client_email <>", value, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailGreaterThan(String value) {
            addCriterion("client_email >", value, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailGreaterThanOrEqualTo(String value) {
            addCriterion("client_email >=", value, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailLessThan(String value) {
            addCriterion("client_email <", value, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailLessThanOrEqualTo(String value) {
            addCriterion("client_email <=", value, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailLike(String value) {
            addCriterion("client_email like", value, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailNotLike(String value) {
            addCriterion("client_email not like", value, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailIn(List<String> values) {
            addCriterion("client_email in", values, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailNotIn(List<String> values) {
            addCriterion("client_email not in", values, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailBetween(String value1, String value2) {
            addCriterion("client_email between", value1, value2, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientEmailNotBetween(String value1, String value2) {
            addCriterion("client_email not between", value1, value2, "clientEmail");
            return (Criteria) this;
        }

        public Criteria andClientBalanceIsNull() {
            addCriterion("client_balance is null");
            return (Criteria) this;
        }

        public Criteria andClientBalanceIsNotNull() {
            addCriterion("client_balance is not null");
            return (Criteria) this;
        }

        public Criteria andClientBalanceEqualTo(Integer value) {
            addCriterion("client_balance =", value, "clientBalance");
            return (Criteria) this;
        }

        public Criteria andClientBalanceNotEqualTo(Integer value) {
            addCriterion("client_balance <>", value, "clientBalance");
            return (Criteria) this;
        }

        public Criteria andClientBalanceGreaterThan(Integer value) {
            addCriterion("client_balance >", value, "clientBalance");
            return (Criteria) this;
        }

        public Criteria andClientBalanceGreaterThanOrEqualTo(Integer value) {
            addCriterion("client_balance >=", value, "clientBalance");
            return (Criteria) this;
        }

        public Criteria andClientBalanceLessThan(Integer value) {
            addCriterion("client_balance <", value, "clientBalance");
            return (Criteria) this;
        }

        public Criteria andClientBalanceLessThanOrEqualTo(Integer value) {
            addCriterion("client_balance <=", value, "clientBalance");
            return (Criteria) this;
        }

        public Criteria andClientBalanceIn(List<Integer> values) {
            addCriterion("client_balance in", values, "clientBalance");
            return (Criteria) this;
        }

        public Criteria andClientBalanceNotIn(List<Integer> values) {
            addCriterion("client_balance not in", values, "clientBalance");
            return (Criteria) this;
        }

        public Criteria andClientBalanceBetween(Integer value1, Integer value2) {
            addCriterion("client_balance between", value1, value2, "clientBalance");
            return (Criteria) this;
        }

        public Criteria andClientBalanceNotBetween(Integer value1, Integer value2) {
            addCriterion("client_balance not between", value1, value2, "clientBalance");
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

        public Criteria andClientHeadPortraitIsNull() {
            addCriterion("client_head_portrait is null");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitIsNotNull() {
            addCriterion("client_head_portrait is not null");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitEqualTo(String value) {
            addCriterion("client_head_portrait =", value, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitNotEqualTo(String value) {
            addCriterion("client_head_portrait <>", value, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitGreaterThan(String value) {
            addCriterion("client_head_portrait >", value, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitGreaterThanOrEqualTo(String value) {
            addCriterion("client_head_portrait >=", value, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitLessThan(String value) {
            addCriterion("client_head_portrait <", value, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitLessThanOrEqualTo(String value) {
            addCriterion("client_head_portrait <=", value, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitLike(String value) {
            addCriterion("client_head_portrait like", value, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitNotLike(String value) {
            addCriterion("client_head_portrait not like", value, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitIn(List<String> values) {
            addCriterion("client_head_portrait in", values, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitNotIn(List<String> values) {
            addCriterion("client_head_portrait not in", values, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitBetween(String value1, String value2) {
            addCriterion("client_head_portrait between", value1, value2, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientHeadPortraitNotBetween(String value1, String value2) {
            addCriterion("client_head_portrait not between", value1, value2, "clientHeadPortrait");
            return (Criteria) this;
        }

        public Criteria andClientActivateIsNull() {
            addCriterion("client_activate is null");
            return (Criteria) this;
        }

        public Criteria andClientActivateIsNotNull() {
            addCriterion("client_activate is not null");
            return (Criteria) this;
        }

        public Criteria andClientActivateEqualTo(Integer value) {
            addCriterion("client_activate =", value, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateNotEqualTo(Integer value) {
            addCriterion("client_activate <>", value, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateGreaterThan(Integer value) {
            addCriterion("client_activate >", value, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateGreaterThanOrEqualTo(Integer value) {
            addCriterion("client_activate >=", value, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateLessThan(Integer value) {
            addCriterion("client_activate <", value, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateLessThanOrEqualTo(Integer value) {
            addCriterion("client_activate <=", value, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateIn(List<Integer> values) {
            addCriterion("client_activate in", values, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateNotIn(List<Integer> values) {
            addCriterion("client_activate not in", values, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateBetween(Integer value1, Integer value2) {
            addCriterion("client_activate between", value1, value2, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateNotBetween(Integer value1, Integer value2) {
            addCriterion("client_activate not between", value1, value2, "clientActivate");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeIsNull() {
            addCriterion("client_activate_code is null");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeIsNotNull() {
            addCriterion("client_activate_code is not null");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeEqualTo(String value) {
            addCriterion("client_activate_code =", value, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeNotEqualTo(String value) {
            addCriterion("client_activate_code <>", value, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeGreaterThan(String value) {
            addCriterion("client_activate_code >", value, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeGreaterThanOrEqualTo(String value) {
            addCriterion("client_activate_code >=", value, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeLessThan(String value) {
            addCriterion("client_activate_code <", value, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeLessThanOrEqualTo(String value) {
            addCriterion("client_activate_code <=", value, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeLike(String value) {
            addCriterion("client_activate_code like", value, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeNotLike(String value) {
            addCriterion("client_activate_code not like", value, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeIn(List<String> values) {
            addCriterion("client_activate_code in", values, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeNotIn(List<String> values) {
            addCriterion("client_activate_code not in", values, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeBetween(String value1, String value2) {
            addCriterion("client_activate_code between", value1, value2, "clientActivateCode");
            return (Criteria) this;
        }

        public Criteria andClientActivateCodeNotBetween(String value1, String value2) {
            addCriterion("client_activate_code not between", value1, value2, "clientActivateCode");
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