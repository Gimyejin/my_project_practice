package com.care.practice.board.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.care.practice.board.service.BoardService;

@Controller
public class BoardController {
	@Autowired BoardService bs;
	
	@GetMapping("boardAllList")
	public String boardAllList(Model model) {
		bs.selectAllBoardList(model);
		return"board/boardAllList";
	}
	
	@GetMapping("writeForm")
	public String writeForm() {
		return "board/writeForm";
	}
}
