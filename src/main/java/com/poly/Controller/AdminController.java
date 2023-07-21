package com.poly.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.Ordered;
import org.springframework.core.annotation.Order;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.util.NumberUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import java.io.File;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.poly.Bean.*;
import com.poly.Dao.*;
import com.poly.Security.SecurityInterceptor;

@Controller
public class AdminController {
	@Autowired
	AccountDAO dao;
	@Autowired
	ProductDAO productDAO;
	@Autowired
	TypeProductDAO typeDAO;
	@Autowired
	OrderDetailDAO orderDAO;
	@Autowired
	ManagerProductsDAO managerDAO;
	@Autowired
	BillDAO billDAO;
	@Autowired
	HttpServletRequest request;
	@Autowired
	HttpSession session;

//CUSTOMER
	@RequestMapping("/admin/index")
	public String getAllCustomer(Model model) {
		List<Account> accounts = dao.findAll();
		model.addAttribute("items", accounts);
		return "html/admin/index";
	}

	@RequestMapping("/admin/delete/{id}")
	public String deleteCustomer(Model model, @PathVariable("id") String id) {
		if (dao.existsById(id)) {
			dao.deleteById(id);
		}
		return "redirect:/admin/index";
	}

	@RequestMapping(value = "/admin/account", method = RequestMethod.POST)
	public String register(Model model, @RequestParam("action") String action) {
		String username = request.getParameter("phone");
		String fullName = request.getParameter("fullname");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		String address = request.getParameter("address");
		String reg = "[a-z0-9._%+-]+@[a-z0-9.-]+\\.[a-z]{2,4}$";
		String regPhone = "^(0|\\+84)(\\s|\\.)?((3[2-9])|(5[689])|(7[06-9])|(8[1-689])|(9[0-46-9]))(\\d)(\\s|\\.)?(\\d{3})(\\s|\\.)?(\\d{3})$";
		boolean checkPhone;
		boolean checkEmail;
		int check = -1;
		List<Account> accounts = dao.findAll();
		if ("action1".equals(action)) {
			if (username != null && email != null && fullName != null && password != null && address != null) {
				checkPhone = username.matches(regPhone);
				checkEmail = email.matches(reg);
				if (checkPhone && checkEmail) {
					for (Account acc : accounts) {
						if (acc.getUsername().equals(username)) {
							check = 1;
							break;
						}
					}
					if (check == -1) {
						Account account = new Account();
						account.setUsername(username);
						account.setPassword(password);
						account.setEmail(email);
						account.setFullname(fullName);
						account.setPhoto("logo.png");
						account.setAddress(address);
						dao.save(account);
						request.setAttribute("error", "Thêm thành công!!!!!!!!!!!!!");
						accounts = dao.findAll();
						model.addAttribute("items", accounts);
					} else {
						request.setAttribute("error", "Số điện thoại đã tồn tại!");
					}
				}
				if (!checkPhone) {
					request.setAttribute("error", "Số điện thoại không hợp lệ!");
				}
				if (!checkEmail) {
					request.setAttribute("error", "Email không hợp lệ!");
				}
			} else {
				request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin!");
			}
		} else if ("action2".equals(action)) {
			if (username != null && email != null && fullName != null && password != null && address != null) {
				checkPhone = username.matches(regPhone);
				checkEmail = email.matches(reg);
				if (checkEmail) {
					Account account = new Account();
					account = dao.findById((String) session.getAttribute("userUpdate")).get();
					account.setPassword(password);
					account.setEmail(email);
					account.setFullname(fullName);
					account.setPhoto("logo.png");
					account.setAddress(address);
					dao.save(account);
					request.setAttribute("error", "Sửa thành công!!!!!!!!!!!!!");
				}
				if (!checkEmail) {
					request.setAttribute("error", "Email không hợp lệ!");
				}
			} else {
				request.setAttribute("error", "Vui lòng nhập đầy đủ thông tin!");
			}
		}
		model.addAttribute("items", accounts);
		return "html/admin/index";
	}

