/**
 * Copyright (c) 2005-2012-9-19 www.china-cti.com
 * Id: OpenEntityManagerInViewInterceptor.java,14:35:21
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.interceptor;

import javax.persistence.*;

import org.springframework.dao.*;
import org.springframework.orm.jpa.*;
import org.springframework.transaction.support.*;

// TODO: Auto-generated Javadoc
/**
 * The Class OpenEntityManagerInViewInterceptor.
 * 模仿Spring的OpenEntityManagerInViewInterceptor在一些特殊的地方使用
 * @author wuwei
 */
public class OpenEntityManagerInViewInterceptor extends EntityManagerFactoryAccessor {

	/**
	 * Begin.
	 */
	public void begin() {
		try {
			logger.debug("Opening JPA EntityManager in OpenEntityManagerInViewInterceptor");
			EntityManager em = createEntityManager();
			TransactionSynchronizationManager.bindResource(getEntityManagerFactory(), new EntityManagerHolder(em));
		} catch (PersistenceException ex) {
			throw new DataAccessResourceFailureException("Could not create JPA EntityManager", ex);
		}
	}

	/**
	 * End.
	 */
	public void end() {
		EntityManagerHolder emHolder = (EntityManagerHolder) TransactionSynchronizationManager
				.unbindResource(getEntityManagerFactory());
		logger.debug("Closing JPA EntityManager in OpenEntityManagerInViewInterceptor");
		EntityManagerFactoryUtils.closeEntityManager(emHolder.getEntityManager());
	}
}
