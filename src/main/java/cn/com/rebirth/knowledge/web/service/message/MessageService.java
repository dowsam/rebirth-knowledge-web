/**
 * Copyright (c) 2005-2012-10-9 www.china-cti.com
 * Id: MessageService.java,9:05:58
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.service.message;

import java.util.*;

import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import cn.com.rebirth.commons.*;
import cn.com.rebirth.knowledge.commons.entity.system.AbstractMessage.MessageStatu;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.persistence.service.*;

import com.google.common.collect.*;

// TODO: Auto-generated Javadoc
/**
 * The Class PrivateMessageService.
 *
 * @author wuwei
 */
@Service
@Transactional
public class MessageService extends BaseService {

	/**
	 * Send msg.
	 * 发送私信
	 * @param message the message
	 */
	public void sendMsg(PrivateMessage message) {
		message.setMessageStatu(MessageStatu.SEND);
		message.setCreateDate(new Date());
		save(message);
	}

	/**
	 * Send short msg.
	 * 发送短信
	 * @param shortMessage the short message
	 */
	public void sendShortMsg(ShortMessage shortMessage) {
		shortMessage.setMessageStatu(MessageStatu.SEND);
		shortMessage.setCreateDate(new Date());
		save(shortMessage);
	}

	/**
	 * Gets the private msg.
	 * 接收的私信
	 * @param userEntity the user entity
	 * @param pageRequest the page request
	 * @return the private msg
	 */
	public Page<PrivateMessage> getPrivateMsg(SysUserEntity userEntity, PageRequest pageRequest) {
		return findPage(pageRequest,
				"form PrivateMessage t where t.reciver=? order by t.createDate desc,t.messageStatu", userEntity);
	}

	/**
	 * Gets the send private msg.
	 * 发送的私信
	 * @param userEntity the user entity
	 * @param pageRequest the page request
	 * @return the send private msg
	 */
	public Page<PrivateMessage> getSendPrivateMsg(SysUserEntity userEntity, PageRequest pageRequest) {
		return findPage(pageRequest,
				"from PrivateMessage t where t.sender=? order by t.createDate desc,t.messageStatu", userEntity);
	}

	/**
	 * Gets the short msg.
	 * 接收的短信
	 * @param userEntity the user entity
	 * @param pageRequest the page request
	 * @return the short msg
	 */
	public Page<ShortMessage> getShortMsg(SysUserEntity userEntity, PageRequest pageRequest) {
		return findPage(pageRequest,
				"select t from ShortMessage t join t.recivers r where r=?  order by t.createDate desc,t.messageStatu",
				userEntity);
	}

	/**
	 * Gets the send short msg.
	 * 发送的短信
	 * @param userEntity the user entity
	 * @param pageRequest the page request
	 * @return the send short msg
	 */
	public Page<ShortMessage> getSendShortMsg(SysUserEntity userEntity, PageRequest pageRequest) {
		return findPage(pageRequest, "from ShortMessage t where t.sender=? order by t.createDate desc,t.messageStatu",
				userEntity);
	}

	/**
	 * Batch delete.
	 * 批量删除接收的短消息
	 *
	 * @param ids the ids
	 * @param userEntity the user entity
	 */
	public void batchDeleteRecv(Long[] ids, SysUserEntity userEntity) {
		for (Long msgId : ids) {
			ShortMessage message = get(ShortMessage.class, msgId);
			List<SysUserEntity> recivers = message.getRecivers();
			List<SysUserEntity> newReciv = Lists.newArrayList();
			for (SysUserEntity sysUserEntity : recivers) {
				if (sysUserEntity.getId().intValue() != userEntity.getId().intValue()) {
					newReciv.add(sysUserEntity);
				}
			}
			message.setRecivers(newReciv);
			save(message);
		}
	}

	/**
	 * Batch delete.
	 *批量删除发送的短消息
	 * @param ids the ids
	 */
	public void batchDelete(Long[] ids) {
		Map<String, Object> map = Maps.newHashMap();
		map.put("statu", MessageStatu.DELETE);
		map.put("list", Arrays.asList(ids));
		batchExecute("update ShortMessage t set t.messageStatu=:statu where t.id in (:list)", map);
	}
}
