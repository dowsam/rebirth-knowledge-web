/**
 * Copyright (c) 2005-2012-9-26 www.china-cti.com
 * Id: TagBelongUserService.java,15:41:25
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.service;

import java.util.*;

import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import cn.com.rebirth.knowledge.commons.entity.study.*;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.persistence.service.*;

import com.google.common.collect.*;

// TODO: Auto-generated Javadoc
/**
 * The Class TagBelongUserService.
 *
 * @author wuwei
 */
@Service
@Transactional
public class TagBelongUserService extends BaseService {

	/**
	 * Gets the json recommend tag.
	 * 得到JSON格式的推荐TAG
	 * @return the json recommend tag
	 */
	@Transactional(readOnly = true)
	public List<SimpleJsonEntity> getJsonRecommendTag() {
		List<SimpleJsonEntity> list = Lists.newArrayList();
		//TODO 具体业务
		return list;
	}

	/**
	 * Gets the normal recommend tag.
	 * 得到普通格式的推荐TAG
	 * @return the normal recommend tag
	 */
	@Transactional(readOnly = true)
	public List<TagBelongUserEntity> getNormalRecommendTag() {
		List<TagBelongUserEntity> list = Lists.newArrayList();
		return list;
	}

	/**
	 * Gets the user tag.
	 *
	 * @param sysUserEntity the sys user entity
	 * @return the user tag
	 */
	public List<TagBelongUserEntity> getUserTag(SysUserEntity sysUserEntity) {
		return find("from TagBelongUserEntity t where t.sysUser=?", sysUserEntity);
	}

	/**
	 * Save user and tag.
	 *
	 * @param userEntity the user entity
	 * @param tagIds the tag ids
	 */
	public void saveUserAndTag(SysUserEntity userEntity, Long[] tagIds) {
		List<TagEntity> tagEntities = findByIds(TagEntity.class, Arrays.asList(tagIds));
		List<TagBelongUserEntity> tagBelongEntities = Lists.newArrayList();
		for (TagEntity tag : tagEntities) {
			TagBelongUserEntity belongEntity = new TagBelongUserEntity();
			belongEntity.setAttetionDate(new Date());
			belongEntity.setTag(tag);
			belongEntity.setSysUser(userEntity);
			tagBelongEntities.add(belongEntity);
		}
		userEntity.setTagBelongUserEntities(tagBelongEntities);
		save(userEntity);
	}

	/**
	 * Find user by tag.
	 * 根据标签找用户
	 * @param tagEntity the tag entity
	 * @return the list
	 */
	public List<SysUserEntity> findUserByTag(TagEntity tagEntity) {
		return find("select t.sysUser from TagBelongUserEntity t where t.tagEntity=?", tagEntity);
	}
}
