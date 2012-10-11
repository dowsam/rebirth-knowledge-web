/*
 * Copyright (c) 2005-2012 www.china-cti.com All rights reserved
 * Info:rebirth-knowledge-web SettingsConfigBusiness.java 2012-8-30 13:52:45 l.xue.nong$$
 */
package cn.com.rebirth.knowledge.web;

import java.util.*;

import javax.persistence.Table;

import org.apache.commons.lang3.*;

import cn.com.rebirth.commons.settings.*;
import cn.com.rebirth.core.inject.*;
import cn.com.rebirth.core.settings.*;
import cn.com.rebirth.knowledge.commons.*;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.service.middleware.client.*;

import com.google.common.collect.*;

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
		Settings settings = ThreadSafeVariableSettings.settingsBuilder()
				.putProperties("rebirth.knowledge.web.", System.getProperties()).replacePropertyPlaceholders().build();
		if (settings.getAsBoolean("localhost", false)) {
			Settings s = ThreadSafeVariableSettings.settingsBuilder()
					.loadFromClasspath("application-localhost.properties")
					.loadFromClasspath("logsql-localhost.properties").replacePropertyPlaceholders().build();
			settings = ThreadSafeVariableSettings.settingsBuilder().put(settings).put(s).build();
			//nothing
			settings.getAsMap().put("switchSql", "false");
		} else {
			InitiativeSettings initiativeSettings = ConsumerProxyFactory.getInstance().proxy(InitiativeSettings.class);
			settings = ThreadSafeVariableSettings.settingsBuilder().put(initiativeSettings.initiative()).put(settings)
					.build();
		}
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
