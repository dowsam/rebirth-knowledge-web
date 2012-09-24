package cn.com.rebirth.knowledge.web.controller.resourceCenter;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.mvc.multiaction.*;

@Controller
@RequestMapping("/resourceCenter")
public class ResourceCenterController extends MultiActionController {
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("/resourceCenter/resourceCenter");
		return modelAndView;
	}
}
