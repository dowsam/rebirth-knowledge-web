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

import cn.com.rebirth.commons.exception.*;
import cn.com.rebirth.commons.utils.*;
import cn.com.rebirth.core.web.controller.*;
import cn.com.rebirth.knowledge.commons.entity.circle.*;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.knowledge.web.service.circle.*;

@Controller
@RequestMapping("/circle")
public class CircleController extends AbstractBaseRestController<CircleEntity, Long> {
	private static int TOPICNUM = 12;
	private static int LEFTSIDENUM = 6;
	private CircleService circleService;

	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model) {
		Map<CircleCategoryEntity, List<CircleTopicEntity>> map = circleService.getHotTopicMap(TOPICNUM);
		Map<CircleCategoryEntity, Map<CircleCategoryEntity, List<CircleEntity>>> secMap = circleService
				.getHotCircle(TOPICNUM);
		model.addAttribute("map", map);
		model.addAttribute("secMap", secMap);
		List<CircleTopicEntity> hotTopic24 = circleService.get24HotTopic(null, LEFTSIDENUM);
		List<CircleEntity> weekNewlyCircle = circleService.getWeekNewlyTopic(null, LEFTSIDENUM);
		List<CircleTopicEntity> weekReplyTopic = circleService.getWeekReplyTopic(null, LEFTSIDENUM);
		List<CircleEntity> totalCircle = circleService.getTotalVisitCircle(null, LEFTSIDENUM);
		model.addAttribute("hotTopic24", hotTopic24);
		model.addAttribute("weekNewlyCircle", weekNewlyCircle);
		model.addAttribute("weekReplyTopic", weekReplyTopic);
		model.addAttribute("totalCircle", totalCircle);
		return "/circle/circle";
	}

	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		super.initBinder(binder);
		//绑定一级类别
		binder.registerCustomEditor(CircleCategoryEntity.class, "category", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				if (!StringUtils.hasText(text)) {
					return;
				}
				CircleCategoryEntity first = circleService.get(CircleCategoryEntity.class, Long.valueOf(text));
				setValue(first);
			}
		});
		//绑定二级类别
		binder.registerCustomEditor(CircleCategoryEntity.class, "secCategory", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				if (!StringUtils.hasText(text)) {
					return;
				}
				CircleCategoryEntity second = circleService.get(CircleCategoryEntity.class, Long.valueOf(text));
				setValue(second);
			}
		});
	}

	@Override
	public String _new(Model model, CircleEntity entity, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		//获取一级分类
		List<CircleCategoryEntity> first = circleService.getFirstCategory();
		//获取默认第一个一级分类的子类别
		List<CircleCategoryEntity> second = circleService.getSecondCategory(first.get(0));
		model.addAttribute("category", first);
		model.addAttribute("secCategory", second);
		return "/circle/createCircle";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/secondCategory/{id}")
	public void secendCategory(HttpServletResponse response, @PathVariable Long id) {
		List<CircleCategoryEntity> secondCategory = circleService.getSecondCategory(id);
		List<SimpleJsonEntity> json = circleService.category2Json(secondCategory);
		ResponseTypeOutputUtils.renderJson(response, json);
	}

	@Override
	public String create(Model model, @Valid CircleEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		SysUserRealInfoEntity realInfoEntity = entity.getMaster().getRealInfoEntity();
		circleService.save(realInfoEntity);
		//TODO 得到当前登录的人员
		SysUserEntity userEntity = circleService.get(SysUserEntity.class, 255l);
		userEntity.setRealInfoEntity(realInfoEntity);
		circleService.save(userEntity);
		entity.setCreateDate(new Date());
		entity.setMaster(userEntity);
		circleService.save(entity);
		model.addAttribute("newlyTopic", circleService.getTopic(userEntity, TOPICNUM));
		model.addAttribute("marrowTopic", circleService.getMarrowTopic(userEntity, TOPICNUM));
		model.addAttribute("myTopic", circleService.getMyTopic(userEntity, TOPICNUM));
		model.addAttribute("replyTopic", circleService.getMyReplyTopic(userEntity, TOPICNUM));
		model.addAttribute("managingCircle", circleService.getManagingCircle(userEntity));
		model.addAttribute("memberCircle", circleService.getMemberCircle(userEntity));
		return "/circle/joinedCircle";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/joinedCircle")
	public String joinedCircle(Model model) {
		//TODO 得到当前登录的人员
		SysUserEntity userEntity = circleService.get(SysUserEntity.class, 255l);
		model.addAttribute("newlyTopic", circleService.getTopic(userEntity, TOPICNUM));
		model.addAttribute("marrowTopic", circleService.getMarrowTopic(userEntity, TOPICNUM));
		model.addAttribute("myTopic", circleService.getMyTopic(userEntity, TOPICNUM));
		model.addAttribute("replyTopic", circleService.getMyReplyTopic(userEntity, TOPICNUM));
		model.addAttribute("managingCircle", circleService.getManagingCircle(userEntity));
		model.addAttribute("memberCircle", circleService.getMemberCircle(userEntity));
		return "/circle/joinedCircle";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/detail/{id}")
	public String circleDetail(Model model, @PathVariable Long id) {
		CircleEntity circleEntity = circleService.get(CircleEntity.class, id);
		List<CircleTopicEntity> list = circleService.getTopicByCircle(circleEntity);
		model.addAttribute("topic", list);
		SysUserEntity userEntity = circleService.get(SysUserEntity.class, 255l);
		model.addAttribute("user", userEntity);
		model.addAttribute("circle", circleEntity);
		return "/circle/circleDetail";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/manage/{id}")
	public String circleManage(Model model, @PathVariable Long id) {
		CircleEntity circleEntity = circleService.get(CircleEntity.class, id);
		model.addAttribute("circle", circleEntity);
		return "/circle/circleManage";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/approvalMem/{id}")
	public String circleMemberApproval(Model model, @PathVariable Long id) {
		CircleEntity circleEntity = circleService.get(CircleEntity.class, id);
		List<SysUserEntity> userEntities = circleService.getApprovalUser(circleEntity);
		model.addAttribute("user", userEntities);
		return "/circle/memberApprovalList";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/member/{id}")
	public String circleMember(Model model, @PathVariable Long id) {
		CircleEntity circleEntity = circleService.get(CircleEntity.class, id);
		List<CircleMemberInfoEntity> memberInfo = circleService.getMemberInfo(circleEntity);
		model.addAttribute("member", memberInfo);
		return "/circle/memberInfoList";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/approvalTopic/{id}")
	public String approvalTopic(Model model, @PathVariable Long id) {
		CircleEntity circleEntity = circleService.get(CircleEntity.class, id);
		List<CircleTopicEntity> topics = circleService.getApprovalTopic(circleEntity);
		model.addAttribute("topics", topics);
		return "/circle/approvalTopic";
	}

	@Override
	public String edit(Model model, @PathVariable Long id, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		//获取一级分类
		List<CircleCategoryEntity> first = circleService.getFirstCategory();
		CircleEntity circleEntity = circleService.get(CircleEntity.class, id);
		//获取默认第一个一级分类的子类别
		List<CircleCategoryEntity> second = circleService.getSecondCategory(circleEntity.getSecCategory());
		model.addAttribute("category", first);
		model.addAttribute("secCategory", second);
		model.addAttribute("circle", circleEntity);
		return "/circle/circleInfo";
	}

	@Autowired
	public void setCircleService(CircleService circleService) {
		this.circleService = circleService;
	}

}
