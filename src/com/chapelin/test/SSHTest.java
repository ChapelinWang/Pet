package com.chapelin.test;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import com.chapelin.dao.PuserDAO;
import com.chapelin.domain.Puser;
import com.chapelin.service.PuserService;
import com.chapelin.util.MyUtils;

/**
 * SSH环境测试
 * 
 * @author StudiousBird
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext-*.xml")
public class SSHTest {

	@Resource
	private PuserService puserService;

	@Test
	public void daoTest() {
		System.out.println(puserService.get("40286281578946610157894662670000").getUsername());
	}

	@Test
	public void saveTest() {
		puserService.save(new Puser("123213", "qq123123", "chapelin@alskjdf.com"));
	}

	@Test
	public void queryTest() {
		for (Puser user : puserService.query(3,2)) {
			System.out.println(user.getUsername());
		}
	}


	@Test
	public void delTest() {
		puserService.delete("40286281578946610157894662670000");
	}
	
	@Test
	public void getCount(){
		System.out.println(puserService.getCount());
	}

}
