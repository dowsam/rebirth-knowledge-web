/*
 * Copyright (c) 2005-2012 www.china-cti.com All rights reserved
 * Info:rebirth-knowledge-web SettingsConfigBusiness.java 2012-8-30 13:52:45 l.xue.nong$$
 */
package cn.com.rebirth.knowledge.web;

import java.util.List;

import javax.persistence.Table;

import org.apache.commons.lang3.StringUtils;

import com.google.common.collect.Lists;

import cn.com.rebirth.commons.settings.Settings;
import cn.com.rebirth.core.inject.Business;
import cn.com.rebirth.core.inject.ModulesBuilder;
import cn.com.rebirth.core.settings.SettingsModule;
import cn.com.rebirth.knowledge.commons.InitiativeSettings;
import cn.com.rebirth.knowledge.commons.entity.system.SysLogEntity;
import cn.com.rebirth.service.middleware.client.ConsumerProxyFactory;

/**
 * The Class SettingsConfigBusiness.
 *
 * @author l.xue.nong
 */
public class SettingsConfigBusiness implements Business {

	/* (non-Javadoc)
	 * @see cn.com.rebirth.core.inject.Business#toModules(cn.com.rebirth.core.inject.ModulesBuilder)
	 */
	@Override
	public void toModules(ModulesBuilder modulesBuilder) {
		InitiativeSettings initiativeSettings = ConsumerProxyFactory.getInstance().proxy(InitiativeSettings.class);
		Settings settings = initiativeSettings.initiative();
		settings.getAsMap().put("waySql", WebDbWaySql.class.getName());
		String noInterceptTableName = settings.get("noInterceptTableName");
		if (StringUtils.isNotBlank(noInterceptTableName)) {
			String[] a = noInterceptTableName.split(",");
			List<String> _a = Lists.newArrayList();
			for (int i = 0; i < a.length; i++) {
				if (a[i].equalsIgnoreCase(SysLogEntity.class.getAnnotation(Table.class).name())) {
					continue;
				}
				_a.add(a[i]);
			}
			settings.getAsMap().put("noInterceptTableName", StringUtils.join(_a, ","));
		}
		modulesBuilder.add(new SettingsModule(settings));
	}

}
