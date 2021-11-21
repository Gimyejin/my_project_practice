package com.care.practice.mybatis.mapper;

import java.util.ArrayList;

import com.care.practice.member.dto.MemberDTO;

public interface MemberMapper {

	public int memberInsert(MemberDTO dto);

	public MemberDTO loginChk(String id);

	public ArrayList<MemberDTO> list();

}
