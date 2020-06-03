package com.carrental.crud.test;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

import org.apache.ibatis.session.SqlSession;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.carrental.crud.bean.Admin;
import com.carrental.crud.bean.CertificateReview;
import com.carrental.crud.bean.Client;
import com.carrental.crud.bean.Department;
import com.carrental.crud.bean.Employee;
import com.carrental.crud.bean.OrderItem;
import com.carrental.crud.bean.Vehicle;
import com.carrental.crud.bean.VehicleExample;
import com.carrental.crud.bean.VehicleExample.Criteria;
import com.carrental.crud.dao.AdminMapper;
import com.carrental.crud.dao.CertificateReviewMapper;
import com.carrental.crud.dao.ClientMapper;
import com.carrental.crud.dao.DepartmentMapper;
import com.carrental.crud.dao.EmployeeMapper;
import com.carrental.crud.dao.OrderItemMapper;
import com.carrental.crud.dao.VehicleMapper;
import com.carrental.crud.service.VehicleService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "classpath:applicationContext.xml" })
public class MapperTest {
	@Autowired
	DepartmentMapper departmentMapper;
	@Autowired
	EmployeeMapper employeeMapper;
	@Autowired
	SqlSession sqlSession;
	@Autowired
	AdminMapper adminMapper;
	@Autowired
	VehicleMapper vehicleMapper;
	@Autowired
	CertificateReviewMapper certificateReviewMapper;
	@Autowired
	OrderItemMapper orderItemMapper;
	@Autowired
	VehicleService dao;
	@Autowired
	ClientMapper clientMapper;
	@Test
	public void testCRUD() {
		/*
		 * //1.创建SpringIOC容器 ApplicationContext ioc = new
		 * ClassPathXmlApplicationContext("applicationContext.xml"); //2.从容器中获取mapper
		 * DepartmentMapper bean = ioc.getBean(DepartmentMapper.class);
		 */
		//System.out.println(departmentMapper);
		//插入一个部门
		//departmentMapper.insertSelective(new Department(null, "外联部"));
	    //插入一个员工
		//employeeMapper.insertSelective(new Employee(null, "erhu", "M", "erhu@qq.com", 1));
		//批量插入多名员工，可以执行批量操作的sqlSession
		/*EmployeeMapper mapper = sqlSession.getMapper(EmployeeMapper.class);
		for(int i=0;i<100;i++) {
			String name = UUID.randomUUID().toString().substring(0, 5)+i;
			mapper.insertSelective(new Employee(null, name, "M", name+"@qq.com", 1));
		}
		System.out.println("over");*/
		//Admin adminLogin = adminMapper.adminLogin("boss","123");
		//System.out.println(adminLogin);
	/*	VehicleExample example = new VehicleExample();
		Criteria criteria = example.createCriteria();
		List<Integer> li = new ArrayList<Integer>();
		li.add(1);
		criteria.andVehicleClassNumberIn(li);*/
		//List<Vehicle> list = vehicleMapper.selectByExampleWithClassBrand(null);
		/*List<Vehicle> list = vehicleMapper.selectByNumberWithClassBrand(2);
		for (Vehicle vehicle : list) {
			System.out.println(vehicle);
		}*/
		
		/*//Vehicle vehicle = new Vehicle();
		//vehicle.setVehicleId(1);
		//vehicle.setVehicleName("劳斯莱斯 幻影");
		//vehicle.setVehiclePlateNumber("豫J-11111");
		//vehicle.setVehicleClassNumber(1);
		//vehicle.setVehicleBrandNumber(1);
		//vehicle.setVehicleColor("蓝色");
		//vehicle.setVehicleAge(1);
		//vehicle.setVehicleDisplacement("500CC");
		//vehicle.setVehicleOilType("无");
		//vehicle.setVehicleOilCapacity("36AH");
	    //vehicle.setVehicleSeatNum("7");
		//vehicle.setVehicleDailyRent(6200);
		//vehicle.setVehicleCashPledge(50000);
		//vehicle.setVehicleState(0);
		//vehicle.setVehicleRentalStatistic(2);
		List<Vehicle> list = vehicleMapper.selectVehicleByConditions(vehicle);
		for (Vehicle vehicle2 : list) {
			System.out.println(vehicle2);
		}*/
		
		/*CertificateReview review = new CertificateReview();
		//review.setClientDriverLicenseVerify(-1);
		//review.setClientIdCardVerify(-1);
		List<CertificateReview> list = certificateReviewMapper.selectCertificateReviewByCondition(review);
		for (CertificateReview certificateReview : list) {
			System.out.println(certificateReview);
		}*/
		/*OrderItem item = new OrderItem();
		//item.setItemId(1);
		//item.setClientId(1);
		//item.setVehicleId(22);
		List<OrderItem> list = orderItemMapper.selectOrderByCondition(item);
		for (OrderItem orderItem : list) {
			System.out.println(orderItem);
		}*/
		/*List<Vehicle> list = vehicleMapper.selectWelcomVehicle();
		for (Vehicle vehicle : list) {
			System.out.println(vehicle);
		}*/
		/*List<Vehicle> list = dao.findAnotherVehicle();
		for (Vehicle vehicle : list) {
			System.out.println(vehicle);
		}*/
		/*Client client = clientMapper.selectByPrimaryKey(1);
		client.setClientCarRentalState(-1);
		clientMapper.updateByPrimaryKeySelective(client);
		System.out.println(client);*/
		List<Client> list = clientMapper.selectByExample(null);
		for (Client client : list) {
			System.out.println(client);
		}
	}
}
