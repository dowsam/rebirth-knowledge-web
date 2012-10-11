/**
 * Copyright (c) 2005-2012-10-9 www.china-cti.com
 * Id: SysUserService.java,10:58:03
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.service;

import java.io.*;
import java.util.*;

import org.slf4j.*;
import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import cn.com.rebirth.commons.*;
import cn.com.rebirth.core.template.*;
import cn.com.rebirth.knowledge.commons.entity.blogMaster.*;
import cn.com.rebirth.knowledge.commons.entity.study.*;
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

	/** The logger. */
	Logger logger = LoggerFactory.getLogger(getClass());

	/** The configuration. */
	private static Configuration configuration = new Configuration();

	/** The template engine. */
	private static FreeMarkerTemplateEngine templateEngine = new FreeMarkerTemplateEngine(configuration);

	/**
	 * Find recommend blog user.
	 * 根据用户信息获取可能感兴趣的博友
	 *
	 * @param sysUserEntity the sys user entity
	 * @param num the num
	 * @return 感兴趣的博友列表
	 */
	public List<SysUserEntity> findRecommendBlogUser(SysUserEntity sysUserEntity, Integer num) {
		//TODO 具体的根据用户信息推荐可能感兴趣的博友
		return Lists.newArrayList();
	}

	/**
	 * Recmd blog user html.
	 *
	 * @param userEntities the user entities
	 * @return the string
	 */
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

	/**
	 * Gets the attenion user.
	 * 找到我关注度人
	 * @param userEntity the userEntity
	 * @param pageRequest the page request
	 * @return the attenion user
	 */
	public Page<SysUserEntity> getAttenionUser(SysUserEntity userEntity, PageRequest pageRequest) {
		return findPage(pageRequest, "select t.attentionMe from BlogAttentionMe t where t.user=? ", userEntity);
	}

	/**
	 * Gets the fans.
	 * 找到我的粉絲
	 *
	 * @param userEntity the user entity
	 * @param pageRequest the page request
	 * @return the fans
	 */
	public Page<SysUserEntity> getFans(SysUserEntity userEntity, PageRequest pageRequest) {
		return findPage(pageRequest, "select t.fans from BlogFans t where t.user=?", userEntity);
	}

	/**
	 * Gets the friend approv.
	 * 获得我需要审核的密友申请
	 * @param sysUserEntity the sys user entity
	 * @param pageRequest the page request
	 * @return the friend approv
	 */
	public Page<UserFriendApprovEntity> getFriendApprov(SysUserEntity sysUserEntity, PageRequest pageRequest) {
		return findPage(pageRequest, "from UserFriendApprovEntity t wher t.approvUser=?", sysUserEntity);
	}

	/**
	 * Adds the friend from approv.
	 * 添加审核通过的人为密友
	 * @param sysUserEntity the sys user entity
	 * @param ids the ids
	 */
	public void addFriendFromApprov(SysUserEntity sysUserEntity, Long[] ids) {
		List<UserFriendApprovEntity> appFriends = findByIds(UserFriendApprovEntity.class, Arrays.asList(ids));
		//找到这个人的朋友
		BlogFriend blogFriend = findUnique("from BlogFriend t where t.user=?", sysUserEntity);
		List<SysUserEntity> friends = blogFriend.getFriends();
		for (UserFriendApprovEntity user : appFriends) {
			friends.add(user.getUserEntity());
		}
		blogFriend.setFriends(friends);
		blogFriend.setFriendNum(friends.size());
		save(blogFriend);
		delete(appFriends);
	}

	/**
	 * Refuse friend.
	 * 批量拒绝申请
	 * @param userEntity the user entity
	 * @param ids the ids
	 */
	public void refuseFriend(SysUserEntity userEntity, Long[] ids) {
		Map<String, List<Long>> param = Maps.newHashMap();
		param.put("ids", Arrays.asList(ids));
		batchExecute("delete from UserFriendApprovEntity t where t.id in (:ids)", param);
	}

	/**
	 * Gets the my friend.
	 * 找到我的密友
	 * @param userEntity the user entity
	 * @param pageRequest the page request
	 * @return the my friend
	 */
	public Page<SysUserEntity> getMyFriend(SysUserEntity userEntity, PageRequest pageRequest) {
		return findPage(pageRequest, "select t.friends from BlogFriend t where t.user=?", userEntity);
	}

	/**
	 * Gets the real info.
	 * 获得个人的真实信息
	 * @param sysUserEntity the sys user entity
	 * @return the real info
	 */
	public SysUserRealInfoEntity getRealInfo(SysUserEntity sysUserEntity) {
		return findUnique("from SysUserRealInfoEntity t where t.sysUserEntity=?", sysUserEntity);
	}
}