	@RequestMapping("/admin/load/{id}")
	public String load(Model model, @PathVariable("id") String id) {
		Account account = dao.findById(id).get();
		model.addAttribute("item", account);
		session.setAttribute("userUpdate", id);
		List<Account> items = dao.findAll();
		model.addAttribute("items", items);
		return "html/admin/index";
	}

//MANAGER
	@GetMapping("/admin/container")
	public String container(Model model) {
		List<Object[]> products = productDAO.getAllInContainer();
		List<Object[]> productsFormat = new ArrayList<>();

		for (Object[] p : products) {
			String currentFormat = "yyyy-MM-dd"; // format của ngày hiện tại trong danh sách products
			String newFormat = "dd/MM/yyyy"; // format mới mà bạn muốn đổi sang
			SimpleDateFormat dateFormat = new SimpleDateFormat(currentFormat);
			SimpleDateFormat newDateFormat = new SimpleDateFormat(newFormat);
			Object[] newProduct = p.clone(); // tạo ra một đối tượng mới, sao chép tất cả giá trị từ đối tượng cũ

			try {
				Date date = dateFormat.parse(p[8].toString()); // chuyển đổi chuỗi ngày hiện tại thành đối tượng Date
				String formattedDate = newDateFormat.format(date); // định dạng lại format của ngày theo format mới
				newProduct[8] = formattedDate; // gán lại giá trị mới vào cột ngày trong đối tượng mới
			} catch (ParseException e) {
				e.printStackTrace();
			}
			productsFormat.add(newProduct); // thêm đối tượng mới vào danh sách sản phẩm đã được định dạng lại format
		}

		model.addAttribute("items", productsFormat);
		return "html/admin/container";
	}

	@RequestMapping("/admin/order")
	public String order(Model model) {
		List<Object[]> products = productDAO.getAllInOrders();
		List<Object[]> productsFormat = new ArrayList<>();

		for (Object[] p : products) {
			String currentFormat = "yyyy-MM-dd"; // format của ngày hiện tại trong danh sách products
			String newFormat = "dd/MM/yyyy"; // format mới mà bạn muốn đổi sang
			SimpleDateFormat dateFormat = new SimpleDateFormat(currentFormat);
			SimpleDateFormat newDateFormat = new SimpleDateFormat(newFormat);
			Object[] newProduct = p.clone(); // tạo ra một đối tượng mới, sao chép tất cả giá trị từ đối tượng cũ

			try {
				Date date = dateFormat.parse(p[8].toString()); // chuyển đổi chuỗi ngày hiện tại thành đối tượng Date
				String formattedDate = newDateFormat.format(date); // định dạng lại format của ngày theo format mới
				newProduct[8] = formattedDate; // gán lại giá trị mới vào cột ngày trong đối tượng mới
			} catch (ParseException e) {
				e.printStackTrace();
			}
			productsFormat.add(newProduct); // thêm đối tượng mới vào danh sách sản phẩm đã được định dạng lại format
		}
		model.addAttribute("items", productsFormat);
		return "html/admin/order";
	}

	@RequestMapping("/admin/manager-load/{id}")
	public String manager_load(Model model, @PathVariable("id") Integer id) {
		Product product = productDAO.findById(id).get();
		model.addAttribute("item", product);
		List<Object[]> products = productDAO.getAllProducts();
		model.addAttribute("items", products);
		List<TypeProduct> types = typeDAO.findAll();
		model.addAttribute("types", types);
		session.setAttribute("idProduct", id);
		return "html/admin/product";
	}

