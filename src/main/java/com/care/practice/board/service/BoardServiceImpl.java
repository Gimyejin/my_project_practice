package com.care.practice.board.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.care.practice.board.dto.BoardDTO;
import com.care.practice.mybatis.board.BoardMapper;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired BoardMapper bm;
	@Autowired BoardFileService bfs;
	@Override
	public void selectAllBoardList(Model model) {
		model.addAttribute("list",bm.selectAllBoardList());
	}

	@Override
	public int writeSave(MultipartHttpServletRequest mul) {
		BoardDTO dto = new BoardDTO();
		dto.setTitle(mul.getParameter("title"));
		dto.setContent(mul.getParameter("content"));
		dto.setId(mul.getParameter("id"));
		
		MultipartFile file= mul.getFile("image_file_name");//파일 가져오기 위함
		if(file.getSize() != 0) {
			System.out.println("이미지 있소");
		}else {
			dto.setImageFileName("nan");
			System.out.println("이미지 없소");
		}
		int reuslt = 0;
		try {
			reuslt = bm.writeSave(dto);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return reuslt;
	}

	

}
