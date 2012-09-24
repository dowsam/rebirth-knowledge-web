package cn.com.rebirth.knowledge.web.controller.blogMaster;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.mvc.multiaction.*;

@Controller
@RequestMapping("/blogMaster")
public class BlogMasterController extends MultiActionController {
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("/blogMaster/blogMaster");
		return modelAndView;
	}

	@RequestMapping(method = RequestMethod.GET, value = "masterList")
	public ModelAndView blogMasterList() {
		ModelAndView modelAndView = new ModelAndView("/blogMaster/masterList");
		return modelAndView;
	}
}
