package com.carrental.crud.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carrental.crud.bean.Client;
import com.carrental.crud.bean.ClientExample;
import com.carrental.crud.bean.ClientExample.Criteria;
import com.carrental.crud.dao.ClientMapper;

@Service
public class ClientService {

	@Autowired
	ClientMapper mapper;
	
	/**
	 * 
	 * <h1>用户登录<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年3月10日 下午1:23:25
	 */
	public Client clientLogin(Client client) {
		Client client2 = mapper.clientLogin(client);
		return client2;
	}
	
	/**
	 * 
	 * <h1>用户激活<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年3月9日 下午8:34:07
	 */
	public boolean clientActivation(Client client) {
		List<Client> list = mapper.selectClientByConditions(client);
		Client c= new Client();
		for (Client client2 : list) {
			c=client2;
		}
		c.setClientActivate(1);
		mapper.updateByPrimaryKeySelective(c);
		return true;
	}
	
	/**
	 * 
	 * <h1>多条件查询<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年3月6日 下午9:13:25
	 */
	public List<Client> selectClientByConditions(Client client) {
		List<Client> list = mapper.selectClientByConditions(client);
		return list;
	}
	
	/**
	 * 
	 * <h1>删除一个用户<h1/>
	 * @param id
	 * @author xuyh 
	 * @date 2020年3月6日 下午2:58:48
	 */
	public void delOneClient(Integer id) {
		mapper.deleteByPrimaryKey(id);
	}
	
	/**
	 * 
	 * <h1>批量删除<h1/>
	 * @param ids
	 * @author xuyh 
	 * @date 2020年3月6日 下午2:50:45
	 */
	public void delBatchClient(List<Integer> ids) {
		ClientExample example = new ClientExample();
		Criteria criteria = example.createCriteria();
		criteria.andClientIdIn(ids);
		mapper.deleteByExample(example);
	}
	
	/**
	 * 
	 * <h1>更新用户信息<h1/>
	 * @param client
	 * @author xuyh 
	 * @date 2020年3月5日 下午10:43:13
	 */
	public void updateClient(Client client) {
		mapper.updateByPrimaryKeySelective(client);
	}
	
	/**
	 * 
	 * <h1>通过Id查找用户<h1/>
	 * @param id
	 * @return
	 * @author xuyh 
	 * @date 2020年3月5日 下午9:20:40
	 */
	public Client findOneClient(Integer id) {
		Client client = mapper.selectByPrimaryKey(id);
		return client;
	}
	
	/**
	 * 
	 * <h1>获取所有用户<h1/>
	 * @return
	 * @author xuyh 
	 * @date 2020年3月5日 下午5:54:43
	 */
	public List<Client> getAllClient(){
		List<Client> list = mapper.selectByExample(null);
	    return list;
	}
	
	/**
	 * 
	 * <h1>判断手机号是否重复 返回true则不重复<h1/>
	 * @param clientPhoneNumber
	 * @return
	 * @author xuyh 
	 * @date 2020年3月4日 下午7:36:23
	 */
	public boolean checkClientPhoneNumber(String clientPhoneNumber) {
		ClientExample example = new ClientExample();
		Criteria criteria = example.createCriteria();
		criteria.andClientPhoneNumberEqualTo(clientPhoneNumber);
		long n = mapper.countByExample(example);
		return n == 0;
	}
	
	/**
	 * 
	 * <h1>判断用户名是否重复 返回true则不重复<h1/>
	 * @param clientUsername
	 * @return
	 * @author xuyh 
	 * @date 2020年3月4日 下午7:25:43
	 */
	public Boolean checkClientUsername(String clientUsername) {
		ClientExample example = new ClientExample();
		Criteria criteria = example.createCriteria();
		criteria.andClientUsernameEqualTo(clientUsername);
		long n = mapper.countByExample(example);
		return n == 0;
	}
	
	/**
	 * 
	 * <h1>新增用户<h1/>
	 * @param client
	 * @author xuyh 
	 * @date 2020年3月4日 下午3:10:56
	 */
	public void saveClient(Client client) {
		mapper.insertSelective(client);
	}
}
