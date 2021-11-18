package com.care.practice;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.care.practice.main.controller.MainController;

@RunWith(SpringRunner.class)
@ContextConfiguration(locations = { "classpath:TestMember.xml" })
public class TestMember {
	@Autowired
	MainController mc;
	
	@Test
	public void testMc() {
		System.out.println("오케이");
	}
}
