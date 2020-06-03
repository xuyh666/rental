package com.carrental.crud.controller;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.font.FontRenderContext;
import java.awt.geom.Rectangle2D;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Random;
 
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.carrental.crud.bean.Msg;
 
/**
 * 
 * <h1>验证码功能</h1> 
 * @author xuyh 
 * @date 2020年2月10日 下午5:57:10
 */
@Controller
public class LoginController {
 
	/**
	 * 
	 * <h1>获取验证码<h1/>
	 * @param response
	 * @param session
	 * @author xuyh 
	 * @date 2020年2月10日 下午5:57:30
	 */
	@RequestMapping("/getVerifyCode")
	public void generate(HttpServletResponse response, HttpSession session) {
		ByteArrayOutputStream output = new ByteArrayOutputStream();
		String verifyCodeValue = drawImg(output);
		session.setAttribute("verifyCodeValue", verifyCodeValue);
		try {
			ServletOutputStream out = response.getOutputStream();
			output.writeTo(out);
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
 
	/**
	 * 
	 * <h1>绘制验证码<h1/>
	 * @param output
	 * @return
	 * @author xuyh 
	 * @date 2020年2月10日 下午5:58:51
	 */
	private String drawImg(ByteArrayOutputStream output) {
		String code = "";
		// 随机产生4个字符
		for (int i = 0; i < 4; i++) {
			code += randomChar();
		}
		int width = 70;
		int height = 25;
		BufferedImage bi = new BufferedImage(width, height,
				BufferedImage.TYPE_3BYTE_BGR);
		Font font = new Font("Times New Roman", Font.PLAIN, 20);
		// 调用Graphics2D绘画验证码
		Graphics2D g = bi.createGraphics();
		g.setFont(font);
		Color color = new Color(66, 2, 82);
		g.setColor(color);
		g.setBackground(new Color(226, 226, 240));
		g.clearRect(0, 0, width, height);
		FontRenderContext context = g.getFontRenderContext();
		Rectangle2D bounds = font.getStringBounds(code, context);
		double x = (width - bounds.getWidth()) / 2;
		double y = (height - bounds.getHeight()) / 2;
		double ascent = bounds.getY();
		double baseY = y - ascent;
		g.drawString(code, (int) x, (int) baseY);
		g.dispose();
		try {
			ImageIO.write(bi, "jpg", output);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return code;
	}
 
	/**
	 * 随机参数一个字符
	 * 
	 * @return
	 */
	private char randomChar() {
		Random r = new Random();
		String s = "ABCDEFGHJKLMNPRSTUVWXYZ0123456789";
		return s.charAt(r.nextInt(s.length()));
	}
 
	/**
	 * 登录逻辑
	 */
	@RequestMapping(value="/checkVerifyCode",method=RequestMethod.GET)
	@ResponseBody
	public Msg login(HttpServletRequest request, HttpSession session,@RequestParam("verifyCode") String verifyCode) {
		//String inputVerifyCode=request.getParameter("verifyCode");
		System.out.println("用户输入的验证码值------>"+ verifyCode);
		String verifyCodeValue=(String) session.getAttribute("verifyCodeValue");
		System.out.println("Session中的验证码值------>"+ verifyCodeValue);
		if(verifyCodeValue.equals(verifyCode.toUpperCase())){
			System.out.println("用户输入的验证码和图片生成的验证码相等，登陆成功");
			return Msg.success();
		}else {
			System.out.println("error");
			return Msg.fail();
		}
	}
}