	@GetMapping("/admin/manager-add/{id}")
	public String manager_add(Model model, @PathVariable("id") Integer id) {
		Product product = productDAO.findById(id).get();
		model.addAttribute("product", product);
		List<Object[]> products = productDAO.getAllInContainer();
		List<Object[]> productsFormat = new ArrayList<>();

		for (Object[] p : products) {
			String currentFormat = "yyyy-MM-dd"; // format của ngày hiện tại trong danh sách products
			String newFormat = "dd/MM/yyyy"; // format mới mà bạn muốn đổi sang
			SimpleDateFormat dateFormat = new SimpleDateFormat(currentFormat);
			SimpleDateFormat newDateFormat = new SimpleDateFormat(newFormat);
			Object[] newProduct = p.clone(); // tạo ra một đối tượng mới, sao chép tất cả giá trị từ đối tượng cũ

			try {
				Date date = dateFormat.parse(p[8].toString()); // chuyển đổi chuỗi ngày hiện tại thành đối tượng Date
				String formattedDate = newDateFormat.format(date); // định dạng lại format của ngày theo format mới
				newProduct[8] = formattedDate; // gán lại giá trị mới vào cột ngày trong đối tượng mới
			} catch (ParseException e) {
				e.printStackTrace();
			}
			productsFormat.add(newProduct); // thêm đối tượng mới vào danh sách sản phẩm đã được định dạng lại format
		}
		model.addAttribute("items", productsFormat);
		session.setAttribute("IdProductADD", product.getId());
		return "html/admin/container";
	}
	@PostMapping("/admin/add-container")
	public String addContainer(Model model,@RequestParam("size") String size,@RequestParam("color") String color
			,@RequestParam("type") String type,@RequestParam("quantity") Integer quantity,@RequestParam("gender") Integer gender) {
		if(quantity < 1) {
			model.addAttribute("error", "Số lượng nhỏ nhất phải thêm là 1 !");
		}else {
			try {
				Product product = new Product();
				product.setId((Integer)session.getAttribute("IdProductADD"));
				ManagerProducts manager = new ManagerProducts();
				manager.setProduct(product);
				manager.setSize(size);
				manager.setColor(color);
				manager.setClassify(type);
				manager.setQuantity(quantity);
				manager.setGender(gender);
				managerDAO.save(manager);
				model.addAttribute("product", null);
				model.addAttribute("error", "Thêm thành công !");
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("product", null);
				model.addAttribute("error", "Thêm thất bại !");
			}	
		}
		List<Object[]> products = productDAO.getAllInContainer();
		List<Object[]> productsFormat = new ArrayList<>();

		for (Object[] p : products) {
			String currentFormat = "yyyy-MM-dd"; // format của ngày hiện tại trong danh sách products
			String newFormat = "dd/MM/yyyy"; // format mới mà bạn muốn đổi sang
			SimpleDateFormat dateFormat = new SimpleDateFormat(currentFormat);
			SimpleDateFormat newDateFormat = new SimpleDateFormat(newFormat);
			Object[] newProduct = p.clone(); // tạo ra một đối tượng mới, sao chép tất cả giá trị từ đối tượng cũ

			try {
				Date date = dateFormat.parse(p[8].toString()); // chuyển đổi chuỗi ngày hiện tại thành đối tượng Date
				String formattedDate = newDateFormat.format(date); // định dạng lại format của ngày theo format mới
				newProduct[8] = formattedDate; // gán lại giá trị mới vào cột ngày trong đối tượng mới
			} catch (ParseException e) {
				e.printStackTrace();
			}
			productsFormat.add(newProduct); // thêm đối tượng mới vào danh sách sản phẩm đã được định dạng lại format
		}

		model.addAttribute("items", productsFormat);
		return "redirect:/admin/container";
	}
	@RequestMapping("/admin/manager")
	public String getAllProducts(Model model) {
		List<Object[]> products = productDAO.getAllProducts();
		model.addAttribute("items", products);
		List<TypeProduct> types = typeDAO.findAll();
		model.addAttribute("types", types);
		return "html/admin/product";
	}

	@RequestMapping("/admin/manager-delete/{id}")
	public String deleteManager(Model model, @PathVariable("id") Integer id) {
		if (productDAO.existsById(id)) {
			productDAO.deleteById(id);
			model.addAttribute("error", "Xóa sản phẩm thành công !");
		}
		return "redirect:/admin/manager";
	}

