package com.care.practice.common;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class AlertMsg implements MemberSessionName{
	public String msg(HttpServletRequest request,HttpServletResponse response,String msg,String url) {
		String message = null;
		String path = request.getContextPath();

		message = "<script>alert('" + msg + "');";
		message += "location.href='" + path + url + "'</script>";

		return message;
	}
	public String loginMsg(HttpServletRequest request,HttpServletResponse response,
			int result,HttpSession session, String id) {
		if(result ==1) {
			session.setAttribute(LOGIN, id);
			System.out.println("alermsg에서 "+session.getAttribute(LOGIN));
			return msg(request,response,"jin cafe에 오신걸 환영합니다.","/main");
		}else if(result ==0) {
			return msg(request,response,"비밀번호가 틀립니다","/login");
		}else {
			return msg(request,response,"해당 아이디는 없는 아이디입니다.","/login");
		}
	}
	public String logoutMsg(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		session.invalidate();
		return msg(request,response,"로그아웃 되었습니다.","/main");
	}
	public String writeSave(int result, HttpServletRequest request, HttpServletResponse response) {
		if(result ==1) {
			return msg(request,response,"작성이 완료되었습니다.","/boardAllList");
		}else {
			return msg(request,response,"저장에 실패하였습니다.","/boardAllList");
		}
	}
}
