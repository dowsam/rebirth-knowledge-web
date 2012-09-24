package cn.com.rebirth.knowledge.web.controller.libiary;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;
import org.springframework.web.servlet.mvc.multiaction.*;

@Controller
@RequestMapping("/libiary")
public class LibiaryController extends MultiActionController {
	@RequestMapping(method = RequestMethod.GET)
	public ModelAndView index() {
		ModelAndView modelAndView = new ModelAndView("/libiary/libiary");
		return modelAndView;
	}
}
