package com.carrental.crud.bean;

import java.util.ArrayList;
import java.util.List;

public class VehicleBrandExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VehicleBrandExample() {
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

        public Criteria andVehicleBrandNumberIsNull() {
            addCriterion("vehicle_brand_number is null");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberIsNotNull() {
            addCriterion("vehicle_brand_number is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberEqualTo(Integer value) {
            addCriterion("vehicle_brand_number =", value, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberNotEqualTo(Integer value) {
            addCriterion("vehicle_brand_number <>", value, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberGreaterThan(Integer value) {
            addCriterion("vehicle_brand_number >", value, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("vehicle_brand_number >=", value, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberLessThan(Integer value) {
            addCriterion("vehicle_brand_number <", value, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberLessThanOrEqualTo(Integer value) {
            addCriterion("vehicle_brand_number <=", value, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberIn(List<Integer> values) {
            addCriterion("vehicle_brand_number in", values, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberNotIn(List<Integer> values) {
            addCriterion("vehicle_brand_number not in", values, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_brand_number between", value1, value2, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_brand_number not between", value1, value2, "vehicleBrandNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandIsNull() {
            addCriterion("vehicle_brand is null");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandIsNotNull() {
            addCriterion("vehicle_brand is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandEqualTo(String value) {
            addCriterion("vehicle_brand =", value, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNotEqualTo(String value) {
            addCriterion("vehicle_brand <>", value, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandGreaterThan(String value) {
            addCriterion("vehicle_brand >", value, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_brand >=", value, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandLessThan(String value) {
            addCriterion("vehicle_brand <", value, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandLessThanOrEqualTo(String value) {
            addCriterion("vehicle_brand <=", value, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandLike(String value) {
            addCriterion("vehicle_brand like", value, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNotLike(String value) {
            addCriterion("vehicle_brand not like", value, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandIn(List<String> values) {
            addCriterion("vehicle_brand in", values, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNotIn(List<String> values) {
            addCriterion("vehicle_brand not in", values, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandBetween(String value1, String value2) {
            addCriterion("vehicle_brand between", value1, value2, "vehicleBrand");
            return (Criteria) this;
        }

        public Criteria andVehicleBrandNotBetween(String value1, String value2) {
            addCriterion("vehicle_brand not between", value1, value2, "vehicleBrand");
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