package com.korea.pratice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import dao.MemberDAO;

@Controller
public class MemberController {

	public static final String VIEW_PATH = "/WEB-INF/views/member/";
	
	@Autowired
	HttpServletRequest request;
	
	@Autowired
	HttpSession session;
	
	@Autowired
	MemberDAO member_dao;

	@RequestMapping(value = {"/", "login.do"})
	public String loginPage() {
		return VIEW_PATH + "login_form.jsp";
	}
	
	@RequestMapping("register.do")
	public String register() {
		return VIEW_PATH + "register_form.jsp";
	}

}
