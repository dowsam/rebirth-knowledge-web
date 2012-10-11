/**
 * Copyright (c) 2005-2012-9-27 www.china-cti.com
 * Id: PrivateMessageSender.java,15:33:12
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.service.message;

import javax.annotation.*;

import org.slf4j.*;
import org.springframework.beans.factory.annotation.*;

import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.knowledge.commons.message.*;

// TODO: Auto-generated Javadoc
/**
 * The Class PrivateMessageSender.
 *
 * @author wuwei
 */
@Resource
public class PrivateMessageSender implements MessageSender {

	/** The logger. */
	private Logger logger = LoggerFactory.getLogger(getClass());

	/** The private message service. */
	private MessageService privateMessageService;

	/* (non-Javadoc)
	 * @see cn.com.rebirth.knowledge.commons.message.MessageSender#send(java.lang.Object)
	 */
	@Override
	public boolean send(Object message) {
		PrivateMessage privateMessage = (PrivateMessage) message;
		try {
			privateMessageService.sendMsg(privateMessage);
			return true;
		} catch (Exception e) {
			logger.error("发送私信失败，错误：", e.getStackTrace());
			return false;
		}
	}

	/**
	 * Sets the private message service.
	 *
	 * @param privateMessageService the new private message service
	 */
	@Autowired
	public void setPrivateMessageService(MessageService privateMessageService) {
		this.privateMessageService = privateMessageService;
	}

}
