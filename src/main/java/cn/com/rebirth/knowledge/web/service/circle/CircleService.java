/**
 * Copyright (c) 2005-2012-10-10 www.china-cti.com
 * Id: CircleService.java,17:34:28
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.service.circle;

import java.util.*;

import javax.persistence.*;

import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import cn.com.rebirth.commons.*;
import cn.com.rebirth.knowledge.commons.entity.circle.*;
import cn.com.rebirth.knowledge.commons.entity.circle.CircleCategoryEntity.CircleCategoryType;
import cn.com.rebirth.knowledge.commons.entity.circle.CircleMemberApprovalEntity.ApprovalType;
import cn.com.rebirth.knowledge.commons.entity.circle.CircleMemberInfoEntity.MemberType;
import cn.com.rebirth.knowledge.commons.entity.circle.CircleTopicEntity.CircleTopicStatu;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.knowledge.commons.pojo.circle.*;
import cn.com.rebirth.persistence.service.*;

import com.google.common.collect.*;

// TODO: Auto-generated Javadoc
/**
 * The Class CircleService.
 *
 * @author wuwei
 */
@Service
@Transactional
public class CircleService extends BaseService {

	/** The first category. */
	public static Long[] FIRST_CATEGORY;

	/**
	 * Gets the first category.
	 * 获取一级类别
	 * @return the first category
	 */
	public List<CircleCategoryEntity> getFirstCategory() {
		return findBy(CircleCategoryEntity.class, "categoryType", CircleCategoryType.FIRST);
	}

	/**
	 * Gets the second category.
	 * 更具一级类别获取二级类别
	 * @param categoryEntity the category entity
	 * @return the second category
	 */
	public List<CircleCategoryEntity> getSecondCategory(CircleCategoryEntity categoryEntity) {
		if (categoryEntity.getCategoryType() == CircleCategoryType.SECOND) {
			return null;
		}
		return findBy(CircleCategoryEntity.class, "parent", categoryEntity);
	}

	/**
	 * Gets the second category.
	 *
	 * @param id the id
	 * @return the second category
	 */
	public List<CircleCategoryEntity> getSecondCategory(Long id) {
		CircleCategoryEntity parent = get(CircleCategoryEntity.class, id);
		return getSecondCategory(parent);
	}

	/**
	 * Category2 json.
	 *
	 * @param list the list
	 * @return the list
	 */
	public List<SimpleJsonEntity> category2Json(List<CircleCategoryEntity> list) {
		List<SimpleJsonEntity> jsonEntities = Lists.newArrayList();
		for (CircleCategoryEntity circleCategoryEntity : list) {
			SimpleJsonEntity jsonEntity = new SimpleJsonEntity();
			jsonEntity.setId(circleCategoryEntity.getId());
			jsonEntity.setName(circleCategoryEntity.getCategoryName());
			jsonEntities.add(jsonEntity);
		}
		return jsonEntities;
	}

	/**
	 * Gets the topic.
	 * 获得用户参与圈子的话题
	 * @param userEntity the user entity
	 * @param num the num
	 * @return the topic
	 */
	public List<CircleTopicEntity> getTopic(SysUserEntity userEntity, int num) {
		List<CircleTopicEntity> list = Lists.newArrayList();
		Query memberquery = getBaseDao()
				.getEm()
				.createQuery(
						"from CircleTopicEntity t where t.circleEntity in (select  c.circleEntity from CircleMemberInfoEntity c  where c.sysUserEntity=?) order by t.createDate desc");
		memberquery.setParameter(1, userEntity);
		memberquery.setMaxResults(num);
		return list.size() > num ? list.subList(0, num) : list;
	}

