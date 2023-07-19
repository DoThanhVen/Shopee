package com.poly.Controller;

import java.util.*;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.poly.Bean.*;
import com.poly.Dao.*;

@Controller
public class PageController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	ManagerProductsDAO mpDAO;
	@Autowired
	HttpSession session;
	@Autowired
	HttpServletRequest request;
	@PersistenceContext
	EntityManager entityManager;

	@RequestMapping("/home/index")
	public String home(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 30);
		Page<Product> page = productDAO.findAll(pageable);
		model.addAttribute("page", page);
		return "html/index";
	}

	@RequestMapping("/home/find-by-keyword")
	public String search(Model model, @RequestParam("keyword") String keyword, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 30);
		Page<Product> page = null;
		if(keyword == "" || keyword.isEmpty()) {
			page = productDAO.search("", pageable);	
		}else {
			page = productDAO.search(keyword, pageable);	
		}
		model.addAttribute("page", page);
		return "html/index";
	}

	@RequestMapping("/home/cart")
	public String cart(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(0), 30);
		Page<Product> page = productDAO.findAll(pageable);
		model.addAttribute("page", page);
		List<Object[]> results = productDAO.findAllProducts((String) session.getAttribute("username"), "Chưa Xác Nhận");
		model.addAttribute("carts", results);
		model.addAttribute("lengthCart", results.size());
		return "html/cart";
	}

	@RequestMapping("/home/sign-up")
	public String sign_up(Model model) {
		return "html/sign-up";
	}

	@RequestMapping("/home/sign-in")
	public String sign_in(Model model) {
		return "html/sign-in";
	}

	@RequestMapping("/product/page")
	public String show_more(Model model, @RequestParam("p") Optional<Integer> p) {
		Pageable pageable = PageRequest.of(p.orElse(p.get()), 30);
		Page<Product> page = productDAO.findAll(pageable);
		model.addAttribute("page", page);
		return "html/show-more";
	}

	@RequestMapping("/home/info-item")
	public String info_item(Model model) {
		return "html/info-item";
	}
	@RequestMapping("/home/change-password")
	public String changePass(Model model) {
		return "html/change-password";
	}


	@RequestMapping("/home/forgot-password")
	public String forgot_password(Model model) {
		return "html/forgot-password";
	}

	@RequestMapping("/home/forgot-password-finally")
	public String forgot_password_finally(Model model) {
		session.setAttribute("usercharge", model.getAttribute("phone"));
		return "html/forgot-password-finally";
	}
}
