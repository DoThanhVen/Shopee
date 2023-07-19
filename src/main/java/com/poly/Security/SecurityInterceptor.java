package com.poly.Security;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.HandlerInterceptor;

import com.poly.Dao.AccountDAO;

@Service
public class SecurityInterceptor implements HandlerInterceptor {
	@Autowired
	AccountDAO dao;
	@Autowired
	HttpSession session;
	@Autowired
	HttpServletRequest request;

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession();
		String sessionUsername = (String) session.getAttribute("username");
		if (sessionUsername != null && !dao.findById(sessionUsername).get().isAdmin()) {
			response.sendRedirect(request.getContextPath() + "/home/index");
			return true;
		}
		if (session.getAttribute("username") == null) {
			response.sendRedirect(request.getContextPath() + "/home/sign-in");
			return false;
		}
		return true;
	}
}
