package com.care.practice.main.service;


import org.springframework.ui.Model;

import com.care.practice.member.dto.MemberDTO;

public interface MainService {
	int memberInsert(MemberDTO dto);

	int loginChk(String id, String pwd);

	void list(Model model);

}
