package com.carrental.crud.service;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.multipart.MultipartFile;

import com.carrental.crud.bean.Product;
import com.carrental.crud.dao.ProductMapper;

@Service
public class ProductService {

	@Autowired
	private ProductMapper productDao;


	public List<Product> list() {
		return productDao.list();
	}


	@Transactional
	public String save(MultipartFile file, Product product, ModelMap map) throws IOException {
		
		// 保存图片的路径，图片上传成功后，将路径保存到数据库
		//D:\\workspace\\carRental\\src\\main\\webapp\\img
		String filePath = "D:\\workspace\\img";
		// 获取原始图片的扩展名
		String originalFilename = file.getOriginalFilename();
		System.out.println(file);
		// 生成文件新的名字
		String newFileName = UUID.randomUUID() + originalFilename;
		// 封装上传文件位置的全路径
		File targetFile = new File(filePath, newFileName);
		file.transferTo(targetFile);	
		// 保存到数据库
		product.setPimage(newFileName);
		productDao.save(product);
		return "index2";
	}
}