	/**
	 * Gets the marrow topic.
	 * 获得用户参与圈子的精华话题
	 * @param userEntity the user entity
	 * @param num the num
	 * @return the marrow topic
	 */
	@SuppressWarnings("unchecked")
	public List<CircleTopicEntity> getMarrowTopic(SysUserEntity userEntity, int num) {
		List<CircleTopicEntity> list = Lists.newArrayList();
		Query memberquery = getBaseDao()
				.getEm()
				.createQuery(
						"from CircleTopicEntity t where t.circleEntity in (select  c.circleEntity from CircleMemberInfoEntity c  where c.sysUserEntity=?) and t.marrow=? order by t.createDate desc");
		memberquery.setParameter(1, userEntity);
		memberquery.setParameter(2, true);
		memberquery.setMaxResults(num);
		list.addAll(memberquery.getResultList());
		return list.size() > num ? list.subList(0, num) : list;
	}

	/**
	 * Gets the my topic.
	 * 获得我发表的话题
	 * @param userEntity the user entity
	 * @param num the num
	 * @return the my topic
	 */
	@SuppressWarnings("unchecked")
	public List<CircleTopicEntity> getMyTopic(SysUserEntity userEntity, int num) {
		List<CircleTopicEntity> list = Lists.newArrayList();
		Query query = getBaseDao().getEm().createQuery(
				"from CircleTopicEntity t where t.creater=? order by t.createDate desc");
		query.setParameter(1, userEntity);
		query.setMaxResults(num);
		list = query.getResultList();
		return list;
	}

	/**
	 * Gets the my reply topic.
	 * 获得我回复的话题
	 * @param userEntity the user entity
	 * @param num the num
	 * @return the my reply topic
	 */
	@SuppressWarnings("unchecked")
	public List<CircleTopicEntity> getMyReplyTopic(SysUserEntity userEntity, int num) {
		List<CircleTopicEntity> list = Lists.newArrayList();
		Query query = getBaseDao()
				.getEm()
				.createQuery(
						"select t from CircleTopicEntity t  left join t.topicReplyEntities r where r.replyUser=? order by r.replyDate desc");
		query.setParameter(1, userEntity);
		query.setMaxResults(num);
		list = query.getResultList();
		return list;
	}

	/**
	 * Gets the managing circle.
	 * 获得我管理的圈子
	 * @param userEntity the user entity
	 * @return the managing circle
	 */
	@SuppressWarnings("unchecked")
	public List<CircleEntity> getManagingCircle(SysUserEntity userEntity) {
		List<CircleEntity> list = Lists.newArrayList();
		Query query = getBaseDao()
				.getEm()
				.createQuery(
						"select  c.circleEntity from CircleMemberInfoEntity c  where c.sysUserEntity=? and (c.memberType=? or c.memberType=?)");
		query.setParameter(1, userEntity);
		query.setParameter(2, MemberType.MASTER);
		query.setParameter(3, MemberType.SECONDARYMASTER);
		list = query.getResultList();
		return list;
	}

	/**
	 * Gets the member circle.
	 * 获得我只有普通权限的圈子
	 * @param userEntity the user entity
	 * @return the member circle
	 */
	@SuppressWarnings("unchecked")
	public List<CircleEntity> getMemberCircle(SysUserEntity userEntity) {
		List<CircleEntity> list = Lists.newArrayList();
		Query query = getBaseDao().getEm().createQuery(
				"select c.circleEntity from CircleMemberInfoEntity c where c.sysUserEntity=? and c.memberType=?");
		query.setParameter(1, userEntity);
		query.setParameter(2, MemberType.MEMBER);
		list = query.getResultList();
		return list;
	}

	/**
	 * Gets the hot topic entities.
	 *
	 * @param categoryEntity the category entity
	 * @param isSecond the is second
	 * @param num the num
	 * @return the hot topic entities
	 */
	@SuppressWarnings("unchecked")
	public List<CircleTopicEntity> getHotTopicEntities(CircleCategoryEntity categoryEntity, boolean isSecond, int num) {
		String hql = "select r.topicEntity from CircleTopicStatisticalEntity r where r.topicEntity.circleEntity.";
		if (!isSecond) {
			hql += "category=? order by r.dayReplyCount desc";
		} else {
			hql += "secCategory=? order by r.dayReplyCount desc";
		}
		Query query = getBaseDao().getEm().createQuery(hql);
		query.setParameter(1, categoryEntity);
		query.setMaxResults(num);
		List<CircleTopicEntity> list = query.getResultList();
		return list;
	}

