package com.carrental.crud.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carrental.crud.bean.Msg;
import com.carrental.crud.bean.VehicleRental;
import com.carrental.crud.service.VehicleRentalService;

@Controller
public class VehicleRentalController {

	@Autowired
	VehicleRentalService service;
	
	@RequestMapping(value="/findByItemId/{itemId}",method=RequestMethod.GET)
	@ResponseBody
	public Msg findByItemId(@PathVariable("itemId") Integer itemId) {
		VehicleRental rental = new VehicleRental();
		rental.setItemId(itemId);
		VehicleRental rental2 = service.findByItemId(rental);
		return Msg.success().add("vehicleRental", rental2);
	}
}
