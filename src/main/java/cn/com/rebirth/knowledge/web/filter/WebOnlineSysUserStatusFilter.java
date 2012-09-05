/*
 * Copyright (c) 2005-2012 www.china-cti.com All rights reserved
 * Info:rebirth-knowledge-web-admin OnlineSysUserStatusFilter.java 2012-8-14 17:56:02 l.xue.nong$$
 */
package cn.com.rebirth.knowledge.web.filter;

import javax.servlet.FilterChain;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cn.com.rebirth.core.web.filter.RequestContext;
import cn.com.rebirth.core.web.filter.ResponseContextFilter;
import cn.com.rebirth.knowledge.commons.entity.system.OnlineSysUserEntity;
import cn.com.rebirth.knowledge.web.service.WebUserService;

/**
 * The Class OnlineSysUserStatusFilter.
 *
 * @author l.xue.nong
 */
public class WebOnlineSysUserStatusFilter extends ResponseContextFilter {

	/* (non-Javadoc)
	 * @see cn.com.rebirth.core.web.filter.ResponseContextFilter#before(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse, javax.servlet.FilterChain, cn.com.rebirth.core.web.filter.RequestContext)
	 */
	@Override
	protected void before(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain,
			RequestContext rc) {
		String uri = request.getRequestURI();
		int i = uri.lastIndexOf(".");
		HttpSession httpSession = request.getSession(false);
		if (httpSession != null) {
			OnlineSysUserEntity onlineSysUserEntity = WebUserService.get(httpSession.getId());
			if (onlineSysUserEntity != null && i == -1) {
				onlineSysUserEntity.setCurrentRequestUrl(uri);
				WebUserService.put(onlineSysUserEntity.getSessionId(), onlineSysUserEntity);
			}
		}
	}

}