	/**
	 * Gets the hot topic map.
	 *
	 * @param num the num
	 * @return the hot topic map
	 */
	public List<CategoryAndTopic> getHotTopic(int num) {
		List<CategoryAndTopic> list = Lists.newArrayList();
		List<CircleCategoryEntity> categoryEntities = getFirstCategory();
		List<CircleTopicEntity> typed;
		for (CircleCategoryEntity circleCategoryEntity : categoryEntities) {
			typed = getHotTopicEntities(circleCategoryEntity, false, num);
			CategoryAndTopic categoryCircleShow = new CategoryAndTopic();
			categoryCircleShow.setTopics(typed);
			categoryCircleShow.setCircleCategory(circleCategoryEntity);
			List<CategoryAndCircle> secondShow = Lists.newArrayList();
			if (typed.size() > 0) {
				//子类别
				List<CircleCategoryEntity> secondaryCategory = circleCategoryEntity.getSecondCategory();
				for (CircleCategoryEntity secondaryCircleCategory : secondaryCategory) {
					//今天该二级类别最热门的圈子
					Query query = getBaseDao()
							.getEm()
							.createQuery(
									"select t.circleEntity from CircleStatisticalEntity t where  t.circleEntity.secCategory = ? order by t.dayReplyCount desc");
					query.setParameter(1, secondaryCircleCategory);
					query.setMaxResults(num);
					List<CircleEntity> circles = query.getResultList();
					CategoryAndCircle categoryAndCircle = new CategoryAndCircle();
					categoryAndCircle.setCategory(secondaryCircleCategory);
					categoryAndCircle.setCircles(circles);
					secondShow.add(categoryAndCircle);
				}
			}
			categoryCircleShow.setCategoryAndCircles(secondShow);
			list.add(categoryCircleShow);
		}
		return list;
	}

	/**
	 * Gets the topic by circle.
	 *
	 * @param circleEntity the circle entity
	 * @return the topic by circle
	 */
	public List<CircleTopicEntity> getTopicByCircle(CircleEntity circleEntity) {
		List<CircleTopicEntity> list = find(
				"from CircleTopicEntity t where t.circleEntity=? order by t.sticky desc,t.statisticalEntity.lastReplyDate desc",
				circleEntity);
		return list;
	}

	/**
	 * Sets the sticky topic.
	 *
	 * @param ids the ids
	 * @return the int
	 */
	public int setStickyTopic(Long[] ids) {
		Query query = getBaseDao().getEm().createQuery(
				"update CircleTopicEntity t set t.sticky=true where t.id in (:idList)");
		List<Long> idList = Lists.newArrayList(ids);
		query.setParameter("idList", idList);
		return query.executeUpdate();
	}

	/**
	 * Sets the marrow topic.
	 *
	 * @param ids the ids
	 * @return the int
	 */
	public int setMarrowTopic(Long[] ids) {
		Query query = getBaseDao().getEm().createQuery(
				"update CircleTopicEntity t set t.marrow=true where t.id in (:idList)");
		query.setParameter("idList", Lists.newArrayList(ids));
		return query.executeUpdate();
	}

	/**
	 * Recycle topic.
	 *
	 * @param ids the ids
	 * @return the int
	 */
	public int recycleTopic(Long[] ids) {
		Query query = getBaseDao().getEm().createQuery(
				"update CircleTopicEntity t set t.statu=:statu where t.id in (:idList)");
		query.setParameter("statu", CircleTopicStatu.DELETE);
		query.setParameter("idList", Lists.newArrayList(ids));
		return query.executeUpdate();
	}

