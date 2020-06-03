package com.carrental.crud.bean;

import java.util.ArrayList;
import java.util.List;

public class VehicleExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public VehicleExample() {
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

        public Criteria andVehicleIdIsNull() {
            addCriterion("vehicle_id is null");
            return (Criteria) this;
        }

        public Criteria andVehicleIdIsNotNull() {
            addCriterion("vehicle_id is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleIdEqualTo(Integer value) {
            addCriterion("vehicle_id =", value, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleIdNotEqualTo(Integer value) {
            addCriterion("vehicle_id <>", value, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleIdGreaterThan(Integer value) {
            addCriterion("vehicle_id >", value, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("vehicle_id >=", value, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleIdLessThan(Integer value) {
            addCriterion("vehicle_id <", value, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleIdLessThanOrEqualTo(Integer value) {
            addCriterion("vehicle_id <=", value, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleIdIn(List<Integer> values) {
            addCriterion("vehicle_id in", values, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleIdNotIn(List<Integer> values) {
            addCriterion("vehicle_id not in", values, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleIdBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_id between", value1, value2, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleIdNotBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_id not between", value1, value2, "vehicleId");
            return (Criteria) this;
        }

        public Criteria andVehicleNameIsNull() {
            addCriterion("vehicle_name is null");
            return (Criteria) this;
        }

        public Criteria andVehicleNameIsNotNull() {
            addCriterion("vehicle_name is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleNameEqualTo(String value) {
            addCriterion("vehicle_name =", value, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameNotEqualTo(String value) {
            addCriterion("vehicle_name <>", value, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameGreaterThan(String value) {
            addCriterion("vehicle_name >", value, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_name >=", value, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameLessThan(String value) {
            addCriterion("vehicle_name <", value, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameLessThanOrEqualTo(String value) {
            addCriterion("vehicle_name <=", value, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameLike(String value) {
            addCriterion("vehicle_name like", value, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameNotLike(String value) {
            addCriterion("vehicle_name not like", value, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameIn(List<String> values) {
            addCriterion("vehicle_name in", values, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameNotIn(List<String> values) {
            addCriterion("vehicle_name not in", values, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameBetween(String value1, String value2) {
            addCriterion("vehicle_name between", value1, value2, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehicleNameNotBetween(String value1, String value2) {
            addCriterion("vehicle_name not between", value1, value2, "vehicleName");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberIsNull() {
            addCriterion("vehicle_plate_number is null");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberIsNotNull() {
            addCriterion("vehicle_plate_number is not null");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberEqualTo(String value) {
            addCriterion("vehicle_plate_number =", value, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberNotEqualTo(String value) {
            addCriterion("vehicle_plate_number <>", value, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberGreaterThan(String value) {
            addCriterion("vehicle_plate_number >", value, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_plate_number >=", value, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberLessThan(String value) {
            addCriterion("vehicle_plate_number <", value, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberLessThanOrEqualTo(String value) {
            addCriterion("vehicle_plate_number <=", value, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberLike(String value) {
            addCriterion("vehicle_plate_number like", value, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberNotLike(String value) {
            addCriterion("vehicle_plate_number not like", value, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberIn(List<String> values) {
            addCriterion("vehicle_plate_number in", values, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberNotIn(List<String> values) {
            addCriterion("vehicle_plate_number not in", values, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberBetween(String value1, String value2) {
            addCriterion("vehicle_plate_number between", value1, value2, "vehiclePlateNumber");
            return (Criteria) this;
        }

        public Criteria andVehiclePlateNumberNotBetween(String value1, String value2) {
            addCriterion("vehicle_plate_number not between", value1, value2, "vehiclePlateNumber");
            return (Criteria) this;
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

        public Criteria andVehicleColorIsNull() {
            addCriterion("vehicle_color is null");
            return (Criteria) this;
        }

        public Criteria andVehicleColorIsNotNull() {
            addCriterion("vehicle_color is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleColorEqualTo(String value) {
            addCriterion("vehicle_color =", value, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorNotEqualTo(String value) {
            addCriterion("vehicle_color <>", value, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorGreaterThan(String value) {
            addCriterion("vehicle_color >", value, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_color >=", value, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorLessThan(String value) {
            addCriterion("vehicle_color <", value, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorLessThanOrEqualTo(String value) {
            addCriterion("vehicle_color <=", value, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorLike(String value) {
            addCriterion("vehicle_color like", value, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorNotLike(String value) {
            addCriterion("vehicle_color not like", value, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorIn(List<String> values) {
            addCriterion("vehicle_color in", values, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorNotIn(List<String> values) {
            addCriterion("vehicle_color not in", values, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorBetween(String value1, String value2) {
            addCriterion("vehicle_color between", value1, value2, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleColorNotBetween(String value1, String value2) {
            addCriterion("vehicle_color not between", value1, value2, "vehicleColor");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionIsNull() {
            addCriterion("vehicle_introduction is null");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionIsNotNull() {
            addCriterion("vehicle_introduction is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionEqualTo(String value) {
            addCriterion("vehicle_introduction =", value, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionNotEqualTo(String value) {
            addCriterion("vehicle_introduction <>", value, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionGreaterThan(String value) {
            addCriterion("vehicle_introduction >", value, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_introduction >=", value, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionLessThan(String value) {
            addCriterion("vehicle_introduction <", value, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionLessThanOrEqualTo(String value) {
            addCriterion("vehicle_introduction <=", value, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionLike(String value) {
            addCriterion("vehicle_introduction like", value, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionNotLike(String value) {
            addCriterion("vehicle_introduction not like", value, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionIn(List<String> values) {
            addCriterion("vehicle_introduction in", values, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionNotIn(List<String> values) {
            addCriterion("vehicle_introduction not in", values, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionBetween(String value1, String value2) {
            addCriterion("vehicle_introduction between", value1, value2, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleIntroductionNotBetween(String value1, String value2) {
            addCriterion("vehicle_introduction not between", value1, value2, "vehicleIntroduction");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeIsNull() {
            addCriterion("vehicle_age is null");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeIsNotNull() {
            addCriterion("vehicle_age is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeEqualTo(Integer value) {
            addCriterion("vehicle_age =", value, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeNotEqualTo(Integer value) {
            addCriterion("vehicle_age <>", value, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeGreaterThan(Integer value) {
            addCriterion("vehicle_age >", value, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("vehicle_age >=", value, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeLessThan(Integer value) {
            addCriterion("vehicle_age <", value, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeLessThanOrEqualTo(Integer value) {
            addCriterion("vehicle_age <=", value, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeIn(List<Integer> values) {
            addCriterion("vehicle_age in", values, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeNotIn(List<Integer> values) {
            addCriterion("vehicle_age not in", values, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_age between", value1, value2, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleAgeNotBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_age not between", value1, value2, "vehicleAge");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementIsNull() {
            addCriterion("vehicle_displacement is null");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementIsNotNull() {
            addCriterion("vehicle_displacement is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementEqualTo(String value) {
            addCriterion("vehicle_displacement =", value, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementNotEqualTo(String value) {
            addCriterion("vehicle_displacement <>", value, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementGreaterThan(String value) {
            addCriterion("vehicle_displacement >", value, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_displacement >=", value, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementLessThan(String value) {
            addCriterion("vehicle_displacement <", value, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementLessThanOrEqualTo(String value) {
            addCriterion("vehicle_displacement <=", value, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementLike(String value) {
            addCriterion("vehicle_displacement like", value, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementNotLike(String value) {
            addCriterion("vehicle_displacement not like", value, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementIn(List<String> values) {
            addCriterion("vehicle_displacement in", values, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementNotIn(List<String> values) {
            addCriterion("vehicle_displacement not in", values, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementBetween(String value1, String value2) {
            addCriterion("vehicle_displacement between", value1, value2, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleDisplacementNotBetween(String value1, String value2) {
            addCriterion("vehicle_displacement not between", value1, value2, "vehicleDisplacement");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeIsNull() {
            addCriterion("vehicle_oil_type is null");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeIsNotNull() {
            addCriterion("vehicle_oil_type is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeEqualTo(String value) {
            addCriterion("vehicle_oil_type =", value, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeNotEqualTo(String value) {
            addCriterion("vehicle_oil_type <>", value, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeGreaterThan(String value) {
            addCriterion("vehicle_oil_type >", value, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_oil_type >=", value, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeLessThan(String value) {
            addCriterion("vehicle_oil_type <", value, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeLessThanOrEqualTo(String value) {
            addCriterion("vehicle_oil_type <=", value, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeLike(String value) {
            addCriterion("vehicle_oil_type like", value, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeNotLike(String value) {
            addCriterion("vehicle_oil_type not like", value, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeIn(List<String> values) {
            addCriterion("vehicle_oil_type in", values, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeNotIn(List<String> values) {
            addCriterion("vehicle_oil_type not in", values, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeBetween(String value1, String value2) {
            addCriterion("vehicle_oil_type between", value1, value2, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilTypeNotBetween(String value1, String value2) {
            addCriterion("vehicle_oil_type not between", value1, value2, "vehicleOilType");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityIsNull() {
            addCriterion("vehicle_oil_capacity is null");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityIsNotNull() {
            addCriterion("vehicle_oil_capacity is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityEqualTo(String value) {
            addCriterion("vehicle_oil_capacity =", value, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityNotEqualTo(String value) {
            addCriterion("vehicle_oil_capacity <>", value, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityGreaterThan(String value) {
            addCriterion("vehicle_oil_capacity >", value, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_oil_capacity >=", value, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityLessThan(String value) {
            addCriterion("vehicle_oil_capacity <", value, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityLessThanOrEqualTo(String value) {
            addCriterion("vehicle_oil_capacity <=", value, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityLike(String value) {
            addCriterion("vehicle_oil_capacity like", value, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityNotLike(String value) {
            addCriterion("vehicle_oil_capacity not like", value, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityIn(List<String> values) {
            addCriterion("vehicle_oil_capacity in", values, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityNotIn(List<String> values) {
            addCriterion("vehicle_oil_capacity not in", values, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityBetween(String value1, String value2) {
            addCriterion("vehicle_oil_capacity between", value1, value2, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleOilCapacityNotBetween(String value1, String value2) {
            addCriterion("vehicle_oil_capacity not between", value1, value2, "vehicleOilCapacity");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumIsNull() {
            addCriterion("vehicle_seat_num is null");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumIsNotNull() {
            addCriterion("vehicle_seat_num is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumEqualTo(String value) {
            addCriterion("vehicle_seat_num =", value, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumNotEqualTo(String value) {
            addCriterion("vehicle_seat_num <>", value, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumGreaterThan(String value) {
            addCriterion("vehicle_seat_num >", value, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumGreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_seat_num >=", value, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumLessThan(String value) {
            addCriterion("vehicle_seat_num <", value, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumLessThanOrEqualTo(String value) {
            addCriterion("vehicle_seat_num <=", value, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumLike(String value) {
            addCriterion("vehicle_seat_num like", value, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumNotLike(String value) {
            addCriterion("vehicle_seat_num not like", value, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumIn(List<String> values) {
            addCriterion("vehicle_seat_num in", values, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumNotIn(List<String> values) {
            addCriterion("vehicle_seat_num not in", values, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumBetween(String value1, String value2) {
            addCriterion("vehicle_seat_num between", value1, value2, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleSeatNumNotBetween(String value1, String value2) {
            addCriterion("vehicle_seat_num not between", value1, value2, "vehicleSeatNum");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1IsNull() {
            addCriterion("vehicle_image1 is null");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1IsNotNull() {
            addCriterion("vehicle_image1 is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1EqualTo(String value) {
            addCriterion("vehicle_image1 =", value, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1NotEqualTo(String value) {
            addCriterion("vehicle_image1 <>", value, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1GreaterThan(String value) {
            addCriterion("vehicle_image1 >", value, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1GreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_image1 >=", value, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1LessThan(String value) {
            addCriterion("vehicle_image1 <", value, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1LessThanOrEqualTo(String value) {
            addCriterion("vehicle_image1 <=", value, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1Like(String value) {
            addCriterion("vehicle_image1 like", value, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1NotLike(String value) {
            addCriterion("vehicle_image1 not like", value, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1In(List<String> values) {
            addCriterion("vehicle_image1 in", values, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1NotIn(List<String> values) {
            addCriterion("vehicle_image1 not in", values, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1Between(String value1, String value2) {
            addCriterion("vehicle_image1 between", value1, value2, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage1NotBetween(String value1, String value2) {
            addCriterion("vehicle_image1 not between", value1, value2, "vehicleImage1");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2IsNull() {
            addCriterion("vehicle_image2 is null");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2IsNotNull() {
            addCriterion("vehicle_image2 is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2EqualTo(String value) {
            addCriterion("vehicle_image2 =", value, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2NotEqualTo(String value) {
            addCriterion("vehicle_image2 <>", value, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2GreaterThan(String value) {
            addCriterion("vehicle_image2 >", value, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2GreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_image2 >=", value, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2LessThan(String value) {
            addCriterion("vehicle_image2 <", value, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2LessThanOrEqualTo(String value) {
            addCriterion("vehicle_image2 <=", value, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2Like(String value) {
            addCriterion("vehicle_image2 like", value, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2NotLike(String value) {
            addCriterion("vehicle_image2 not like", value, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2In(List<String> values) {
            addCriterion("vehicle_image2 in", values, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2NotIn(List<String> values) {
            addCriterion("vehicle_image2 not in", values, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2Between(String value1, String value2) {
            addCriterion("vehicle_image2 between", value1, value2, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage2NotBetween(String value1, String value2) {
            addCriterion("vehicle_image2 not between", value1, value2, "vehicleImage2");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3IsNull() {
            addCriterion("vehicle_image3 is null");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3IsNotNull() {
            addCriterion("vehicle_image3 is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3EqualTo(String value) {
            addCriterion("vehicle_image3 =", value, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3NotEqualTo(String value) {
            addCriterion("vehicle_image3 <>", value, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3GreaterThan(String value) {
            addCriterion("vehicle_image3 >", value, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3GreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_image3 >=", value, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3LessThan(String value) {
            addCriterion("vehicle_image3 <", value, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3LessThanOrEqualTo(String value) {
            addCriterion("vehicle_image3 <=", value, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3Like(String value) {
            addCriterion("vehicle_image3 like", value, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3NotLike(String value) {
            addCriterion("vehicle_image3 not like", value, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3In(List<String> values) {
            addCriterion("vehicle_image3 in", values, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3NotIn(List<String> values) {
            addCriterion("vehicle_image3 not in", values, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3Between(String value1, String value2) {
            addCriterion("vehicle_image3 between", value1, value2, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage3NotBetween(String value1, String value2) {
            addCriterion("vehicle_image3 not between", value1, value2, "vehicleImage3");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4IsNull() {
            addCriterion("vehicle_image4 is null");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4IsNotNull() {
            addCriterion("vehicle_image4 is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4EqualTo(String value) {
            addCriterion("vehicle_image4 =", value, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4NotEqualTo(String value) {
            addCriterion("vehicle_image4 <>", value, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4GreaterThan(String value) {
            addCriterion("vehicle_image4 >", value, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4GreaterThanOrEqualTo(String value) {
            addCriterion("vehicle_image4 >=", value, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4LessThan(String value) {
            addCriterion("vehicle_image4 <", value, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4LessThanOrEqualTo(String value) {
            addCriterion("vehicle_image4 <=", value, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4Like(String value) {
            addCriterion("vehicle_image4 like", value, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4NotLike(String value) {
            addCriterion("vehicle_image4 not like", value, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4In(List<String> values) {
            addCriterion("vehicle_image4 in", values, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4NotIn(List<String> values) {
            addCriterion("vehicle_image4 not in", values, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4Between(String value1, String value2) {
            addCriterion("vehicle_image4 between", value1, value2, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleImage4NotBetween(String value1, String value2) {
            addCriterion("vehicle_image4 not between", value1, value2, "vehicleImage4");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentIsNull() {
            addCriterion("vehicle_daily_rent is null");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentIsNotNull() {
            addCriterion("vehicle_daily_rent is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentEqualTo(Integer value) {
            addCriterion("vehicle_daily_rent =", value, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentNotEqualTo(Integer value) {
            addCriterion("vehicle_daily_rent <>", value, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentGreaterThan(Integer value) {
            addCriterion("vehicle_daily_rent >", value, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentGreaterThanOrEqualTo(Integer value) {
            addCriterion("vehicle_daily_rent >=", value, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentLessThan(Integer value) {
            addCriterion("vehicle_daily_rent <", value, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentLessThanOrEqualTo(Integer value) {
            addCriterion("vehicle_daily_rent <=", value, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentIn(List<Integer> values) {
            addCriterion("vehicle_daily_rent in", values, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentNotIn(List<Integer> values) {
            addCriterion("vehicle_daily_rent not in", values, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_daily_rent between", value1, value2, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleDailyRentNotBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_daily_rent not between", value1, value2, "vehicleDailyRent");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeIsNull() {
            addCriterion("vehicle_cash_pledge is null");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeIsNotNull() {
            addCriterion("vehicle_cash_pledge is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeEqualTo(Integer value) {
            addCriterion("vehicle_cash_pledge =", value, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeNotEqualTo(Integer value) {
            addCriterion("vehicle_cash_pledge <>", value, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeGreaterThan(Integer value) {
            addCriterion("vehicle_cash_pledge >", value, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeGreaterThanOrEqualTo(Integer value) {
            addCriterion("vehicle_cash_pledge >=", value, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeLessThan(Integer value) {
            addCriterion("vehicle_cash_pledge <", value, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeLessThanOrEqualTo(Integer value) {
            addCriterion("vehicle_cash_pledge <=", value, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeIn(List<Integer> values) {
            addCriterion("vehicle_cash_pledge in", values, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeNotIn(List<Integer> values) {
            addCriterion("vehicle_cash_pledge not in", values, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_cash_pledge between", value1, value2, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleCashPledgeNotBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_cash_pledge not between", value1, value2, "vehicleCashPledge");
            return (Criteria) this;
        }

        public Criteria andVehicleStateIsNull() {
            addCriterion("vehicle_state is null");
            return (Criteria) this;
        }

        public Criteria andVehicleStateIsNotNull() {
            addCriterion("vehicle_state is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleStateEqualTo(Integer value) {
            addCriterion("vehicle_state =", value, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleStateNotEqualTo(Integer value) {
            addCriterion("vehicle_state <>", value, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleStateGreaterThan(Integer value) {
            addCriterion("vehicle_state >", value, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("vehicle_state >=", value, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleStateLessThan(Integer value) {
            addCriterion("vehicle_state <", value, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleStateLessThanOrEqualTo(Integer value) {
            addCriterion("vehicle_state <=", value, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleStateIn(List<Integer> values) {
            addCriterion("vehicle_state in", values, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleStateNotIn(List<Integer> values) {
            addCriterion("vehicle_state not in", values, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleStateBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_state between", value1, value2, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleStateNotBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_state not between", value1, value2, "vehicleState");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticIsNull() {
            addCriterion("vehicle_rental_statistic is null");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticIsNotNull() {
            addCriterion("vehicle_rental_statistic is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticEqualTo(Integer value) {
            addCriterion("vehicle_rental_statistic =", value, "vehicleRentalStatistic");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticNotEqualTo(Integer value) {
            addCriterion("vehicle_rental_statistic <>", value, "vehicleRentalStatistic");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticGreaterThan(Integer value) {
            addCriterion("vehicle_rental_statistic >", value, "vehicleRentalStatistic");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticGreaterThanOrEqualTo(Integer value) {
            addCriterion("vehicle_rental_statistic >=", value, "vehicleRentalStatistic");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticLessThan(Integer value) {
            addCriterion("vehicle_rental_statistic <", value, "vehicleRentalStatistic");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticLessThanOrEqualTo(Integer value) {
            addCriterion("vehicle_rental_statistic <=", value, "vehicleRentalStatistic");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticIn(List<Integer> values) {
            addCriterion("vehicle_rental_statistic in", values, "vehicleRentalStatistic");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticNotIn(List<Integer> values) {
            addCriterion("vehicle_rental_statistic not in", values, "vehicleRentalStatistic");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_rental_statistic between", value1, value2, "vehicleRentalStatistic");
            return (Criteria) this;
        }

        public Criteria andVehicleRentalStatisticNotBetween(Integer value1, Integer value2) {
            addCriterion("vehicle_rental_statistic not between", value1, value2, "vehicleRentalStatistic");
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