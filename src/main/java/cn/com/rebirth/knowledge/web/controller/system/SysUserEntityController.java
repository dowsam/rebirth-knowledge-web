package cn.com.rebirth.knowledge.web.controller.system;

import java.util.*;

import javax.servlet.http.*;
import javax.validation.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import cn.com.rebirth.commons.exception.*;
import cn.com.rebirth.commons.settings.*;
import cn.com.rebirth.commons.utils.*;
import cn.com.rebirth.core.email.*;
import cn.com.rebirth.core.inject.*;
import cn.com.rebirth.core.web.controller.*;
import cn.com.rebirth.knowledge.commons.entity.blogMaster.*;
import cn.com.rebirth.knowledge.commons.entity.study.*;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.knowledge.web.service.*;
import cn.com.rebirth.knowledge.web.service.blogMaster.*;

import com.google.common.collect.*;

@Controller
@RequestMapping("/system/sysUser")
public class SysUserEntityController extends AbstractBaseRestController<SysUserEntity, Long> {

	private SysUserService sysUserService;

	private SysGroupService sysGroupService;

	private TagBelongUserService tagBelongUserService;

	private TagService tagService;
	private BlogMasterService blogMasterService;

	@Override
	public String _new(Model model, SysUserEntity entity, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		return "/system/sysUser/register";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/{email}/validateEmail")
	public void validateEmail(@PathVariable String email, HttpServletResponse response) {
		List<SysUserEntity> sysUserEntities = sysUserService.find("from SysUserEntity t where t.email=?", email);
		Map<String, String> data = Maps.newHashMap();
		if (sysUserEntities.size() > 0) {
			data.put("state", "error");
		} else {
			data.put("state", "success");
		}
		ResponseTypeOutputUtils.renderJson(response, data);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/{userName}/validateUserName")
	public void validateUserName(@PathVariable String userName, HttpServletResponse response) {
		SysUserEntity sysUserEntity = sysUserService.findUnique("from SysUserEntity t where t.userName=?", userName);
		Map<String, String> data = Maps.newHashMap();
		if (null != sysUserEntity) {
			data.put("state", "error");
		} else {
			data.put("state", "success");
		}
		ResponseTypeOutputUtils.renderJson(response, data);
	}

	@Override
	@RequestMapping(method = RequestMethod.POST)
	public String create(Model model, @Valid SysUserEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		entity.setLoginName(entity.getEmail());
		//新注册的用户设置禁用并且锁定
		entity.setDisabled(true);
		entity.setLocked(true);
		sysUserService.save(entity);
		model.addAttribute("email", entity.getEmail());
		model.addAttribute("id", entity.getId());
		//发送验证邮件
		//sendEmail(entity.getEmail(), entity.getId(), entity.getLoginName());
		return "/system/sysUser/verification";
	}

	@RequestMapping(method = RequestMethod.GET, value = "activation/{id}")
	public String activation(Model model, @PathVariable Long id, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		SysUserEntity userEntity = sysUserService.get(SysUserEntity.class, id);
		//解锁并取消禁用
		userEntity.setDisabled(false);
		userEntity.setLocked(false);
		sysUserService.save(userEntity);
		model.addAttribute(userEntity.getId());
		model.addAttribute("loginName", userEntity.getLoginName());
		/*Long groupId = getLocation(request.getLocalAddr());
		if (null == groupId) {
			//获取默认区域
			Settings settings = InjectInitialization.injector().getInstance(Settings.class);
			groupId = Long.valueOf(settings.get("system.default.groupId"));
		}
		SysGroupEntity groupEntity = sysGroupService.get(SysGroupEntity.class, groupId);
		model.addAttribute(groupEntity);
		List<SysGroupEntity> childGroup = groupEntity.getChildSysGroup();
		model.addAllAttributes(childGroup);*/
		model.addAttribute("childGroup", sysGroupService.getAll(SysGroupEntity.class));
		return "/system/sysUser/detailEdit";
	}

	@RequestMapping(method = RequestMethod.GET, value = "/{google}/searchCompany")
	public void searchCompany(Model model, @PathVariable String google, HttpServletRequest request,
			HttpServletResponse response) {
		//TODO 改成真正的查找公司
		List<SysGroupEntity> data = sysGroupService.getAll(SysGroupEntity.class);
		List<SimpleJsonEntity> returnVal = sysGroupService.toSimpleList(data);
		ResponseTypeOutputUtils.renderJson(response, returnVal);
	}

	@RequestMapping(method = RequestMethod.GET, value = "/recommendTag")
	public void recommendTag(HttpServletResponse response) {
		List<SimpleJsonEntity> list = tagBelongUserService.getJsonRecommendTag();
		ResponseTypeOutputUtils.renderJson(response, list);
	}

	//保存新建的标签
	@RequestMapping(method = RequestMethod.GET, value = "/{tagName}/addTag")
	public void addTag(@PathVariable String tagName, HttpServletResponse response) {
		List<TagEntity> tagEntities = tagService.find("from TagEntity t where t.tagName=?", tagName);
		TagEntity tagEntity = null;
		if (null == tagEntities || tagEntities.size() < 1) {
			tagEntity = new TagEntity();
			tagEntity.setCreateDate(DateUtils.getToday());
			tagEntity.setTagName(tagName);
			tagService.save(tagEntity);
		}
		ResponseTypeOutputUtils.renderJson(response,
				tagService.toJsonEntity(null == tagEntity ? tagEntities.get(0) : tagEntity));
	}

	@RequestMapping(method = RequestMethod.POST, value = "/interesting/{id}")
	public String interestingBlogUser(Model model, @PathVariable Long id, @RequestParam("area") Long[] areaGroupIds,
			@RequestParam("company") Long companyId, @RequestParam("addedTag") Long[] tagIds,
			HttpServletResponse response) {
		SysUserEntity userEntity = sysUserService.get(SysUserEntity.class, id);
		List<SysGroupEntity> areaGroupEntities = sysGroupService.findByIds(SysGroupEntity.class,
				Arrays.asList(areaGroupIds));
		SysGroupEntity company = sysGroupService.get(SysGroupEntity.class, companyId);
		List<SysGroupEntity> groupEntities = Lists.newArrayList();
		groupEntities.addAll(areaGroupEntities);
		groupEntities.add(company);
		List<TagEntity> tagEntities = tagBelongUserService.findByIds(TagEntity.class, Arrays.asList(tagIds));
		userEntity.setGroupEntities(groupEntities);
		List<TagBelongUserEntity> tagBelongEntities = Lists.newArrayList();
		for (TagEntity tag : tagEntities) {
			TagBelongUserEntity belongEntity = new TagBelongUserEntity();
			belongEntity.setAttetionDate(new Date());
			belongEntity.setTag(tag);
			belongEntity.setSysUser(userEntity);
			tagBelongEntities.add(belongEntity);
		}
		tagBelongUserService.save(tagBelongEntities);
		userEntity.setTagBelongUserEntities(tagBelongEntities);
		sysUserService.save(userEntity);
		List<SysUserEntity> interestedUser = sysUserService.getAll(SysUserEntity.class);//sysUserService.findRecommendBlogUser(entity, 6);
		//ResponseTypeOutputUtils.renderHtml(response, sysUserService.recmdBlogUserHtml(interestedUser));
		//model.addAllAttributes(attributeValues)
		//model.addAllAttributes(interestedUser);
		//所属的地区组织
		model.addAttribute("areaGroup", areaGroupEntities);
		//所属的公司
		model.addAttribute("company", company);
		model.addAttribute("belongTag", tagBelongEntities);
		model.addAttribute("interestedUser", interestedUser);
		model.addAttribute("toChooseBlogUser", true);
		//model.addAttribute("html", sysUserService.recmdBlogUserHtml(interestedUser));
		return "/system/sysUser/detailEdit";
	}

	@RequestMapping(method = RequestMethod.POST, value = "/update/{id}")
	public String update(Model model, @PathVariable Long id, @RequestParam("area") Long[] areaGroupIds,
			@RequestParam("company") Long companyId, @RequestParam("addedTag") Long[] tagIds,
			@RequestParam("blogUser") Long[] blogUsers, @RequestParam("message") String message,
			HttpServletResponse response) throws RebirthException {
		SysUserEntity userEntity = sysUserService.get(SysUserEntity.class, id);
		List<SysGroupEntity> areaGroupEntities = sysGroupService.findByIds(SysGroupEntity.class,
				Arrays.asList(areaGroupIds));
		SysGroupEntity company = sysGroupService.get(SysGroupEntity.class, companyId);
		List<SysGroupEntity> groupEntities = Lists.newArrayList();
		groupEntities.addAll(areaGroupEntities);
		groupEntities.add(company);
		List<TagEntity> tagEntities = tagBelongUserService.findByIds(TagEntity.class, Arrays.asList(tagIds));
		List<SysUserEntity> blogUserEntities = sysUserService.findByIds(SysUserEntity.class, Arrays.asList(blogUsers));
		userEntity.setGroupEntities(groupEntities);
		List<TagBelongUserEntity> tagBelongEntities = Lists.newArrayList();
		for (TagEntity tag : tagEntities) {
			TagBelongUserEntity belongEntity = new TagBelongUserEntity();
			belongEntity.setAttetionDate(new Date());
			belongEntity.setTag(tag);
			belongEntity.setSysUser(userEntity);
			tagBelongEntities.add(belongEntity);
		}
		tagBelongUserService.save(tagBelongEntities);
		userEntity.setTagBelongUserEntities(tagBelongEntities);
		//关注信息放入blogmaster中
		BlogMaster blogMaster = new BlogMaster();
		//关注信息
		BlogAttentionMe attentionMe = new BlogAttentionMe();
		attentionMe.setAttentionMe(blogUserEntities);
		attentionMe.setAttentionNum(blogUserEntities.size());
		blogMaster.setAttentionMe(attentionMe);
		blogMaster.setUser(userEntity);
		blogMasterService.save(blogMaster);
		sysUserService.save(userEntity);
		return "/study/bookHouse";
	}

	private void sendEmail(String email, Long id, String loginName) {
		Settings settings = InjectInitialization.injector().getInstance(Settings.class);
		String adminEmail = settings.get("system.administrator.email.add", "l.xue.nong@gmail.com");
		String address = settings.get("system.host.name", "http://localhost:8081");
		AsyncJavaMailSender sender = SpringContextHolder.getBean("asyncJavaMailSender");
		Map<String, Object> map = Maps.newHashMap();
		map.put("url", address + "/system/sysUser/activation/" + id);
		map.put("loginName", loginName);
		sender.send(adminEmail, email, "知识管理系统申请确认", "verificationmailTemplate.ftl", map);
	}

	private Long getLocation(String ip) {
		return null;
	}

	@Autowired
	public void setSysUserService(SysUserService sysUserService) {
		this.sysUserService = sysUserService;
	}

	@Autowired
	public void setSysGroupService(SysGroupService sysGroupService) {
		this.sysGroupService = sysGroupService;
	}

	@Autowired
	public void setTagService(TagService tagService) {
		this.tagService = tagService;
	}

	@Autowired
	public void setTagBelongUserService(TagBelongUserService tagBelongUserService) {
		this.tagBelongUserService = tagBelongUserService;
	}

	@Autowired
	public void setBlogMasterService(BlogMasterService blogMasterService) {
		this.blogMasterService = blogMasterService;
	}

}
