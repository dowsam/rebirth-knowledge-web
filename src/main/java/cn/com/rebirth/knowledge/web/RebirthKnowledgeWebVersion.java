/*
 * Copyright (c) 2005-2012 www.china-cti.com All rights reserved
 * Info:rebirth-knowledge-web RebirthKnowledgeWebVersion.java 2012-8-30 16:32:02 l.xue.nong$$
 */
package cn.com.rebirth.knowledge.web;

import cn.com.rebirth.commons.AbstractVersion;
import cn.com.rebirth.commons.Version;

/**
 * The Class RebirthKnowledgeWebVersion.
 *
 * @author l.xue.nong
 */
public class RebirthKnowledgeWebVersion extends AbstractVersion implements Version {

	/** The Constant serialVersionUID. */
	private static final long serialVersionUID = -53169977130236648L;

	/* (non-Javadoc)
	 * @see cn.com.rebirth.commons.Version#getModuleName()
	 */
	@Override
	public String getModuleName() {
		return "Rebirth-Knowledge-Web";
	}

}
