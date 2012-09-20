/**
 * Copyright (c) 2005-2012-9-14 www.china-cti.com
 * Id: SysUserService.java,11:15:51
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.service;

import java.io.*;
import java.util.*;

import org.slf4j.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import cn.com.rebirth.core.template.*;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.persistence.service.*;

import com.google.common.collect.*;

import freemarker.template.*;

// TODO: Auto-generated Javadoc
/**
 * The Class SysUserService.
 *
 * @author wuwei
 */
@Service
@Transactional
public class SysUserService extends BaseService {

	Logger logger = LoggerFactory.getLogger(getClass());

	private static Configuration configuration = new Configuration();

	private static FreeMarkerTemplateEngine templateEngine = new FreeMarkerTemplateEngine(configuration);

	/**
	 * Find recommend blog user.
	 * 根据用户信息获取可能感兴趣的博友
	 * @param 用户信息
	 * @param 感兴趣博友的数量
	 * @return 感兴趣的博友列表
	 */
	public List<SysUserEntity> findRecommendBlogUser(SysUserEntity sysUserEntity, Integer num) {
		//TODO 具体的根据用户信息推荐可能感兴趣的博友
		return Lists.newArrayList();
	}

	public String recmdBlogUserHtml(List<SysUserEntity> userEntities) {
		Map<String, Object> users = Maps.newHashMap();
		users.put("user", userEntities);
		String html = null;
		try {
			templateEngine.setPath("/templates/interestedBlogFriendBlockTemplate.ftl");
			html = templateEngine.renderFile("templates/interestedBlogFriendBlockTemplate.ftl", users);
		} catch (IOException e) {
			e.printStackTrace();
			logger.error("创建推荐博友模版失败，错误信息：", e);
		}
		return html;
	}

}
