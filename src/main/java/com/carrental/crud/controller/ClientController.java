package com.carrental.crud.controller;

import java.io.File;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.carrental.crud.bean.Client;
import com.carrental.crud.bean.Msg;
import com.carrental.crud.service.ClientService;
import com.carrental.crud.utils.MailUtil;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
public class ClientController {

	@Autowired
	ClientService dao;
	
	/**
	 * 
	 * <h1>充值金额<h1/>
	 * @param client
	 * @param balance
	 * @return
	 * @author xuyh 
	 * @date 2020年3月16日 下午4:56:41
	 */
	@RequestMapping(value="/clientRecharge",method=RequestMethod.POST)
	@ResponseBody
	public Msg clientRecharge(Client client,@RequestParam("balance")Double balance) {
		Client ct = dao.findOneClient(client.getClientId());
		String a = ct.getClientPassword();
		String b = client.getClientPassword();
		if(a.equals(b)) {
			Double ba = ct.getClientBalance();
			ct.setClientBalance(ba+balance);
			dao.updateClient(ct);
			return Msg.success();
		}else {
			return Msg.fail();
		}
	}
	
	/**
	 * 
	 * <h1>客户登录<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年3月14日 下午2:30:30
	 */
	@ResponseBody
	@RequestMapping(value="/clientLogin",method=RequestMethod.POST)
	public Msg clientLogin(Client client) {
		Client ct = dao.clientLogin(client);
		if(ct == null) {
			return Msg.fail().add("client", ct);
		}else {
			return Msg.success().add("client", ct);
		}
	}
	
	/**
	 * 
	 * <h1>客户激活<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年3月10日 下午1:23:46
	 */
	@ResponseBody
	@RequestMapping(value="/clientActivation",method=RequestMethod.POST)
	public Msg clientActivation(Client client) {
		System.out.println(client.getClientActivateCode());
		boolean b = dao.clientActivation(client);
		if(b) {
			return Msg.success();
		}else {
			return Msg.fail();
		}
		
	}
	
