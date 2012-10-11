/**
 * Copyright (c) 2005-2012-10-11 www.china-cti.com
 * Id: BlogMasterService.java,9:27:02
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.service.blogMaster;

import java.util.*;

import javax.persistence.*;

import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import cn.com.rebirth.commons.*;
import cn.com.rebirth.knowledge.commons.entity.blogMaster.*;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.persistence.service.*;

// TODO: Auto-generated Javadoc
/**
 * The Class BlogMasterService.
 *
 * @author wuwei
 */
@Service
@Transactional
public class BlogMasterService extends BaseService {

	public static Integer PUBLICSH_BLOG = 6;
	public static Integer BLOG_BE_COLLECTED = 2;
	public static Integer COLLECT_BLOG = 1;
	public static Integer REPLY_BLOG = 1;

	/**
	 * Find blog master types.
	 * 获得按类别人数排序的前N个类别,参数为NULL时获得所有的类别
	 * @param num the num
	 * @return the list
	 */
	public List<BlogMasterType> findBlogMasterTypes(Integer num) {
		Query query = getBaseDao().getEm().createQuery("from BlogMasterType t order by t.blogMasterNum desc");
		if (null != num) {
			query.setMaxResults(num);
		}
		return query.getResultList();
	}

	/**
	 * Find blog master by type.
	 * 查找该类别下的博客达人
	 * @param blogMasterType the blog master type
	 * @param pageRequest the page request
	 * @return the page
	 */
	public Page<BlogMaster> findBlogMasterByType(BlogMasterType blogMasterType, PageRequest pageRequest) {
		return findPage(pageRequest, "from BlogMaster t left join t.blogMasterTypes b where b=?", blogMasterType);
	}

	/**
	 * Adds the blog friend.
	 *
	 * @param blogMaster the blog master
	 * @param user the user
	 */
	public void addBlogFriend(BlogMaster blogMaster, SysUserEntity user) {
		BlogFriend blogFriend = blogMaster.getBlogFriend();
		List<SysUserEntity> friends = blogFriend.getFriends();
		friends.add(user);
		blogFriend.setFriends(friends);
		blogFriend.setFriendNum(blogFriend.getFriendNum() + 1);
		save(blogFriend);
	}

	/**
	 * Adds the blog friend.
	 *
	 * @param blogMaster the blog master
	 * @param users the users
	 */
	public void addBlogFriend(BlogMaster blogMaster, List<SysUserEntity> users) {
		BlogFriend blogFriend = blogMaster.getBlogFriend();
		List<SysUserEntity> friends = blogFriend.getFriends();
		friends.addAll(users);
		blogFriend.setFriends(friends);
		blogFriend.setFriendNum(blogFriend.getFriendNum() + users.size());
		save(blogFriend);
	}

	/**
	 * Adds the blog fans.
	 *
	 * @param blogMaster the blog master
	 * @param user the user
	 */
	public void addBlogFans(BlogMaster blogMaster, SysUserEntity user) {
		BlogFans blogFans = blogMaster.getFans();
		List<SysUserEntity> fans = blogFans.getFans();
		fans.add(user);
		blogFans.setFans(fans);
		blogFans.setFansNum(blogFans.getFansNum() + 1);
		save(blogFans);
	}

	/**
	 * Adds the blog fans.
	 *
	 * @param blogMaster the blog master
	 * @param users the users
	 */
	public void addBlogFans(BlogMaster blogMaster, List<SysUserEntity> users) {
		BlogFans blogFans = blogMaster.getFans();
		List<SysUserEntity> fans = blogFans.getFans();
		fans.addAll(users);
		blogFans.setFans(fans);
		blogFans.setFansNum(blogFans.getFansNum() + users.size());
		save(blogFans);
	}

	/**
	 * Addblog att me.
	 *
	 * @param blogMaster the blog master
	 * @param user the user
	 */
	public void addblogAttMe(BlogMaster blogMaster, SysUserEntity user) {
		BlogAttentionMe attentionMe = blogMaster.getAttentionMe();
		List<SysUserEntity> attMe = attentionMe.getAttentionMe();
		attMe.add(user);
		attentionMe.setAttentionMe(attMe);
		attentionMe.setAttentionNum(attentionMe.getAttentionNum() + 1);
		save(attentionMe);
	}

	/**
	 * Addblog att me.
	 *
	 * @param blogMaster the blog master
	 * @param users the users
	 */
	public void addblogAttMe(BlogMaster blogMaster, List<SysUserEntity> users) {
		BlogAttentionMe attentionMe = blogMaster.getAttentionMe();
		List<SysUserEntity> attMe = attentionMe.getAttentionMe();
		attMe.addAll(users);
		attentionMe.setAttentionMe(attMe);
		attentionMe.setAttentionNum(attentionMe.getAttentionNum() + users.size());
		save(attentionMe);
	}
}
