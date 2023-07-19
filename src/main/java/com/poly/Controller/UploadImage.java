package com.poly.Controller;

import java.io.File;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UploadImage {
	@Autowired
	ServletContext app;
	@Autowired
	HttpServletRequest request;
	@RequestMapping("upload")
	public String upload(ModelMap model, @RequestParam("image") MultipartFile image) {
		if (image.isEmpty()) {
			model.addAttribute("message", "Vui lòng chọn file");
		} else {
			try {
				String filename = image.getOriginalFilename();
				createImageLocation(filename, image);
			} catch (Exception e) {
				model.addAttribute("error", "Lỗi lưu file !");
			}
		}
		return "success";
	}
	public void createImageLocation(String filename, MultipartFile image) {
		File file = new File(app.getRealPath("/images/products/" + filename));
		try {
			image.transferTo(file);
		} catch (Exception e) {
			e.getCause();
			 
		}
	}
}