	/**
	 * 
	 * <h1>多条件查询<h1/>
	 * @param pn
	 * @param client
	 * @return
	 * @throws Exception
	 * @author xuyh 
	 * @date 2020年3月6日 下午11:07:27
	 */
	@ResponseBody
	@RequestMapping(value="/selectClientByConditions/{pn}",method=RequestMethod.POST)
	public Msg selectClientByConditions(@PathVariable("pn")Integer pn,Client client) throws Exception {
	    PageHelper.startPage(pn, 8);
		List<Client> list = dao.selectClientByConditions(client);
		PageInfo<Client> pageInfo = new PageInfo<>(list, 5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 
	 * <h1>修改头像<h1/>
	 * @param file
	 * @param client
	 * @throws Exception
	 * @author xuyh 
	 * @date 2020年3月6日 下午9:13:50
	 */
	@RequestMapping(value="/altHeadPortrait",method=RequestMethod.POST)
	@ResponseBody
	public void altHeadPortrait(@RequestParam("file")MultipartFile file,Client client) throws Exception {
		Client findOneClient = dao.findOneClient(client.getClientId());
		// 保存图片的路径，图片上传成功后，将路径保存到数据库
		String filePath = "D:\\workspace\\img";
		// 获取原始图片的扩展名
		String originalFilename = file.getOriginalFilename();
		// 生成文件新的名字
		String str = UUID.randomUUID().toString().replace("-", "");
		String newFileName = str.substring(0, 6) + originalFilename;
		// 封装上传文件位置的全路径
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);	
		// 保存到数据库
		findOneClient.setClientHeadPortrait(newFileName);
		dao.updateClient(findOneClient);
	}
	
	/**
	 * 
	 * <h1>删除单个或多个员工<h1/>
	 * @param clientId
	 * @return
	 * @author xuyh 
	 * @date 2020年3月6日 下午3:04:49
	 */
	@ResponseBody
	@RequestMapping(value="/delClient",method=RequestMethod.POST)
	public Msg delClient(@RequestParam("clientId")String clientId) {
		if(clientId.contains("-")) {
			String[] string = clientId.split("-");
			List<Integer> list = new ArrayList<>();
			for (String str : string) {
				list.add(Integer.parseInt(str));
			}
			dao.delBatchClient(list);
			return Msg.success();
		}else {
			dao.delOneClient(Integer.parseInt(clientId));
			return Msg.success();
		}
	}
	
	/**
	 * 
	 * <h1>更新员工数据<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年3月5日 下午10:45:20
	 */
	@ResponseBody
	@RequestMapping(value="/updateClient",method=RequestMethod.POST)
	public Msg updateClient(Client client) {
		dao.updateClient(client);
		return Msg.success();
	}
	
	/**
	 * 
	 * <h1>修改密码<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年4月6日 下午5:41:29
	 */
	@ResponseBody
	@RequestMapping(value="/updateClientPassword",method=RequestMethod.POST)
	public Msg updateClientPassword(Client client) {
		Client cc = dao.findOneClient(client.getClientId());
		cc.setClientPassword(client.getClientPassword());
		dao.updateClient(cc);
		return Msg.success();
	}
	/**
	 * 
	 * <h1>通过Id查找<h1/>
	 * @param clientId
	 * @return
	 * @author xuyh 
	 * @date 2020年3月5日 下午9:23:15
	 */
	@RequestMapping(value="/findOneClient/{clientId}",method=RequestMethod.GET)
	@ResponseBody
	public Msg findOneClient(@PathVariable("clientId")String clientId) {
        Client client = dao.findOneClient(Integer.parseInt(clientId));  
        return Msg.success().add("client", client);
	}
	
	/**
	 * 
	 * <h1>获取所有用户<h1/>
	 * @param pn
	 * @return
	 * @author xuyh 
	 * @date 2020年3月5日 下午6:01:14
	 */
	@RequestMapping(value="/getAllClient",method=RequestMethod.GET)
	@ResponseBody
	public Msg getAllClient(@RequestParam("pn") Integer pn) {
		PageHelper.startPage(pn, 8);
		List<Client> list = dao.getAllClient();
		PageInfo<Client> pageInfo = new PageInfo<>(list,5);
		return Msg.success().add("pageInfo", pageInfo);
	}
	
	/**
	 * 
	 * <h1>检测手机号是否重复<h1/>
	 * @param clientPhoneNumber
	 * @return
	 * @author xuyh 
	 * @date 2020年3月5日 下午5:56:52
	 */
	@RequestMapping(value="/checkClientPhoneNumber",method=RequestMethod.POST)
	@ResponseBody
	public Msg checkClientPhoneNumber(@RequestParam("clientPhoneNumber")String clientPhoneNumber) {
		String regClientPhoneNumber = "^1([358][0-9]|4[579]|66|7[0135678]|9[89])[0-9]{8}$";
		if(!clientPhoneNumber.matches(regClientPhoneNumber)) {
			return Msg.fail().add("e_msg", "手机号不存在");
		}
		boolean b = dao.checkClientPhoneNumber(clientPhoneNumber);
		if(b) {
			return Msg.success();
		}else {
			return Msg.fail().add("e_msg", "该手机号已被注册");
		}
	}
	
	/**
	 * 
	 * <h1>验证用户名是否重复<h1/>
	 * @param clientUsername
	 * @return
	 * @author xuyh 
	 * @date 2020年3月4日 下午7:47:32
	 */
	@ResponseBody
	@RequestMapping(value="/checkClientUsername",method=RequestMethod.POST)
	public Msg checkClientUsername(@RequestParam("clientUsername")String clientUsername) {
		String regClientUsername = "(^[a-zA-Z0-9_-]{6,16}$)";
		if(!clientUsername.matches(regClientUsername)) {
			return Msg.fail().add("va_msg", "用户名必须是6到16位数字或字母");
		}
		Boolean bo = dao.checkClientUsername(clientUsername);
		if(bo) {
			return Msg.success();
		}else {
			return Msg.fail().add("va_msg", "用户名已存在");
		}
	}
	
	/**
	 * 
	 * <h1>新增用户<h1/>
	 * @param client
	 * @return
	 * @author xuyh 
	 * @date 2020年3月4日 下午4:53:26
	 */
	@ResponseBody
	@RequestMapping(value="/saveClient",method=RequestMethod.POST)
	public Msg saveClient(Client client) {
		System.out.println(client);
		//生成激活码
	    String code=UUID.randomUUID().toString().substring(0, 8);
	    //将用户保存到数据库
	    client.setClientActivateCode(code);
		if(client.getClientActivate() != null) {
			if(client.getClientActivate() == 1) {
				dao.saveClient(client);
			}else if(client.getClientActivate() == -1){
			    //保存成功则通过线程的方式给用户发送一封邮件
			    dao.saveClient(client);
			    new Thread(new MailUtil(client.getClientEmail(), code)).start();
			}else {
				return Msg.fail();
			}
		}else {
			 dao.saveClient(client);
			 new Thread(new MailUtil(client.getClientEmail(), code)).start();
		}
		return Msg.success();
	}
	
	@RequestMapping(value="/checkCode",method=RequestMethod.POST)
	@ResponseBody
	public Msg checkCode(HttpServletRequest requst) {
		String code = requst.getParameter("code");
		System.out.println(code);
		return Msg.success();
	}
}
