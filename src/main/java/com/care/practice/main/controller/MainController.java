package com.care.practice.main.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.care.practice.common.AlertMsg;
import com.care.practice.main.service.MainService;
import com.care.practice.member.dto.MemberDTO;

@Controller
public class MainController {
	@Autowired
	MainService ms;
	PrintWriter out;
	AlertMsg am;

	@RequestMapping("main")
	public String main() {
		return "default/main";
	}

	@GetMapping("memberinsert")
	public String memberInsert() {
		return "login/memberinsert";
	}

	@PostMapping("memberinsert")
	public boolean memberinsert(MemberDTO dto, HttpServletResponse response, HttpServletRequest request) {
		int result = ms.memberInsert(dto);
		if (result == 1) {
			response.setContentType("text/html; charset=utf-8");
			try {
				out = response.getWriter();
				out.print("<script>alert('회원가입에 성공하셨습니다.');"
						// +"location.href='root/login';</script>");
						+ "location.href='" + request.getContextPath() + "/main';</script>");
			} catch (IOException e) {
				e.printStackTrace();
			}
			return false;
		} else {
			out.print(("<script>location.href='" + request.getContextPath() + "/memberinsert';</script>"));
			return true;
		}
	}

	@GetMapping("login")
	public String getLogin() {
		return "login/login";
	}

	@PostMapping("login")
	public void postLogin(HttpServletRequest request, HttpServletResponse response, @RequestParam("id") String id,
			@RequestParam String pwd, HttpSession session) throws IOException {
		int result = ms.loginChk(id, pwd);
		am = new AlertMsg();
		String message = am.loginMsg(request, response, result,session,id);
		response.setContentType("text/html; charset=utf-8");
		out = response.getWriter();
		out.println(message);
	}
	
	@GetMapping("logout")
	public void logout(HttpServletRequest request, HttpServletResponse response,HttpSession session)throws IOException {
		am = new AlertMsg();
		String message = am.logoutMsg(request, response,session);
		response.setContentType("text/html; charset=utf-8");
		out = response.getWriter();
		out.println(message);
	}
}
