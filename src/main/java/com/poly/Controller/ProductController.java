package com.poly.Controller;

import java.util.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.poly.Bean.*;
import com.poly.Dao.*;

@Controller
public class ProductController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	OrderDetailDAO orderDAO;
	@Autowired
	AccountDAO accountDAO;
	@Autowired
	ManagerProductsDAO managerDAO;
	@Autowired
	BillDAO billDAO;
	@Autowired
	HttpSession session;

	@RequestMapping("/product/info/{id}")
	public String info(Model model, @PathVariable("id") Integer id) {
		Product item = productDAO.findById(id).get();
		model.addAttribute("item", item);
		List<ManagerProducts> managers = managerDAO.findInfoProduct(id);
		Set<String> sizeSet = new TreeSet<>();
		Set<String> colorSet = new HashSet<>();
		Set<String> classifySet = new HashSet<>();

		for (ManagerProducts manager : managers) {
			String size = manager.getSize();
			String color = manager.getColor();
			String classify = manager.getClassify();
			if (!sizeSet.contains(size)) {
				sizeSet.add(size);
			}
			if (!classifySet.contains(classify)) {
				classifySet.add(classify);
			}
			if (!colorSet.contains(color)) {
				colorSet.add(color);
			}
			colorSet.removeIf(s -> s == null || s.equals(""));
			classifySet.removeIf(s -> s == null || s.equals(""));
			sizeSet.removeIf(s -> s == null || s.equals(""));
		}
		model.addAttribute("colors", new ArrayList<String>(colorSet));
		model.addAttribute("classifies", new ArrayList<String>(classifySet));
		model.addAttribute("sizes", new ArrayList<String>(sizeSet));
		model.addAttribute("managers", managers);
		if (managers != null) {
			return "html/info-item";
		} else {
			return "html/index";
		}
	}

	@RequestMapping(value = "/cart/{id}", method = RequestMethod.GET)
	public String addItemToCart(Model model, @PathVariable("id") Integer id, HttpServletRequest request,
			@RequestParam("action") String action) {
		if ("action1".equals(action)) {
			if ((String) session.getAttribute("username") == null) {
				return "redirect:/home/sign-in";
			} else {
				OrderDetail order = new OrderDetail();
				Account account = null;
				account = accountDAO.findById((String) session.getAttribute("username")).get();
				Product product = new Product();
				product.setId(id);
				order.setAccount(account);
				order.setProduct(product);
				order.setQuantity(Integer.parseInt(request.getParameter("quantity")));
				order.setAddress(account.getAddress());
				if (request.getParameter("sizes") != null) {
					order.setSize(request.getParameter("sizes"));
				}
				if (request.getParameter("colors") != null) {
					order.setColor(request.getParameter("colors"));
				}
				if (request.getParameter("classifies") != null) {
					order.setClassify(request.getParameter("classifies"));
				}
				order.setStatus("Chưa Xác Nhận");
				orderDAO.save(order);
			}
		} else if ("action2".equals(action)) {
			String orderCode = UUID.randomUUID().toString().replaceAll("-", "").substring(0, 12);
			Bills bill = new Bills();
			OrderDetail order = new OrderDetail();
			Account account = null;
			account = accountDAO.findById((String) session.getAttribute("username")).get();
			Product product = new Product();
			product.setId(id);
			order.setAccount(account);
			order.setProduct(product);
			order.setQuantity(Integer.parseInt(request.getParameter("quantity")));
			order.setAddress(account.getAddress());
			if (request.getParameter("sizes") != null) {
				order.setSize(request.getParameter("sizes"));
			}
			if (request.getParameter("colors") != null) {
				order.setColor(request.getParameter("colors"));
			}
			if (request.getParameter("classifies") != null) {
				order.setClassify(request.getParameter("classifies"));
			}
			order.setStatus("Chờ Xác Nhận");
			orderDAO.save(order);
			bill.setIdbill(orderCode);
			bill.setStatus("Chờ Xác Nhận");
			bill.setOrder(order);
			billDAO.save(bill);
			return "redirect:/home/order";
		}
		return "redirect:/home/cart";
	}

	@RequestMapping("/cart/delete/{id}")
	public String deleteItemFromCart(Model model, @PathVariable("id") Integer id) {
		if (orderDAO.existsById(id)) {
			orderDAO.deleteById(id);
		}
		return "redirect:/home/cart";
	}

	@RequestMapping(value = "/cart/buy-item", method = RequestMethod.POST)
	public String handleSelectedProducts(@RequestParam(value = "ids[]") List<Integer> productIds,
			HttpServletRequest request) {
		if (productIds != null) {
			String orderCode = UUID.randomUUID().toString().replaceAll("-", "").substring(0, 12);
			for (Integer id : productIds) {
				Bills bill = new Bills();
				OrderDetail order = new OrderDetail();
				order = orderDAO.findById(id).get();
				order.setStatus("Chờ Xác Nhận");
				orderDAO.save(order);
				bill.setIdbill(orderCode);
				bill.setStatus("Chờ Xác Nhận");
				bill.setOrder(order);
				billDAO.save(bill);
			}
		}
		return "redirect:/home/index";
	}

}
