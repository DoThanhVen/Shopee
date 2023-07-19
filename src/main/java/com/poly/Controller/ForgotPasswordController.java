package com.poly.Controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.poly.Bean.Account;
import com.poly.Dao.AccountDAO;
import com.poly.Service.*;

@Controller
@RequestMapping("/mailer")
public class ForgotPasswordController {
	@Autowired
	AccountDAO dao;
	@Autowired
	MailerService mailer;
	@Autowired
	HttpSession session;
	@Autowired
	HttpServletRequest request;

	@PostMapping("/getcode")
	@ResponseBody
	public Map<String, Object> sendVerificationCode(HttpSession session) {
		Random rand = new Random();
		String email = request.getParameter("email");
		Map<String, Object> response = new HashMap<>();
		int code = rand.nextInt(90000000) + 10000000;
		Account account = null;
		if(email != null || email != "" || !email.isEmpty()) {
			session.setAttribute("verificationCode", code);
			session.setAttribute("verificationEmail", email);
			account = dao.getAccount(email).get();	
		}
		if(account != null) {
		    response.put("message", "success");
			session.setAttribute("verificationCodeExpiresAt", System.currentTimeMillis() + (300 * 1000));// TG TỒN TẠI CODE
			try {
				mailer.send(email, "Thiết lập lại mật khẩu đăng nhập Shoppe", "<html><body>" + "<p>Xin chào "
						+ account.getFullname() + ",</p>"
						+ "<p>Chúng tôi nhận được yêu cầu thiết lập lại mật khẩu cho tài khoản Shopee của bạn.</p>"
						+ "<p>Vui lòng không chia sẽ mã này cho bất cứ ai:" + "<h3>" + code + "</h3>" + "</p>"
						+ "<p>Nếu bạn không yêu cầu thiết lập lại mật khẩu, vui lòng liên hệ Bộ phận Chăm sóc Khách hàng tại đây</p>"
						+ "<p>Trân trọng,</p>" + "<p>Đội ngũ Shopee</p>"
						+ "<p>Bạn có thắc mắc? Liên hệ chúng tôi tại đây.</p>" + "</body></html>");
			} catch (Exception e) {
				e.printStackTrace();
			}	
		}else {
			response.put("message", "error");
		}
		return response;
	}

	@RequestMapping("/verifycode")
	public String verifyCode(Model model) {
		Integer codeForm = -1;
		if (request.getParameter("code") != "") {
			codeForm = Integer.parseInt(request.getParameter("code"));
		}
		HttpSession session = request.getSession(false);
		if (codeForm != -1) {
			if (session != null) {
				Integer codeGet = -1;
				codeGet = (Integer) session.getAttribute("verificationCode");
				long verificationCodeExpiresAt = (long) session.getAttribute("verificationCodeExpiresAt");
				if (codeGet != -1) {
					long currentTime = System.currentTimeMillis();
					if (verificationCodeExpiresAt < currentTime) {
						session.removeAttribute("verificationCode");
						session.removeAttribute("verificationCodeExpiresAt");
						model.addAttribute("error", "Mã code đã hết hiệu lực");
					} else {
						if (codeGet.equals(codeForm)) {
							session.removeAttribute("verificationCode");
							session.removeAttribute("verificationCodeExpiresAt");
							return "html/forgot-password-finally";
						} else {
							System.out.println("LỖI 1");
							model.addAttribute("error", "Mã code không chính xác !");
						}
					}
				} else {
					System.out.println("LỖI 2");
					model.addAttribute("error", "Mã code không chính xác !");
				}
			} else {
				System.out.println("LỖI 3");
				model.addAttribute("error", "Mã code không chính xác !");
			}
		} else {
			model.addAttribute("error", "Vui lòng thực hiện đủ các bước !");
		}
		model.addAttribute("verifyEmail", session.getAttribute("verificationEmail"));
		return "html/forgot-password";
	}

	@RequestMapping("/change-password")
	public String changePassword(Model model) {
		Account account = dao.getAccount((String) session.getAttribute("verificationEmail")).get();
		String newpass = request.getParameter("password");
		String renewpass = request.getParameter("re-password");
		if (account == null) {
			return "html/forgot-password";
		} else {
			if (newpass == null || newpass.isEmpty() || renewpass == null || renewpass.isEmpty()) {
				model.addAttribute("error", "Vui lòng nhập đầy đủ thông tin !");
				return "html/forgot-password-finally";
			}
			if (!newpass.equals(renewpass)) {
				model.addAttribute("error", "Mật khẩu không trùng khớp !");
				return "html/forgot-password-finally";
			}
			if (newpass.equals(renewpass)) {
				try {
					account.setPassword(renewpass);
					dao.save(account);
					return "redirect:/home/sign-in";
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
		return "html/forgot-password-finally";
	}

}
