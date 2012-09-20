package cn.com.rebirth.knowledge.web.controller;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.multiaction.*;

@Controller
@RequestMapping("/")
public class SysIndexController extends MultiActionController {
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
}
