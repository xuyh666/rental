package com.carrental.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carrental.crud.bean.OrderItem;
import com.carrental.crud.dao.OrderItemMapper;
import com.mysql.cj.x.protobuf.MysqlxCrud.Order;

@Service
public class OrderItemService {
   
	@Autowired
	OrderItemMapper mapper;
	
	/**
	 * 
	 * <h1>获取一条订单<h1/>
	 * @param integer
	 * @return
	 * @author xuyh 
	 * @date 2020年4月19日 下午7:57:02
	 */
	public OrderItem getOneOrder(Integer integer) {
		OrderItem orderItem = mapper.selectByPrimaryKey(integer);
		return orderItem;
	}
	
	/**
	 * 
	 * <h1>修改订单<h1/>
	 * @param o
	 * @author xuyh 
	 * @date 2020年3月14日 下午2:10:21
	 */
	public void updateOrderItem(OrderItem o) {
		mapper.updateByPrimaryKeySelective(o);
	}
	
	/**
	 * 
	 * <h1>条件查询<h1/>
	 * @param orderItem
	 * @return
	 * @author xuyh 
	 * @date 2020年3月13日 下午8:38:49
	 */
	public List<OrderItem> selectOrderByCondition(OrderItem orderItem){
		List<OrderItem> list = mapper.selectOrderByCondition(orderItem);
		return list;
	}
	
	/**
	 * 
	 * <h1>新增订单<h1/>
	 * @param item
	 * @author xuyh 
	 * @date 2020年3月13日 下午4:24:25
	 */
	public void addOrderItem(OrderItem item) {
		mapper.insertSelective(item);
	}
	
}
