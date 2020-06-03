package com.carrental.crud.bean;

import java.util.ArrayList;
import java.util.List;

public class VehicleClassExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VehicleClassExample() {
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

        public Criteria andVehicleClassNumberIsNull() {
            addCriterion("vehicle_class_number is null");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberIsNotNull() {
            addCriterion("vehicle_class_number is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberEqualTo(Integer value) {
            addCriterion("vehicle_class_number =", value, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberNotEqualTo(Integer value) {
            addCriterion("vehicle_class_number <>", value, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberGreaterThan(Integer value) {
            addCriterion("vehicle_class_number >", value, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberGreaterThanOrEqualTo(Integer value) {
            addCriterion("vehicle_class_number >=", value, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberLessThan(Integer value) {
            addCriterion("vehicle_class_number <", value, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberLessThanOrEqualTo(Integer value) {
            addCriterion("vehicle_class_number <=", value, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberIn(List<Integer> values) {
            addCriterion("vehicle_class_number in", values, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberNotIn(List<Integer> values) {
            addCriterion("vehicle_class_number not in", values, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_class_number between", value1, value2, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNumberNotBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_class_number not between", value1, value2, "vehicleClassNumber");
            return (Criteria) this;
        }

        public Criteria andVehicleClassIsNull() {
            addCriterion("vehicle_class is null");
            return (Criteria) this;
        }

        public Criteria andVehicleClassIsNotNull() {
            addCriterion("vehicle_class is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleClassEqualTo(String value) {
            addCriterion("vehicle_class =", value, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNotEqualTo(String value) {
            addCriterion("vehicle_class <>", value, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassGreaterThan(String value) {
            addCriterion("vehicle_class >", value, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_class >=", value, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassLessThan(String value) {
            addCriterion("vehicle_class <", value, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassLessThanOrEqualTo(String value) {
            addCriterion("vehicle_class <=", value, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassLike(String value) {
            addCriterion("vehicle_class like", value, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNotLike(String value) {
            addCriterion("vehicle_class not like", value, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassIn(List<String> values) {
            addCriterion("vehicle_class in", values, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNotIn(List<String> values) {
            addCriterion("vehicle_class not in", values, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassBetween(String value1, String value2) {
            addCriterion("vehicle_class between", value1, value2, "vehicleClass");
            return (Criteria) this;
        }

        public Criteria andVehicleClassNotBetween(String value1, String value2) {
            addCriterion("vehicle_class not between", value1, value2, "vehicleClass");
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