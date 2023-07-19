package com.poly.Controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.poly.Bean.Account;
import com.poly.Dao.AccountDAO;

@Controller
public class RegisterController {
	@Autowired
	AccountDAO dao;
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpSession session;

	@RequestMapping("/register/check")
	public String checkRegister() {
		session = request.getSession();
		String username = request.getParameter("phone");
		List<Account> accounts = dao.findAll();
		String reg = "^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$";
		boolean checkPhone = username.matches(reg);
		int check = -1;
		if (checkPhone) {
			for (Account account : accounts) {
				if (account.getUsername().equals(username)) {
					request.setAttribute("error", "Tài khoản đã tồn tại !");
					check = 1;
					break;
				}
			}
			if (check == -1) {
				session.setAttribute("userRegister", username);
				return "html/sign-up-finally";
			}
		} else {
			request.setAttribute("error", "Định dạng không hợp lệ!");
		}
		return "html/sign-up";
	}

	@RequestMapping("/register/sign-up")
	public String register(Account account) {
		String username = (String) session.getAttribute("userRegister");
		if(username.isEmpty() || username == null) {
			return "html/sign-up";
		}
		String fullName = request.getParameter("fullname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String reg = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$";

		boolean checkEmail = email.matches(reg);
		if (email != "" && fullName != "" && password != "" && address != "") {
			if (!checkEmail) {
				request.setAttribute("error", "Định dạng email không hợp lệ!");
				return "html/sign-up-finally";
			} else if (password.length() < 6 || password.length() > 20) {
				request.setAttribute("error", "Độ dài password từ 6 đến 20 ký tự!");
				return "html/sign-up-finally";
			} else {
				try {
					int checkMail =-1;
					for(Account acc : dao.findAll()) {
						if(acc.getEmail().equals(email)) {
							checkMail = 1;
							break;
						}
					}if(checkMail == -1) {
						account = new Account();
						account.setUsername(username);
						account.setPassword(password);
						account.setEmail(email);
						account.setFullname(fullName);
						account.setPhoto("logo.png");
						account.setAddress(address);
						dao.save(account);	
					}else {
						request.setAttribute("error", "Email đã được xác thực cho một tài khoản khác!");
						return "html/sign-up-finally";
					}
				} catch (Exception e) {
					System.out.print("Lỗi: " + e.getMessage());
				}
				return "html/sign-in";
			}
		} else {
			request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin!");
			return "html/sign-up-finally";
		}
	}
}
