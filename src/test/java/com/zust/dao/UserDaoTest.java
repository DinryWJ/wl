package com.zust.dao;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.unitils.UnitilsJUnit4;
import org.unitils.dbunit.annotation.DataSet;
import org.unitils.spring.annotation.SpringApplicationContext;
import org.unitils.spring.annotation.SpringBean;

import com.zust.entity.User;
@SpringApplicationContext({"applicationContext.xml"})
public class UserDaoTest extends UnitilsJUnit4 {
	
	@SpringBean(value = "userDAO")
	private UserDAO userDAO;
	@Before
	public void init(){};
	@Test
	@DataSet("wl.Users.xls")
	public void findUserById() {
		User user= userDAO.getUserById(2);
		assertNull("不存在id为1的用户",user);
		user= userDAO.getUserById(1);
		assertNotNull("1用户存在",user);
		assertEquals(1, user.getUserId());
		assertEquals("123", user.getPassword());
	}

}
