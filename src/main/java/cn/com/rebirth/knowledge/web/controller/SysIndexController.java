package cn.com.rebirth.knowledge.web.controller;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.multiaction.*;

import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.knowledge.web.service.*;

@Controller
@RequestMapping("/")
public class SysIndexController extends MultiActionController {
	private SysUserService sysUserService;

	@RequestMapping(method = RequestMethod.GET)
	public String home(Model model) {
		return null;
	}

	@RequestMapping(method = RequestMethod.GET, value = "libiary")
	public String library(Model model) {
		return "/libiary/libiary";
	}

	@RequestMapping(method = RequestMethod.GET, value = "blogMaster")
	public String blogMaster(Model model) {
		return "/blogMaster/blogMaster";
	}

	@RequestMapping(method = RequestMethod.GET, value = "study")
	public String study(Model model) {
		SysUserEntity sysUserEntity = sysUserService.get(SysUserEntity.class, 255l);
		model.addAttribute("user", sysUserEntity);
		return "/study/bookHouse";
	}

	@RequestMapping(method = RequestMethod.GET, value = "circle")
	public String circle(Model model) {
		return "/circle/circle";
	}

	@RequestMapping(method = RequestMethod.GET, value = "resourceCenter")
	public String resourceCenter(Model model) {
		return "/resourceCenter/resourceCenter";
	}

	@Autowired
	public void setSysUserService(SysUserService sysUserService) {
		this.sysUserService = sysUserService;
	}
}
