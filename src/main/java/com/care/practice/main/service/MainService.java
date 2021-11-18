package com.care.practice.main.service;


import com.care.practice.member.dto.MemberDTO;

public interface MainService {
	int memberInsert(MemberDTO dto);

	int loginChk(String id, String pwd);

}
