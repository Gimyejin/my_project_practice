package com.care.practice.mybatis.board;

import java.util.List;

import com.care.practice.board.dto.BoardDTO;

public interface BoardMapper {

	public List<BoardDTO> selectAllBoardList();

	public int writeSave(BoardDTO dto);

}
