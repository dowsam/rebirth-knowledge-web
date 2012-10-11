/**
 * Copyright (c) 2005-2012-9-27 www.china-cti.com
 * Id: ShortMessageSender.java,15:29:31
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.service.message;

import javax.annotation.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;

import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.knowledge.commons.message.*;

/**
 * The Class ShortMessageSender.
 *
 * @author wuwei
 */
@Resource
public class ShortMessageSender implements MessageSender {
	private Logger logger = LoggerFactory.getLogger(getClass());
	private MessageService messageService;

	/* (non-Javadoc)
	 * @see cn.com.rebirth.knowledge.commons.message.MessageSender#send(java.lang.Object)
	 */
	@Override
	public boolean send(Object message) {
		ShortMessage shortMessage = (ShortMessage) message;
		try {
			messageService.sendShortMsg(shortMessage);
			return true;
		} catch (Exception e) {
			logger.error("发送短信失败，错误：", e.getStackTrace());
			return false;
		}
	}

	@Autowired
	public void setMessageService(MessageService messageService) {
		this.messageService = messageService;
	}

}
