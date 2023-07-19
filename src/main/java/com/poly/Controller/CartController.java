package com.poly.Controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.*;
import com.poly.Dao.*;
import com.poly.Bean.*;

@Controller
public class CartController {
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

	@RequestMapping("/home/order")
	public String order(Model model) {
		List<Object[]> billsChoXacNhan = billDAO.getAllInOrders((String) session.getAttribute("username"),
				"Chờ Xác Nhận");
		model.addAttribute("choXacNhan", billsChoXacNhan);
		List<Object[]> billsDaXacNhan = billDAO.getAllInOrders((String) session.getAttribute("username"),
				"Đã Xác Nhận");
		model.addAttribute("daXacNhan", billsDaXacNhan);
		List<Object[]> billsDaGiaoHang = billDAO.getAllInOrders((String) session.getAttribute("username"),
				"Đã Giao Hàng");
		model.addAttribute("daGiaoHang", billsDaGiaoHang);
		List<Object[]> billsDaHuyDon = billDAO.getAllInOrders((String) session.getAttribute("username"), "Đã Hủy Đơn");
		model.addAttribute("daHuyDon", billsDaHuyDon);
		float priceBillChoXacNhan = 0;
		float priceBillDaXacNhan = 0;
		float priceBilldaGiaoHang = 0;
		float priceBillDaHuyDon = 0;
		for (Object[] bill : billsChoXacNhan) {
		    float totalPrice = Float.parseFloat(bill[7].toString()) * Float.parseFloat(bill[8].toString())/100;
		    priceBillChoXacNhan += totalPrice;
		}
		model.addAttribute("priceBillChoXacNhan", priceBillChoXacNhan);
		return "html/bill";
	}

	@RequestMapping("/home/cancel-order/{Idbill}")
	public String cancel_order(Model model, @PathVariable("Idbill") String Idbill) {
		List<Bills> lists = billDAO.getByIDBill(Idbill);
		try {
			OrderDetail order = null;
			for (Bills bill : lists) {
				bill.setStatus("Đã Hủy Đơn");
				order = orderDAO.findById(bill.getOrder().getId()).get();
				order.setStatus("Đã Hủy Đơn");
				billDAO.save(bill);
				orderDAO.save(order);
			}
			model.addAttribute("error", "Hủy đơn thành công !");
		} catch (Exception e) {
			model.addAttribute("error", "Hủy đơn không thành công !");
			e.printStackTrace();
		}
		List<Object[]> billsChoXacNhan = billDAO.getAllInOrders((String) session.getAttribute("username"),
				"Chờ Xác Nhận");
		model.addAttribute("choXacNhan", billsChoXacNhan);
		List<Object[]> billsDaXacNhan = billDAO.getAllInOrders((String) session.getAttribute("username"),
				"Đã Xác Nhận");
		model.addAttribute("daXacNhan", billsDaXacNhan);
		List<Object[]> billsDaGiaoHang = billDAO.getAllInOrders((String) session.getAttribute("username"),
				"Đã Giao Hàng");
		model.addAttribute("daGiaoHang", billsDaGiaoHang);
		List<Object[]> billsDaHuyDon = billDAO.getAllInOrders((String) session.getAttribute("username"), "Đã Hủy Đơn");
		model.addAttribute("daHuyDon", billsDaHuyDon);
		return "html/bill";
	}

	@RequestMapping("/home/repurchase/{Idbill}")
	public String repurchase(Model model, @PathVariable("Idbill") String Idbill) {
		List<Bills> lists = billDAO.getByIDBill(Idbill);
		try {
			OrderDetail order = null;
			for (Bills bill : lists) {
				bill.setStatus("Chờ Xác Nhận");
				Date date = new Date();
				bill.setCreateDate(date);
				order = orderDAO.findById(bill.getOrder().getId()).get();
				order.setStatus("Chờ Xác Nhận");
				order.setCreateDate(date);
				billDAO.save(bill);
				orderDAO.save(order);
			}
			model.addAttribute("error", "Mua lại thành công !");
		} catch (Exception e) {
			model.addAttribute("error", "Mua lại không thành công !");
			e.printStackTrace();
		}
		List<Object[]> billsChoXacNhan = billDAO.getAllInOrders((String) session.getAttribute("username"),
				"Chờ Xác Nhận");
		model.addAttribute("choXacNhan", billsChoXacNhan);
		List<Object[]> billsDaXacNhan = billDAO.getAllInOrders((String) session.getAttribute("username"),
				"Đã Xác Nhận");
		model.addAttribute("daXacNhan", billsDaXacNhan);
		List<Object[]> billsDaGiaoHang = billDAO.getAllInOrders((String) session.getAttribute("username"),
				"Đã Giao Hàng");
		model.addAttribute("daGiaoHang", billsDaGiaoHang);
		List<Object[]> billsDaHuyDon = billDAO.getAllInOrders((String) session.getAttribute("username"), "Đã Hủy Đơn");
		model.addAttribute("daHuyDon", billsDaHuyDon);
		return "html/bill";
	}
}
