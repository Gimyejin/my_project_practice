package com.care.practice.main.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.care.practice.member.dto.MemberDTO;
import com.care.practice.mybatis.mapper.MemberMapper;

@Service
public class MainServiceImpl implements MainService {
	@Autowired
	MemberMapper mm;

	@Override
	public int memberInsert(MemberDTO dto) {
		int reuslt = mm.memberInsert(dto);
		return reuslt;
	}

	@Override
	public int loginChk(String id, String pwd) {
		int result = 0;
		MemberDTO dto = mm.loginChk(id);
		if (dto != null) {
			if (pwd.equals(dto.getPwd())) {
				result = 1;
			} else {
				result = 0;
			}
		} else
			result = -1;
		return result;
	}

}
