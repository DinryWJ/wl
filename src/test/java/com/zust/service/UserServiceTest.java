package com.zust.service;

import static org.junit.Assert.*;

import org.springframework.context.ApplicationContext;
import org.springframework.test.util.ReflectionTestUtils;
import org.unitils.UnitilsJUnit4;
import org.unitils.dbunit.annotation.DataSet;
import org.unitils.dbunit.annotation.ExpectedDataSet;
import org.unitils.reflectionassert.ReflectionAssert;
import org.unitils.spring.annotation.SpringApplicationContext;
import org.unitils.spring.annotation.SpringBean;

import com.zust.entity.User;

import org.junit.Test;
import org.unitils.UnitilsJUnit4;


public class UserServiceTest extends UnitilsJUnit4 {
//	@SpringApplicationContext({"applicationContext.xml" })
//	private ApplicationContext applicationContext;
//	
//	@SpringBean("userService")
//	private UserService userService;
//	
//	
//	@Test
//	public void test() {
//		assertNotNull(applicationContext);
//		assertNotNull(userService.getUserById(1));
//	}
	@Test
	public void test(){
		User user1 = new User();
		User user2 = new User();
		ReflectionAssert.assertReflectionEquals(user1, user2);
	}
}