	//加入圈子
	/**
	 * Join2 circle.
	 *
	 * @param userEntity the user entity
	 * @param circleEntity the circle entity
	 */
	public void join2Circle(SysUserEntity userEntity, CircleEntity circleEntity) {
		CircleMemberInfoEntity memberInfoEntity = new CircleMemberInfoEntity();
		memberInfoEntity.setCircleEntity(circleEntity);
		memberInfoEntity.setMemberType(MemberType.MEMBER);
		memberInfoEntity.setSysUserEntity(userEntity);
		save(memberInfoEntity);
	}

	//加入副圈主
	/**
	 * Join2 secondary master.
	 *
	 * @param userEntity the user entity
	 * @param circleEntity the circle entity
	 */
	public void join2SecondaryMaster(SysUserEntity userEntity, CircleEntity circleEntity) {
		CircleMemberInfoEntity memberInfoEntity = findUnique(
				"from CircleMemberInfo t where t.sysUserEntity=? and t.circleEntity=?", userEntity, circleEntity);
		memberInfoEntity.setMemberType(MemberType.SECONDARYMASTER);
		save(memberInfoEntity);
	}

	/**
	 * Gets the approval topic.
	 * 获得需要审核的话题
	 * @param circleEntity the circle entity
	 * @return the approval topic
	 */
	public List<CircleTopicEntity> getApprovalTopic(CircleEntity circleEntity) {
		return find("from CircleTopicEntity t where t.circleEntity=? and t.statu=?", circleEntity,
				CircleTopicStatu.UNCHECKED);
	}

	/**
	 * Gets the approval user.
	 * 获得需审核的成员
	 * @param circleEntity the circle entity
	 * @return the approval user
	 */
	public List<SysUserEntity> getApprovalUser(CircleEntity circleEntity) {
		return find(
				"select t.circleEntity from CircleMemberApprovalEntity t where t.approvalType=? and t.circleEntity=?",
				ApprovalType.NEW_MEMBER_APPROVAL, circleEntity);

	}

	/**
	 * Gets the info list.
	 *
	 * @param circleEntity the circle entity
	 * @return the info list
	 */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> getInfoList(CircleEntity circleEntity) {
		Query query = getBaseDao()
				.getEm()
				.createQuery(
						"select new map(t.createDate as date,count(*) as topics,count(t.topicReplyEntities) as replies,count(t.circleTopicVisitEntities) ) from CircleTopicEntity t.group by t.createDate having t.circleEntity=? ");
		return query.getResultList();
	}

	/**
	 * Gets the member info.
	 *
	 * @param circleEntity the circle entity
	 * @return the member info
	 */
	@SuppressWarnings("unchecked")
	public List<CircleMemberInfoEntity> getMemberInfo(CircleEntity circleEntity) {
		Query query = getBaseDao().getEm().createQuery(
				"from CircleMemberInfoEntity t where t.circleEntity=? order by t.lastReplyDate desc");
		query.setParameter(1, circleEntity);
		return query.getResultList();
	}

	/**
	 * Gets the 24 hot topci.
	 * 24小时热帖排行
	 *
	 * @param userEntity the user entity
	 * @param num the num
	 * @return the 24 hot topci
	 */
	@SuppressWarnings("unchecked")
	public List<CircleTopicEntity> get24HotTopic(SysUserEntity userEntity, int num) {
		String hql;
		if (null == userEntity) {
			hql = "select t.topicEntity from CircleTopicStatisticalEntity t order by t.dayReplyCount desc";
		} else {
			hql = "select t.topicEntity from CircleTopicStatisticalEntity t where t.circleEntity in (:circleList) order by t.dayReplyCount desc";
		}
		Query query = getBaseDao().getEm().createQuery(hql);
		if (null != userEntity) {
			List<CircleEntity> list = getManagingCircle(userEntity);
			list.addAll(getMemberCircle(userEntity));
			query.setParameter("circleList", list);
		}
		query.setMaxResults(num);
		return query.getResultList();
	}

