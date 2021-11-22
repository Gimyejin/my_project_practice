package com.care.practice.board.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.practice.board.service.BoardService;
import com.care.practice.common.AlertMsg;

@Controller
public class BoardController {
	@Autowired
	BoardService bs;
	AlertMsg am;
	PrintWriter out;

	@GetMapping("boardAllList")
	public String boardAllList(Model model) {
		bs.selectAllBoardList(model);
		return "board/boardAllList";
	}

	@GetMapping("writeForm")
	public String writeForm() {
		return "board/writeForm";
	}

	@PostMapping("writeSave")
	public void writeSave(HttpServletRequest request, MultipartHttpServletRequest mul, HttpServletResponse response)
			throws Exception {
		int result = bs.writeSave(mul);
		System.out.println(result);

		am = new AlertMsg();
		String message = am.writeSave(result,request,response);
		response.setContentType("text/html; charset=utf-8");
		out = response.getWriter();
		out.println(message);

	}
}
