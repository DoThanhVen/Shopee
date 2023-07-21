package com.poly.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.*;

import javax.servlet.http.*;
import com.poly.Bean.Account;
import com.poly.Dao.AccountDAO;

@Controller
public class LoginController {
	@Autowired
	AccountDAO dao;
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpServletResponse response;
	@Autowired
	HttpSession session;

	@RequestMapping("/login")
	public String login(Model model) {
		session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			Account account = dao.findById(username).get();
			if (account.getPassword().equals(password)) {
				session.setAttribute("username", username);
				session.setAttribute("fullname", account.getFullname());
				session.setMaxInactiveInterval(24*60*60);
				if (account.isAdmin()) {
					return "redirect:/admin/index";
				} else {
					return "redirect:/home/index";
				}
			} else {
				request.setAttribute("error", "Mật khẩu không chính xác!");
			}
		} catch (Exception e) {
			request.setAttribute("error", "Tài khoản không tồn tại!");
		}
		return "html/sign-in";
	}

	@RequestMapping("/logout")
	public String logout() {
		session = request.getSession();
		session.setAttribute("username", null);
		return "redirect:/home/index";
	}

	@RequestMapping("/info-user")
	public String info_user() {
		session = request.getSession();
		session.invalidate();
		return "redirect:/home/info-user";
	}

	@RequestMapping("/user/change-password")
	public String changePassword(Model model) {
		Account account = dao.findById((String) session.getAttribute("username")).get();
		String newpass = request.getParameter("password");
		String renewpass = request.getParameter("re-password");
		if (newpass == null || newpass.isEmpty() || renewpass == null || renewpass.isEmpty()) {
			model.addAttribute("error", "Vui lòng nhập đầy đủ thông tin !");
		} else if (!newpass.equals(renewpass)) {
			model.addAttribute("error", "Mật khẩu không trùng khớp !");
		} else if (newpass.equals(renewpass)) {
			try {
				account.setPassword(renewpass);
				dao.save(account);
				return "redirect:/home/sign-in";
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return "html/change-password";
	}

}