	@RequestMapping(value = "/admin/upload", method = RequestMethod.POST)
	public String upload(ModelMap model, @RequestParam("file") MultipartFile image,
			@RequestParam("action") String action) {
		String name = request.getParameter("name");
		String tp = request.getParameter("type");
		String pr = request.getParameter("price");
		String sl = request.getParameter("sale");
		String description = request.getParameter("description");
		int price = -1;
		int sale = -1;
		if ("action1".equals(action)) {
			if (name != null && !name.isEmpty() && tp != null && !tp.isEmpty() && pr != null && !pr.isEmpty()
					&& sl != null && !sl.isEmpty() && description != null && !description.isEmpty()) {
				try {
					try {
						if (pr != null) {
							price = Integer.parseInt(request.getParameter("price"));
							if (price < 0) {
								model.addAttribute("error", "Giá không hợp lệ !");
							} else {
								try {
									sale = Integer.parseInt(request.getParameter("sale"));
									if (sale < 0 || sale > 100) {
										model.addAttribute("error", "Sale chỉ từ 0 - 100 !");
									} else {
										Product product = new Product();
										TypeProduct type = new TypeProduct();
										type.setId(Integer.parseInt(tp));
										product.setName(name);
										product.setType(type);
										product.setDescription(description);
										product.setPrice(price);
										product.setSale(sale);
										if (image.getOriginalFilename() == "") {
											product.setImage("buy-item-cart.png");
										} else {
											product.setImage(image.getOriginalFilename());
										}
										productDAO.save(product);
										model.addAttribute("error", "Lưu sản phẩm thành công !");
									}
								} catch (Exception e) {
									model.addAttribute("error", "Sale không hợp lệ !");
								}
							}
						}
					} catch (Exception e) {
						model.addAttribute("error", "Giá không hợp lệ !");
					}
				} catch (Exception e) {
					model.addAttribute("error", "Lưu sản phẩm thất bại !");
					e.printStackTrace();
				}
				try {
					String uploadRootPath = request.getServletContext().getRealPath("/images/products/");
					File uploadRootDir = new File(uploadRootPath);

					if (!uploadRootDir.exists()) {
						uploadRootDir.mkdirs();
					}

					// Lấy tên file tải lên
					String fileName = image.getOriginalFilename();

					// Tạo file tại Server
					File serverFile = new File(uploadRootDir.getAbsolutePath() + File.separator + fileName);
					if (fileName != "") {
						// Ghi tệp lên Server
						image.transferTo(serverFile);

						model.addAttribute("message", "Lưu file thành công !");
					}
				} catch (Exception e) {
					model.addAttribute("message", "Lỗi lưu file !");
				}
			} else {
				model.addAttribute("error", "Vui lòng nhập đầy đủ thông tin !");
			}
		} else if ("action2".equals(action)) {
			try {
				TypeProduct type = new TypeProduct();
				type.setId(Integer.parseInt(tp));
				Product product = new Product();
				product = productDAO.findById((Integer) session.getAttribute("idProduct")).get();
				if (image.getOriginalFilename() != "") {
					product.setImage(image.getOriginalFilename());
				}
				product.setName(name);
				product.setDescription(description);
				product.setType(type);
				product.setPrice(price);
				product.setSale(sale);
				productDAO.save(product);
				model.addAttribute("error", "Chỉnh sửa sản phẩm thành công !");
			} catch (Exception e) {
				model.addAttribute("error", "Chỉnh sửa sản phẩm thất bại !");
			}
			if (name != null && !name.isEmpty() && tp != null && !tp.isEmpty() && pr != null && !pr.isEmpty()
					&& sl != null && !sl.isEmpty() && description != null && !description.isEmpty()) {
				try {
					try {
						if (pr != null) {
							price = Integer.parseInt(request.getParameter("price"));
							if (price < 0) {
								model.addAttribute("error", "Giá không hợp lệ !");
							} else {
								try {
									sale = Integer.parseInt(request.getParameter("sale"));
									if (sale < 0 || sale > 100) {
										model.addAttribute("error", "Sale chỉ từ 0 - 100 !");
									} else {
										TypeProduct type = new TypeProduct();
										type.setId(Integer.parseInt(tp));
										Product product = new Product();
										product = productDAO.findById((Integer) session.getAttribute("idProduct"))
												.get();
										if (image.getOriginalFilename() != "") {
											product.setImage(image.getOriginalFilename());
										}
										product.setName(name);
										product.setDescription(description);
										product.setType(type);
										product.setPrice(price);
										product.setSale(sale);
										productDAO.save(product);
										model.addAttribute("error", "Chỉnh sửa sản phẩm thành công !");
									}
								} catch (Exception e) {
									model.addAttribute("error", "Chỉnh sửa sản phẩm thất bại !");
								}
							}
						}
					} catch (Exception e) {
						model.addAttribute("error", "Giá không hợp lệ !");
					}
				} catch (Exception e) {
					model.addAttribute("error", "Chỉnh sửa sản phẩm thất bại !");
					e.printStackTrace();
				}
			} else {
				model.addAttribute("error", "Vui lòng nhập đầy đủ thông tin !");
			}
		}

		List<Object[]> products = productDAO.getAllProducts();
		model.addAttribute("items", products);
		List<TypeProduct> types = typeDAO.findAll();
		model.addAttribute("types", types);
		return "html/admin/product";
	}

