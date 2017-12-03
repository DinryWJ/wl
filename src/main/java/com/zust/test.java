package com.zust;

import org.hibernate.SessionFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

	public static void main(String[] args) {
		 ApplicationContext ac =new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
	    
	        SessionFactory sessionFactory = (SessionFactory) ac.getBean("sessionFactory");
	        System.out.println(sessionFactory);
	    


	}

}
