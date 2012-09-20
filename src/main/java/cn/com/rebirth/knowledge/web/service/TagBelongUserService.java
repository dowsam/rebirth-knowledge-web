/**
 * Copyright (c) 2005-2012-9-14 www.china-cti.com
 * Id: TagBelongUserService.java,9:46:07
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
}
