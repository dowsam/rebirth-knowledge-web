/*
 * Copyright (c) 2005-2012 www.china-cti.com All rights reserved
 * Info:rebirth-knowledge-web SettingsConfigBeanTest.java 2012-8-30 14:05:56 l.xue.nong$$
 */
package cn.com.rebirth.knowledge.web;

import java.util.*;

import org.springframework.context.support.*;

import cn.com.rebirth.commons.*;
import cn.com.rebirth.commons.utils.*;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.persistence.service.*;

/**
 * The Class SettingsConfigBeanTest.
 *
 * @author l.xue.nong
 */
public class SettingsConfigBeanTest {

	/**
	 * The main method.
	 *
	 * @param args the arguments
	 */
	public static void main(String[] args) {
		System.setProperty("zk.zkConnect", "192.168.2.179:2181");
		System.setProperty("rebirth.service.middleware.development.model", "true");
		System.setProperty("rebirth.knowledge.web.localhost", "true");
		RebirthContainer.getInstance().start();
		ClassPathXmlApplicationContext applicationContext = new ClassPathXmlApplicationContext(new String[] {
				"/applicationContext.xml", "/applicationContext-validator.xml", "/cache/applicationContext-cache.xml",
				"/queue/applicationContext-queue.xml" });
		BaseService baseService = SpringContextHolder.getBeanFactory().getBeansOfType(BaseService.class).values()
				.iterator().next();
		List<SysLogEntity> entities = baseService.getAll(SysLogEntity.class);
		for (SysLogEntity sysLogEntity : entities) {
			System.out.println(sysLogEntity);
		}
		baseService.deleteAllInBatch(SysLogEntity.class);
		ThreadUtils.sleep(100000000);
		applicationContext.close();
		RebirthContainer.getInstance().stop();
		System.exit(0);
	}

}