	// BILL
	@RequestMapping("/admin/edit-bill/{id}")
	public String edit_bill(Model model, @PathVariable("id") Integer id) {
		Bills bill = billDAO.findById(id).get();
		List<Object[]> products = productDAO.getAllInOrders();
		List<Object[]> productsFormat = new ArrayList<>();

		for (Object[] p : products) {
			String currentFormat = "yyyy-MM-dd"; // format của ngày hiện tại trong danh sách products
			String newFormat = "dd/MM/yyyy"; // format mới mà bạn muốn đổi sang
			SimpleDateFormat dateFormat = new SimpleDateFormat(currentFormat);
			SimpleDateFormat newDateFormat = new SimpleDateFormat(newFormat);
			Object[] newProduct = p.clone(); // tạo ra một đối tượng mới, sao chép tất cả giá trị từ đối tượng cũ

			try {
				Date date = dateFormat.parse(p[8].toString()); // chuyển đổi chuỗi ngày hiện tại thành đối tượng Date
				String formattedDate = newDateFormat.format(date); // định dạng lại format của ngày theo format mới
				newProduct[8] = formattedDate; // gán lại giá trị mới vào cột ngày trong đối tượng mới
			} catch (ParseException e) {
				e.printStackTrace();
			}
			productsFormat.add(newProduct); // thêm đối tượng mới vào danh sách sản phẩm đã được định dạng lại format
		}
		model.addAttribute("items", productsFormat);
		model.addAttribute("idBill", bill.getIdbill());
		session.setAttribute("idHoaDon", id);
		return "html/admin/order";
	}

	@RequestMapping("/admin/update-bill")
	public String update_bill(Model model, @RequestParam("idbill") String id, @RequestParam("type") String status) {
		String statusHoaDon = billDAO.findById((Integer) session.getAttribute("idHoaDon")).get().getStatus();
		if (statusHoaDon.equals("Đã Thanh Toán")) {
			if(!status.equals("Đã Giao Hàng") || !status.equals("Đã Xác Nhận")) {
				model.addAttribute("error", "Đơn hàng đã thanh toán không thể chỉnh sửa !");	
			}
		} else if (statusHoaDon.equals("Đã Giao Hàng")) {
			model.addAttribute("error", "Đơn hàng đã được giao không thể chỉnh sửa !");
		} else if (statusHoaDon.equals("Đã Xác Nhận")) {
			if(!status.equals("Đã Giao Hàng")) {
				model.addAttribute("error", "Đơn hàng đã thanh toán không thể chỉnh sửa !");	
			}
		} else {
			List<Bills> bills = billDAO.getByIDBill(id);
			try {
				Bills bill = null;
				OrderDetail order = null;
				for (Bills b : bills) {
					bill = b;
					order = orderDAO.findById(bill.getOrder().getId()).get();
					order.setStatus(status);
					bill.setStatus(status);
					Date date = new Date();
					if(status.equals("Đã Hủy Đơn")) {
						bill.setNgayHuyDon(date);
					}
					if(status.equals("Đã Xác Nhận")) {
						bill.setNgayXacNhan(date);
					}
					if(status.equals("Đã Giao Hàng")) {
						bill.setNgayGiaoHang(date);
					}
					billDAO.save(bill);
					orderDAO.save(order);
				}
				model.addAttribute("error", "Cập nhật thành công !");
			} catch (Exception e) {
				e.printStackTrace();
				model.addAttribute("error", "Cập nhật thất bại !");
			}
		}
		List<Object[]> products = productDAO.getAllInOrders();
		List<Object[]> productsFormat = new ArrayList<>();

		for (Object[] p : products) {
			String currentFormat = "yyyy-MM-dd"; // format của ngày hiện tại trong danh sách products
			String newFormat = "dd/MM/yyyy"; // format mới mà bạn muốn đổi sang
			SimpleDateFormat dateFormat = new SimpleDateFormat(currentFormat);
			SimpleDateFormat newDateFormat = new SimpleDateFormat(newFormat);
			Object[] newProduct = p.clone(); // tạo ra một đối tượng mới, sao chép tất cả giá trị từ đối tượng cũ

			try {
				Date date = dateFormat.parse(p[8].toString()); // chuyển đổi chuỗi ngày hiện tại thành đối tượng Date
				String formattedDate = newDateFormat.format(date); // định dạng lại format của ngày theo format mới
				newProduct[8] = formattedDate; // gán lại giá trị mới vào cột ngày trong đối tượng mới
			} catch (ParseException e) {
				e.printStackTrace();
			}
			productsFormat.add(newProduct); // thêm đối tượng mới vào danh sách sản phẩm đã được định dạng lại format
		}
		model.addAttribute("items", productsFormat);
		model.addAttribute("idBill", id);
		return "html/admin/order";
	}

}
