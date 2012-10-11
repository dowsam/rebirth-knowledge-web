package cn.com.rebirth.knowledge.web.controller.circle;

import java.beans.*;
import java.util.*;

import javax.servlet.http.*;

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
import cn.com.rebirth.knowledge.commons.entity.circle.CircleMemberApprovalEntity.ApprovalType;
import cn.com.rebirth.knowledge.commons.entity.circle.CircleMemberInfoEntity.MemberType;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.knowledge.commons.pojo.circle.*;
import cn.com.rebirth.knowledge.web.service.*;
import cn.com.rebirth.knowledge.web.service.circle.*;

@Controller
@RequestMapping("/circle")
public class CircleController extends AbstractBaseRestController<CircleEntity, Long> {
	private static int TOPICNUM = 12;
	private static int LEFTSIDENUM = 6;
	private CircleService circleService;
	private SysUserService sysUserService;

	@RequestMapping(method = RequestMethod.GET)
	public String index(Model model) {
		List<CategoryAndTopic> showList = circleService.getHotTopic(TOPICNUM);
		model.addAttribute("showList", showList);
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
		binder.registerCustomEditor(CircleCategoryEntity.class, "circleEntity.category", new PropertyEditorSupport() {
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
		binder.registerCustomEditor(CircleCategoryEntity.class, "circleEntity.secCategory",
				new PropertyEditorSupport() {
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

	@RequestMapping(method = RequestMethod.POST, value = "/saveUserRealInfo")
	public void saveRealInfo(Model model, SysUserRealInfoEntity realInfoEntity, HttpServletResponse response) {
		//TODO 得到当前登录的人员
		SysUserEntity userEntity = circleService.get(SysUserEntity.class, 255l);
		SysUserRealInfoEntity realInfo = userEntity.getRealInfoEntity();
		if (null == realInfo) {
			realInfoEntity.setSysUserEntity(userEntity);
			circleService.save(realInfoEntity);
		}
	}

	@RequestMapping(method = RequestMethod.POST, value = "/saveCircle")
	public void createCircle(Model model, CreateCircle createCircle, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		CircleEntity entity = createCircle.getCircleEntity();
		//TODO 得到当前登录的人员
		SysUserEntity userEntity = circleService.get(SysUserEntity.class, 255l);
		SysUserRealInfoEntity realInfoEntity = sysUserService.getRealInfo(userEntity);
		userEntity.setRealInfoEntity(realInfoEntity);
		sysUserService.save(userEntity);
		entity.setCreateDate(new Date());
		circleService.save(entity);
		//将该人加入为成员
		CircleMemberInfoEntity memberInfoEntity = new CircleMemberInfoEntity();
		memberInfoEntity.setCircleEntity(entity);
		memberInfoEntity.setSysUserEntity(userEntity);
		memberInfoEntity.setMemberType(MemberType.MEMBER);
		circleService.save(memberInfoEntity);
		if (createCircle.isRegistMaster()) {
			//圈主申请
			CircleMemberApprovalEntity approvalEntity = new CircleMemberApprovalEntity();
			approvalEntity.setApprovalType(ApprovalType.MASTER_APPROVAL);
			approvalEntity.setCircleEntity(entity);
			approvalEntity.setReason(createCircle.getRegistMasterReason());
			approvalEntity.setUserEntity(userEntity);
			circleService.save(approvalEntity);
		}
		/*model.addAttribute("newlyTopic", circleService.getTopic(userEntity, TOPICNUM));
		model.addAttribute("marrowTopic", circleService.getMarrowTopic(userEntity, TOPICNUM));
		model.addAttribute("myTopic", circleService.getMyTopic(userEntity, TOPICNUM));
		model.addAttribute("replyTopic", circleService.getMyReplyTopic(userEntity, TOPICNUM));
		model.addAttribute("managingCircle", circleService.getManagingCircle(userEntity));
		model.addAttribute("memberCircle", circleService.getMemberCircle(userEntity));
		return "/circle/joinedCircle";*/
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

	@Autowired
	public void setSysUserService(SysUserService sysUserService) {
		this.sysUserService = sysUserService;
	}

}
