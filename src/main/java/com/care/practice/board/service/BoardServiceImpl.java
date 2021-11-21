package com.care.practice.board.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.practice.mybatis.board.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired BoardMapper bm;
	
	@Override
	public void selectAllBoardList(Model model) {
		bm.selectAllBoardList();
	}

}
