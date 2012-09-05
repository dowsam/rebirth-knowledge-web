/*
 * Copyright (c) 2005-2012 www.china-cti.com All rights reserved
 * Info:rebirth-knowledge-web SettingsConfigBean.java 2012-8-30 13:33:26 l.xue.nong$$
 */
package cn.com.rebirth.knowledge.web;

import org.springframework.beans.BeansException;
import org.springframework.beans.factory.BeanDefinitionStoreException;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.BeanFactoryAware;
import org.springframework.beans.factory.BeanNameAware;
import org.springframework.beans.factory.config.BeanDefinition;
import org.springframework.beans.factory.config.BeanDefinitionVisitor;
import org.springframework.beans.factory.config.BeanFactoryPostProcessor;
import org.springframework.beans.factory.config.ConfigurableListableBeanFactory;
import org.springframework.util.StringValueResolver;

import cn.com.rebirth.commons.component.AbstractComponent;
import cn.com.rebirth.commons.settings.Settings;
import cn.com.rebirth.commons.utils.TemplateMatcher;
import cn.com.rebirth.core.inject.Inject;
import cn.com.rebirth.core.inject.InjectInitialization;

/**
 * The Class SettingsConfigBean.
 *
 * @author l.xue.nong
 */
public class SettingsConfigBean extends AbstractComponent implements BeanFactoryPostProcessor, BeanFactoryAware,
		BeanNameAware {

	/** The bean name. */
	private String beanName;

	/** The bean factory. */
	private BeanFactory beanFactory;

	/**
	 * Instantiates a new settings config bean.
	 */
	public SettingsConfigBean() {
		this(InjectInitialization.injector().getInstance(Settings.class));
	}

	/**
	 * Instantiates a new settings config bean.
	 *
	 * @param settings the settings
	 */
	@Inject
	public SettingsConfigBean(Settings settings) {
		super(settings);
	}

	/* (non-Javadoc)
	 * @see org.springframework.beans.factory.config.BeanFactoryPostProcessor#postProcessBeanFactory(org.springframework.beans.factory.config.ConfigurableListableBeanFactory)
	 */
	@Override
	public void postProcessBeanFactory(ConfigurableListableBeanFactory beanFactory) throws BeansException {
		doProcess(beanFactory, new StringValueResolver() {

			@Override
			public String resolveStringValue(String strVal) {
				String v_ = new TemplateMatcher("${", "}").replace(strVal, new TemplateMatcher.VariableResolver() {

					@Override
					public String resolve(String variable) {
						return settings.get(variable);
					}
				});
				if (v_ != null)
					return v_;
				return strVal;
			}
		});
	}

	/* (non-Javadoc)
	 * @see org.springframework.beans.factory.BeanNameAware#setBeanName(java.lang.String)
	 */
	@Override
	public void setBeanName(String name) {
		this.beanName = name;
	}

	/* (non-Javadoc)
	 * @see org.springframework.beans.factory.BeanFactoryAware#setBeanFactory(org.springframework.beans.factory.BeanFactory)
	 */
	@Override
	public void setBeanFactory(BeanFactory beanFactory) throws BeansException {
		this.beanFactory = beanFactory;
	}

	/**
	 * Do process properties.
	 *
	 * @param beanFactoryToProcess the bean factory to process
	 * @param valueResolver the value resolver
	 */
	protected void doProcess(ConfigurableListableBeanFactory beanFactoryToProcess, StringValueResolver valueResolver) {

		BeanDefinitionVisitor visitor = new BeanDefinitionVisitor(valueResolver);

		String[] beanNames = beanFactoryToProcess.getBeanDefinitionNames();
		for (String curName : beanNames) {
			// Check that we're not parsing our own bean definition,
			// to avoid failing on unresolvable placeholders in properties file locations.
			if (!(curName.equals(this.beanName) && beanFactoryToProcess.equals(this.beanFactory))) {
				BeanDefinition bd = beanFactoryToProcess.getBeanDefinition(curName);
				try {
					visitor.visitBeanDefinition(bd);
				} catch (Exception ex) {
					throw new BeanDefinitionStoreException(bd.getResourceDescription(), curName, ex.getMessage());
				}
			}
		}

		// New in Spring 2.5: resolve placeholders in alias target names and aliases as well.
		beanFactoryToProcess.resolveAliases(valueResolver);

		// New in Spring 3.0: resolve placeholders in embedded values such as annotation attributes.
		beanFactoryToProcess.addEmbeddedValueResolver(valueResolver);
	}

}
