package com.carrental.crud.bean;

import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class OrderItemExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OrderItemExample() {
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

        public Criteria andItemIdIsNull() {
            addCriterion("item_id is null");
            return (Criteria) this;
        }

        public Criteria andItemIdIsNotNull() {
            addCriterion("item_id is not null");
            return (Criteria) this;
        }

        public Criteria andItemIdEqualTo(Integer value) {
            addCriterion("item_id =", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotEqualTo(Integer value) {
            addCriterion("item_id <>", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdGreaterThan(Integer value) {
            addCriterion("item_id >", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdGreaterThanOrEqualTo(Integer value) {
            addCriterion("item_id >=", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdLessThan(Integer value) {
            addCriterion("item_id <", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdLessThanOrEqualTo(Integer value) {
            addCriterion("item_id <=", value, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdIn(List<Integer> values) {
            addCriterion("item_id in", values, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotIn(List<Integer> values) {
            addCriterion("item_id not in", values, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdBetween(Integer value1, Integer value2) {
            addCriterion("item_id between", value1, value2, "itemId");
            return (Criteria) this;
        }

        public Criteria andItemIdNotBetween(Integer value1, Integer value2) {
            addCriterion("item_id not between", value1, value2, "itemId");
            return (Criteria) this;
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

        public Criteria andVehicleRentTimeIsNull() {
            addCriterion("vehicle_rent_time is null");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeIsNotNull() {
            addCriterion("vehicle_rent_time is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeEqualTo(Date value) {
            addCriterionForJDBCDate("vehicle_rent_time =", value, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("vehicle_rent_time <>", value, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("vehicle_rent_time >", value, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("vehicle_rent_time >=", value, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeLessThan(Date value) {
            addCriterionForJDBCDate("vehicle_rent_time <", value, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("vehicle_rent_time <=", value, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeIn(List<Date> values) {
            addCriterionForJDBCDate("vehicle_rent_time in", values, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("vehicle_rent_time not in", values, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("vehicle_rent_time between", value1, value2, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleRentTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("vehicle_rent_time not between", value1, value2, "vehicleRentTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeIsNull() {
            addCriterion("vehicle_return_time is null");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeIsNotNull() {
            addCriterion("vehicle_return_time is not null");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeEqualTo(Date value) {
            addCriterionForJDBCDate("vehicle_return_time =", value, "vehicleReturnTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeNotEqualTo(Date value) {
            addCriterionForJDBCDate("vehicle_return_time <>", value, "vehicleReturnTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeGreaterThan(Date value) {
            addCriterionForJDBCDate("vehicle_return_time >", value, "vehicleReturnTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeGreaterThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("vehicle_return_time >=", value, "vehicleReturnTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeLessThan(Date value) {
            addCriterionForJDBCDate("vehicle_return_time <", value, "vehicleReturnTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeLessThanOrEqualTo(Date value) {
            addCriterionForJDBCDate("vehicle_return_time <=", value, "vehicleReturnTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeIn(List<Date> values) {
            addCriterionForJDBCDate("vehicle_return_time in", values, "vehicleReturnTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeNotIn(List<Date> values) {
            addCriterionForJDBCDate("vehicle_return_time not in", values, "vehicleReturnTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("vehicle_return_time between", value1, value2, "vehicleReturnTime");
            return (Criteria) this;
        }

        public Criteria andVehicleReturnTimeNotBetween(Date value1, Date value2) {
            addCriterionForJDBCDate("vehicle_return_time not between", value1, value2, "vehicleReturnTime");
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

        public Criteria andItemStateIsNull() {
            addCriterion("item_state is null");
            return (Criteria) this;
        }

        public Criteria andItemStateIsNotNull() {
            addCriterion("item_state is not null");
            return (Criteria) this;
        }

        public Criteria andItemStateEqualTo(Integer value) {
            addCriterion("item_state =", value, "itemState");
            return (Criteria) this;
        }

        public Criteria andItemStateNotEqualTo(Integer value) {
            addCriterion("item_state <>", value, "itemState");
            return (Criteria) this;
        }

        public Criteria andItemStateGreaterThan(Integer value) {
            addCriterion("item_state >", value, "itemState");
            return (Criteria) this;
        }

        public Criteria andItemStateGreaterThanOrEqualTo(Integer value) {
            addCriterion("item_state >=", value, "itemState");
            return (Criteria) this;
        }

        public Criteria andItemStateLessThan(Integer value) {
            addCriterion("item_state <", value, "itemState");
            return (Criteria) this;
        }

        public Criteria andItemStateLessThanOrEqualTo(Integer value) {
            addCriterion("item_state <=", value, "itemState");
            return (Criteria) this;
        }

        public Criteria andItemStateIn(List<Integer> values) {
            addCriterion("item_state in", values, "itemState");
            return (Criteria) this;
        }

        public Criteria andItemStateNotIn(List<Integer> values) {
            addCriterion("item_state not in", values, "itemState");
            return (Criteria) this;
        }

        public Criteria andItemStateBetween(Integer value1, Integer value2) {
            addCriterion("item_state between", value1, value2, "itemState");
            return (Criteria) this;
        }

        public Criteria andItemStateNotBetween(Integer value1, Integer value2) {
            addCriterion("item_state not between", value1, value2, "itemState");
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