/*
 * Copyright (c) 2005-2012 www.china-cti.com All rights reserved
 * Info:rebirth-knowledge-web WebPassiveSettingsImpl.java 2012-8-30 15:07:59 l.xue.nong$$
 */
package cn.com.rebirth.knowledge.web;

import java.util.List;

import javax.persistence.Table;

import org.apache.commons.lang3.StringUtils;

import com.google.common.collect.Lists;

import cn.com.rebirth.commons.settings.Settings;
import cn.com.rebirth.core.inject.InjectInitialization;
import cn.com.rebirth.knowledge.commons.AbstractSettingsShare;
import cn.com.rebirth.knowledge.commons.WebPassiveSettings;
import cn.com.rebirth.knowledge.commons.entity.system.SysLogEntity;

/**
 * The Class WebPassiveSettingsImpl.
 *
 * @author l.xue.nong
 */
public class WebPassiveSettingsImpl extends AbstractSettingsShare implements WebPassiveSettings {
	/* (non-Javadoc)
	 * @see cn.com.rebirth.knowledge.commons.AbstractSettingsShare#passive(cn.com.rebirth.commons.settings.Settings)
	 */
	@Override
	public void passive(Settings settings) {
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
		InjectInitialization.injector().getInstance(Settings.class).getAsMap().putAll(settings.getAsMap());
	}

	public static void main(String[] args) {
		String[] a = new String[] { "a", null, "1", "ddd", null };
		System.out.println(StringUtils.join(a, ","));
	}
}
