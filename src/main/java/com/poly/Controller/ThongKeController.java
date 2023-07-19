package com.poly.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Dao.*;

@Controller
public class ThongKeController {
	@Autowired
	BillDAO billDAO;
	@Autowired
	HttpSession session;
	@Autowired
	HttpServletRequest request;

	@RequestMapping("/admin/thong-ke")
	public String thongKe(Model model) {
		List<Object[]> list = billDAO.thongKeTien("Đã Giao Hàng","Đã Thanh Toán");
		System.out.println("Độ dài đơn: " + list.size());
		model.addAttribute("items", list);
		return "html/admin/thong-ke";
	}
}
