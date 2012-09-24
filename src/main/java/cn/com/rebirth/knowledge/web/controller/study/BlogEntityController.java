package cn.com.rebirth.knowledge.web.controller.study;

import javax.servlet.http.*;
import javax.validation.*;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;

import cn.com.rebirth.commons.exception.*;
import cn.com.rebirth.core.web.controller.*;
import cn.com.rebirth.knowledge.commons.entity.study.*;

@Controller
@RequestMapping("/study/blog")
public class BlogEntityController extends AbstractBaseRestController<BlogEntity, Long> {

	@Override
	public String show(Model model, @PathVariable Long id, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		return "/study/blog/blogView";
	}

	//编辑
	@Override
	public String _new(Model model, BlogEntity entity, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		return "/study/blog/blogEdit";
	}

	//扩展编辑
	@RequestMapping(method = RequestMethod.GET, value = "expEdit")
	public String expEdit(Model model, BlogEntity entity, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		return "/study/blog/expBlogEdit";
	}

	//高级编辑
	@RequestMapping(method = RequestMethod.GET, value = "seniorEdit")
	public String seniorNew(Model model, BlogEntity entity, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		return "/study/blog/seniorBlogEdit";
	}

	//保存草稿
	@Override
	public String create(Model model, @Valid BlogEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		return null;
	}

	//发布
	@RequestMapping(method = RequestMethod.POST, value = "publish")
	public String publish(Model model, @Valid BlogEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		return null;
	}
}
