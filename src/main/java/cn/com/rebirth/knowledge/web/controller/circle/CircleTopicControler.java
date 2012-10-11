/**
 * Copyright (c) 2005-2012-10-9 www.china-cti.com
 * Id: CircleTopicControler.java,16:36:50
 * @author wuwei
 */
package cn.com.rebirth.knowledge.web.controller.circle;

import java.beans.*;
import java.util.*;

import javax.servlet.http.*;
import javax.validation.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.util.*;
import org.springframework.validation.*;
import org.springframework.web.bind.*;
import org.springframework.web.bind.annotation.*;

import cn.com.rebirth.commons.*;
import cn.com.rebirth.commons.exception.*;
import cn.com.rebirth.core.web.controller.*;
import cn.com.rebirth.knowledge.commons.entity.circle.*;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.knowledge.commons.pageTag.*;
import cn.com.rebirth.knowledge.web.service.circle.*;

// TODO: Auto-generated Javadoc
/**
 * The Class CircleTopicControler.
 *
 * @author wuwei
 */
@Controller
@RequestMapping("/circleTopic")
public class CircleTopicControler extends AbstractBaseRestController<CircleTopicEntity, Long> {

	/** The circle service. */
	private CircleService circleService;

	/**
	 * Inits the binder.
	 *
	 * @param binder the binder
	 */
	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		super.initBinder(binder);
		binder.registerCustomEditor(CircleEntity.class, "circle", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				if (!StringUtils.hasText(text)) {
					return;
				}
				CircleEntity circleEntity = circleService.get(CircleEntity.class, Long.valueOf(text));
				setValue(circleEntity);
			}
		});
	}

	/**
	 * _new.
	 *
	 * @param model the model
	 * @param id the id
	 * @param request the request
	 * @param response the response
	 * @return the string
	 * @throws RebirthException the rebirth exception
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/new/{id}")
	public String _new(Model model, @PathVariable Long id, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		model.addAttribute("circleId", id);
		return "/circle/topic/createTopic";
	}

	/**
	 * Show.
	 *
	 * @param model the model
	 * @param id the id
	 * @param pageRequest the page request
	 * @param request the request
	 * @return the string
	 * @throws RebirthException the rebirth exception
	 */
	@RequestMapping(method = RequestMethod.GET, value = "/show/{id}")
	public String show(Model model, @PathVariable Long id, PageRequest pageRequest, HttpServletRequest request)
			throws RebirthException {
		CircleTopicEntity topicEntity = circleService.get(CircleTopicEntity.class, id);
		model.addAttribute("topic", topicEntity);
		//获得回复的话题
		Page<CircleTopicReplyEntity> reply = circleService.getReply(topicEntity, pageRequest);
		model.addAttribute("reply", reply);
		model.addAttribute("pageTag", PageTag.getTagHtml(reply, request.getRequestURL().toString()));
		return "/circle/topic/topicShow";
	}

	/**
	 * Reply topic.
	 * 回复话题
	 * @param model the model
	 * @param id the id
	 * @param reply the reply
	 * @return the string
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/reply/{id}")
	public String replyTopic(Model model, @PathVariable Long id, @RequestParam("newPost") String reply) {
		//TODO 获取登陆的USER
		SysUserEntity userEntity = circleService.get(SysUserEntity.class, 255l);
		CircleTopicEntity circleTopicEntity = circleService.get(CircleTopicEntity.class, id);
		CircleTopicReplyEntity replyEntity = new CircleTopicReplyEntity();
		replyEntity.setCircleTopicEntity(circleTopicEntity);
		replyEntity.setReplyContent(reply.getBytes());
		replyEntity.setReplyDate(new Date());
		replyEntity.setReplyUser(userEntity);
		replyEntity.setFloor(Integer.valueOf(circleService.getFloor(circleTopicEntity)) + 1);
		circleService.save(replyEntity);
		return "redirect:/circleTopic/show/" + id;
	}

	/* (non-Javadoc)
	 * @see cn.com.rebirth.core.web.controller.AbstractBaseRestController#create(org.springframework.ui.Model, java.lang.Object, org.springframework.validation.BindingResult, javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	@Override
	public String create(Model model, @Valid CircleTopicEntity entity, BindingResult errors,
			HttpServletRequest request, HttpServletResponse response) throws RebirthException {

		circleService.save(entity);
		return "redirect:/circle/detail/" + entity.getCircleEntity().getId();
	}

	/**
	 * Sticky topic.
	 *
	 * @param id the id
	 * @param ids the ids
	 * @return the string
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/{id}/sticky")
	public String stickyTopic(@PathVariable Long id, @RequestParam("sticky") Long[] ids) {
		circleService.setStickyTopic(ids);
		return "redirect:/circle/detail/" + id;
	}

	/**
	 * Marrow topic.
	 *
	 * @param id the id
	 * @param ids the ids
	 * @return the string
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/{id}/marrow")
	public String marrowTopic(@PathVariable Long id, @RequestParam("marrow") Long[] ids) {
		circleService.setMarrowTopic(ids);
		return "redirect:/circle/detail/" + id;
	}

	/**
	 * Recycle.
	 *
	 * @param id the id
	 * @param ids the ids
	 * @return the string
	 */
	@RequestMapping(method = RequestMethod.POST, value = "/{id}/recycle")
	public String recycle(@PathVariable Long id, @RequestParam("recycle") Long[] ids) {
		circleService.recycleTopic(ids);
		return "redirect:/circle/detail/" + id;
	}

	/**
	 * Batch delete.
	 *
	 * @param model the model
	 * @param id the id
	 * @param items the items
	 * @param request the request
	 * @param response the response
	 * @return the string
	 * @throws RebirthException the rebirth exception
	 */
	@RequestMapping(method = RequestMethod.DELETE, value = "/{id}/batchDelete")
	public String batchDelete(Model model, @PathVariable Long id, @RequestParam("items") Long[] items,
			HttpServletRequest request, HttpServletResponse response) throws RebirthException {
		List<CircleTopicEntity> list = circleService.findByIds(CircleTopicEntity.class, Arrays.asList(items));
		circleService.delete(list);
		return "redirect:/circle/detail/" + id;
	}

	/**
	 * Sets the circle service.
	 *
	 * @param circleService the new circle service
	 */
	@Autowired
	public void setCircleService(CircleService circleService) {
		this.circleService = circleService;
	}
}
