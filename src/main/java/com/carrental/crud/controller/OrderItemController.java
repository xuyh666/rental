package com.carrental.crud.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carrental.crud.bean.Client;
import com.carrental.crud.bean.Msg;
import com.carrental.crud.bean.OrderItem;
import com.carrental.crud.bean.Vehicle;
import com.carrental.crud.bean.VehicleRental;
import com.carrental.crud.service.ClientService;
import com.carrental.crud.service.OrderItemService;
import com.carrental.crud.service.VehicleRentalService;
import com.carrental.crud.service.VehicleService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class OrderItemController {

	@Autowired
	OrderItemService dao;
	@Autowired
	ClientService dao1;
	@Autowired
	VehicleService dao2;
	@Autowired
	VehicleRentalService service;
	
	/**
	 * 
	 * <h1>客户退车<h1/>
	 * @param oi
	 * @param payMoney
	 * @return
	 * @author xuyh 
	 * @date 2020年3月14日 下午5:23:23
	 */
	@RequestMapping(value="/refund",method=RequestMethod.POST)
	@ResponseBody
	public Msg refund(OrderItem oi,@RequestParam("payMoney")Double payMoney) {
		//修改车状态为1,车被租次数加1
		Vehicle vehicle1 = dao2.getOneVehicle(oi.getVehicleId());
		vehicle1.setVehicleState(1);
		dao2.updateVehicle(vehicle1);
		//修改客户余额
		Vehicle vehicle = dao2.getOneVehicle(oi.getVehicleId());
		Client client = dao1.findOneClient(oi.getClientId());
		if(vehicle.getVehicleClassNumber() == 1 || vehicle.getVehicleClassNumber() == 2) {
			client.setClientCarRentalState(1);
		}
		Double clientBalance = client.getClientBalance();
		client.setClientBalance(oi.getVehicleCashPledge()+payMoney+clientBalance);
		dao1.updateClient(client);
		//修改订单状态为5
		oi.setItemState(5);
		dao.updateOrderItem(oi);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>管理员审车<h1/>
	 * @param oi
	 * @return
	 * @author xuyh 
	 * @date 2020年3月14日 下午2:24:38
	 */
	@RequestMapping(value="/checkVehicleSucceess",method=RequestMethod.POST)
	@ResponseBody
	public Msg checkVehicleSucceess(OrderItem oi) {
		OrderItem oneOrder = dao.getOneOrder(oi.getItemId());
		//修改车状态为1,车被租次数加1
		Vehicle vehicle = dao2.getOneVehicle(oneOrder.getVehicleId());
		Integer n = vehicle.getVehicleRentalStatistic();
		vehicle.setVehicleState(1);
		vehicle.setVehicleRentalStatistic(n+1);
		dao2.updateVehicle(vehicle);
		//修改客户租汽车状态
		if(vehicle.getVehicleClassNumber() == 1 || vehicle.getVehicleClassNumber() == 2) {
			Client client = dao1.findOneClient(oneOrder.getClientId());
			client.setClientCarRentalState(1);
			dao1.updateClient(client);
		}
		oi.setItemState(4);
		dao.updateOrderItem(oi);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>用户还车<h1/>
	 * @param oi
	 * @return
	 * @author xuyh 
	 * @date 2020年3月14日 下午2:21:55
	 */
	@RequestMapping(value="/returnVehicle",method=RequestMethod.POST)
	@ResponseBody
	public Msg returnVehicle(OrderItem oi) {
		oi.setItemState(3);
		dao.updateOrderItem(oi);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>用户取车<h1/>
	 * @param oi
	 * @return
	 * @author xuyh 
	 * @date 2020年3月14日 下午2:18:27
	 */
	@RequestMapping(value="/getVehicle",method=RequestMethod.POST)
	@ResponseBody
	public Msg getVehicle(OrderItem oi) {
		oi.setItemState(2);
		System.out.println(oi);
		dao.updateOrderItem(oi);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>条件查询<h1/>
	 * @param pn
	 * @param orderItem
	 * @return
	 * @author xuyh 
	 * @date 2020年3月14日 下午2:11:11
	 */
	@RequestMapping(value="/selectOrderByCondition",method=RequestMethod.POST)
	@ResponseBody
	public Msg selectOrderByCondition(@RequestParam("pn")Integer pn,OrderItem orderItem) {
		PageHelper.startPage(pn, 5);
		List<OrderItem> list = dao.selectOrderByCondition(orderItem);
		PageInfo<OrderItem> pageInfo = new PageInfo<>(list, 3);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 
	 * <h1>新增订单<h1/>
	 * @param item
	 * @param payMoney
	 * @param clientBalance
	 * @return
	 * @author xuyh 
	 * @date 2020年3月13日 下午8:39:07
	 */
	@RequestMapping(value="/addOrderItem",method=RequestMethod.POST)
	@ResponseBody
	public Msg addOrderItem(OrderItem item,VehicleRental vr,@RequestParam("payMoney")Double payMoney,@RequestParam("clientBalance")Double clientBalance) {
		//新增订单 将订单状态设为1
		item.setItemState(1);
		dao.addOrderItem(item);
		OrderItem o;
		List<OrderItem> list = dao.selectOrderByCondition(item);
		o = list.get(0);
		//向租用表里新增一条数据
		vr.setItemId(o.getItemId());
		service.addOne(vr);
		//修改用户余额
		Client client = new Client();
		Vehicle vv = dao2.getOneVehicle(item.getVehicleId());
		Integer classNumber = vv.getVehicleClassNumber();
		if(classNumber == 1 || classNumber == 2) {
			client.setClientCarRentalState(-1);
		}
		client.setClientId(item.getClientId());
		client.setClientBalance(clientBalance-payMoney);
		dao1.updateClient(client);
		//将汽车状态改为不可用
		Vehicle vehicle = new Vehicle();
		vehicle.setVehicleId(item.getVehicleId());
		vehicle.setVehicleState(-1);
		vehicle.setVehicleDailyRent(item.getVehicleDailyRent());
		vehicle.setVehicleCashPledge(item.getVehicleCashPledge());
		dao2.updateVehicle(vehicle);
		return Msg.success();
	}
	
}
