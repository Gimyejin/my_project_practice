package com.care.practice.main.service;

import java.beans.Encoder;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.care.practice.member.dto.MemberDTO;
import com.care.practice.mybatis.mapper.MemberMapper;

@Service
public class MainServiceImpl implements MainService {
	@Autowired
	MemberMapper mm;
	BCryptPasswordEncoder encoder;
	
	public MainServiceImpl() {
		encoder = new BCryptPasswordEncoder();
	}
	
	@Override
	public int memberInsert(MemberDTO dto) {
		System.out.println("암호화 전: " + dto.getPwd());
		String securePw = encoder.encode(dto.getPwd());
		dto.setPwd(securePw);
		int reuslt = 0;
		try {
			reuslt = mm.memberInsert(dto);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return reuslt;
	}

	@Override
	public int loginChk(String id, String pwd) {
		int result = 0;
		MemberDTO dto = mm.loginChk(id);
		if (dto != null) {
			if (encoder.matches(pwd, dto.getPwd())||pwd.equals(dto.getPwd())) {
				result = 1;
			} else {
				result = 0;
			}
		} else
			result = -1;
		return result;
	}

	@Override
	public void list(Model model) {
		model.addAttribute("list", mm.list());

	}

}
