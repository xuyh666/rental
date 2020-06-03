package com.carrental.crud.bean;

import java.util.ArrayList;
import java.util.List;

public class AdminExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public AdminExample() {
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

        public Criteria andAdminIdIsNull() {
            addCriterion("admin_id is null");
            return (Criteria) this;
        }

        public Criteria andAdminIdIsNotNull() {
            addCriterion("admin_id is not null");
            return (Criteria) this;
        }

        public Criteria andAdminIdEqualTo(Integer value) {
            addCriterion("admin_id =", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdNotEqualTo(Integer value) {
            addCriterion("admin_id <>", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdGreaterThan(Integer value) {
            addCriterion("admin_id >", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("admin_id >=", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdLessThan(Integer value) {
            addCriterion("admin_id <", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdLessThanOrEqualTo(Integer value) {
            addCriterion("admin_id <=", value, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdIn(List<Integer> values) {
            addCriterion("admin_id in", values, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdNotIn(List<Integer> values) {
            addCriterion("admin_id not in", values, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdBetween(Integer value1, Integer value2) {
            addCriterion("admin_id between", value1, value2, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminIdNotBetween(Integer value1, Integer value2) {
            addCriterion("admin_id not between", value1, value2, "adminId");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameIsNull() {
            addCriterion("admin_username is null");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameIsNotNull() {
            addCriterion("admin_username is not null");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameEqualTo(String value) {
            addCriterion("admin_username =", value, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameNotEqualTo(String value) {
            addCriterion("admin_username <>", value, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameGreaterThan(String value) {
            addCriterion("admin_username >", value, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameGreaterThanOrEqualTo(String value) {
            addCriterion("admin_username >=", value, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameLessThan(String value) {
            addCriterion("admin_username <", value, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameLessThanOrEqualTo(String value) {
            addCriterion("admin_username <=", value, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameLike(String value) {
            addCriterion("admin_username like", value, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameNotLike(String value) {
            addCriterion("admin_username not like", value, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameIn(List<String> values) {
            addCriterion("admin_username in", values, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameNotIn(List<String> values) {
            addCriterion("admin_username not in", values, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameBetween(String value1, String value2) {
            addCriterion("admin_username between", value1, value2, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminUsernameNotBetween(String value1, String value2) {
            addCriterion("admin_username not between", value1, value2, "adminUsername");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordIsNull() {
            addCriterion("admin_password is null");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordIsNotNull() {
            addCriterion("admin_password is not null");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordEqualTo(String value) {
            addCriterion("admin_password =", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotEqualTo(String value) {
            addCriterion("admin_password <>", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordGreaterThan(String value) {
            addCriterion("admin_password >", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordGreaterThanOrEqualTo(String value) {
            addCriterion("admin_password >=", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordLessThan(String value) {
            addCriterion("admin_password <", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordLessThanOrEqualTo(String value) {
            addCriterion("admin_password <=", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordLike(String value) {
            addCriterion("admin_password like", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotLike(String value) {
            addCriterion("admin_password not like", value, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordIn(List<String> values) {
            addCriterion("admin_password in", values, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotIn(List<String> values) {
            addCriterion("admin_password not in", values, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordBetween(String value1, String value2) {
            addCriterion("admin_password between", value1, value2, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminPasswordNotBetween(String value1, String value2) {
            addCriterion("admin_password not between", value1, value2, "adminPassword");
            return (Criteria) this;
        }

        public Criteria andAdminGenderIsNull() {
            addCriterion("admin_gender is null");
            return (Criteria) this;
        }

        public Criteria andAdminGenderIsNotNull() {
            addCriterion("admin_gender is not null");
            return (Criteria) this;
        }

        public Criteria andAdminGenderEqualTo(String value) {
            addCriterion("admin_gender =", value, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderNotEqualTo(String value) {
            addCriterion("admin_gender <>", value, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderGreaterThan(String value) {
            addCriterion("admin_gender >", value, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderGreaterThanOrEqualTo(String value) {
            addCriterion("admin_gender >=", value, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderLessThan(String value) {
            addCriterion("admin_gender <", value, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderLessThanOrEqualTo(String value) {
            addCriterion("admin_gender <=", value, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderLike(String value) {
            addCriterion("admin_gender like", value, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderNotLike(String value) {
            addCriterion("admin_gender not like", value, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderIn(List<String> values) {
            addCriterion("admin_gender in", values, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderNotIn(List<String> values) {
            addCriterion("admin_gender not in", values, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderBetween(String value1, String value2) {
            addCriterion("admin_gender between", value1, value2, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminGenderNotBetween(String value1, String value2) {
            addCriterion("admin_gender not between", value1, value2, "adminGender");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberIsNull() {
            addCriterion("admin_phoneNumber is null");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberIsNotNull() {
            addCriterion("admin_phoneNumber is not null");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberEqualTo(String value) {
            addCriterion("admin_phoneNumber =", value, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberNotEqualTo(String value) {
            addCriterion("admin_phoneNumber <>", value, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberGreaterThan(String value) {
            addCriterion("admin_phoneNumber >", value, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberGreaterThanOrEqualTo(String value) {
            addCriterion("admin_phoneNumber >=", value, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberLessThan(String value) {
            addCriterion("admin_phoneNumber <", value, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberLessThanOrEqualTo(String value) {
            addCriterion("admin_phoneNumber <=", value, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberLike(String value) {
            addCriterion("admin_phoneNumber like", value, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberNotLike(String value) {
            addCriterion("admin_phoneNumber not like", value, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberIn(List<String> values) {
            addCriterion("admin_phoneNumber in", values, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberNotIn(List<String> values) {
            addCriterion("admin_phoneNumber not in", values, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberBetween(String value1, String value2) {
            addCriterion("admin_phoneNumber between", value1, value2, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminPhonenumberNotBetween(String value1, String value2) {
            addCriterion("admin_phoneNumber not between", value1, value2, "adminPhonenumber");
            return (Criteria) this;
        }

        public Criteria andAdminLevelIsNull() {
            addCriterion("admin_level is null");
            return (Criteria) this;
        }

        public Criteria andAdminLevelIsNotNull() {
            addCriterion("admin_level is not null");
            return (Criteria) this;
        }

        public Criteria andAdminLevelEqualTo(String value) {
            addCriterion("admin_level =", value, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelNotEqualTo(String value) {
            addCriterion("admin_level <>", value, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelGreaterThan(String value) {
            addCriterion("admin_level >", value, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelGreaterThanOrEqualTo(String value) {
            addCriterion("admin_level >=", value, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelLessThan(String value) {
            addCriterion("admin_level <", value, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelLessThanOrEqualTo(String value) {
            addCriterion("admin_level <=", value, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelLike(String value) {
            addCriterion("admin_level like", value, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelNotLike(String value) {
            addCriterion("admin_level not like", value, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelIn(List<String> values) {
            addCriterion("admin_level in", values, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelNotIn(List<String> values) {
            addCriterion("admin_level not in", values, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelBetween(String value1, String value2) {
            addCriterion("admin_level between", value1, value2, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminLevelNotBetween(String value1, String value2) {
            addCriterion("admin_level not between", value1, value2, "adminLevel");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitIsNull() {
            addCriterion("admin_headPortrait is null");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitIsNotNull() {
            addCriterion("admin_headPortrait is not null");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitEqualTo(String value) {
            addCriterion("admin_headPortrait =", value, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitNotEqualTo(String value) {
            addCriterion("admin_headPortrait <>", value, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitGreaterThan(String value) {
            addCriterion("admin_headPortrait >", value, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitGreaterThanOrEqualTo(String value) {
            addCriterion("admin_headPortrait >=", value, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitLessThan(String value) {
            addCriterion("admin_headPortrait <", value, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitLessThanOrEqualTo(String value) {
            addCriterion("admin_headPortrait <=", value, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitLike(String value) {
            addCriterion("admin_headPortrait like", value, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitNotLike(String value) {
            addCriterion("admin_headPortrait not like", value, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitIn(List<String> values) {
            addCriterion("admin_headPortrait in", values, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitNotIn(List<String> values) {
            addCriterion("admin_headPortrait not in", values, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitBetween(String value1, String value2) {
            addCriterion("admin_headPortrait between", value1, value2, "adminHeadportrait");
            return (Criteria) this;
        }

        public Criteria andAdminHeadportraitNotBetween(String value1, String value2) {
            addCriterion("admin_headPortrait not between", value1, value2, "adminHeadportrait");
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