	/**
	 * Gets the week newly topic.
	 * 新增主贴排行
	 * @param userEntity the user entity
	 * @param num the num
	 * @return the week newly topic
	 */
	@SuppressWarnings("unchecked")
	public List<CircleEntity> getWeekNewlyTopic(SysUserEntity userEntity, int num) {
		String hql;
		if (null == userEntity) {
			hql = "select t.circleEntity from CircleStatisticalEntity t order by t.weekTopicCount desc";
		} else {
			hql = "select t.circleEntity from CircleStatisticalEntity t where t.circleEntity in (:circleList) order by t.weekTopicCount desc";
		}
		Query query = getBaseDao().getEm().createQuery(hql);
		if (null != userEntity) {
			List<CircleEntity> list = getManagingCircle(userEntity);
			list.addAll(getMemberCircle(userEntity));
			query.setParameter("circleList", list);
		}
		query.setMaxResults(num);
		return query.getResultList();
	}

	/**
	 * Gets the week reply topic.
	 * 新增回帖排行
	 * @param userEntity the user entity
	 * @param num the num
	 * @return the week reply topic
	 */
	@SuppressWarnings("unchecked")
	public List<CircleTopicEntity> getWeekReplyTopic(SysUserEntity userEntity, int num) {
		String hql;
		if (null == userEntity) {
			hql = "select t.topicEntity from CircleTopicStatisticalEntity t order by t.weekReplyCount desc";
		} else {
			hql = "select t.topicEntity from CircleTopicStatisticalEntity t where t.topicEntity.circleEntity in (:circleList) order by t.weekReplyCount desc";
		}
		Query query = getBaseDao().getEm().createQuery(hql);
		if (null != userEntity) {
			List<CircleEntity> list = getManagingCircle(userEntity);
			list.addAll(getMemberCircle(userEntity));
			query.setParameter("circleList", list);
		}
		query.setMaxResults(num);
		return query.getResultList();
	}

	/**
	 * Gets the total visit circle.
	 * 总访问量排行
	 * @param userEntity the user entity
	 * @param num the num
	 * @return the total visit circle
	 */
	@SuppressWarnings("unchecked")
	public List<CircleEntity> getTotalVisitCircle(SysUserEntity userEntity, int num) {
		String hql;
		if (null == userEntity) {
			hql = "select t.circleEntity from CircleStatisticalEntity t order by t.totalVisitCount desc";
		} else {
			hql = "select t.circleEntity from CircleStatisticalEntity t where t.circleEntity in (:circleList) order by t.totalVisitCount desc";
		}
		Query query = getBaseDao().getEm().createQuery(hql);
		if (null != userEntity) {
			List<CircleEntity> list = getManagingCircle(userEntity);
			list.addAll(getMemberCircle(userEntity));
			query.setParameter("circleList", list);
		}
		query.setMaxResults(num);
		return query.getResultList();
	}

	/**
	 * Gets the reply.
	 * 获得话题回复
	 * @param topicEntity the topic entity
	 * @param pageRequest the page request
	 * @return the reply
	 */
	public Page<CircleTopicReplyEntity> getReply(CircleTopicEntity topicEntity, PageRequest pageRequest) {
		return findPage(pageRequest, "from CircleTopicReplyEntity t where t.circleTopicEntity=? order by t.replyDate",
				topicEntity);
	}

	/**
	 * Gets the floor.
	 * 获得话题的回复数
	 * @param topicEntity the topic entity
	 * @return the floor
	 */
	public String getFloor(CircleTopicEntity topicEntity) {
		Query query = getBaseDao().getEm().createQuery(
				"select count(*) from CircleTopicReplyEntity t where t.circleTopicEntity=?");
		query.setParameter(1, topicEntity);
		return query.getSingleResult().toString();
	}
}
