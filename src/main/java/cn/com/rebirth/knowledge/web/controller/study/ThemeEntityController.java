package cn.com.rebirth.knowledge.web.controller.study;

import javax.servlet.http.*;
import javax.validation.*;

import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.validation.*;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.*;

import cn.com.rebirth.commons.exception.*;
import cn.com.rebirth.core.web.controller.*;
import cn.com.rebirth.knowledge.commons.entity.study.*;

@Controller
@RequestMapping("/study/theme")
public class ThemeEntityController extends AbstractBaseRestController<ThemeEntity, Long> {
	//主题编辑
	@Override
	public String _new(Model model, ThemeEntity entity, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		return "/study/theme/themeEdit";
	}

	//保存草稿
	@Override
	public String create(Model model, @Valid ThemeEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		return null;
	}

	//发布
	@RequestMapping(method = RequestMethod.POST, value = "pubilsh")
	public String publish(Model model, @Valid ThemeEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		return null;
	}

	//添加音乐
	@RequestMapping(method = RequestMethod.PUT, value = "addMusic")
	public ModelAndView addMusic() {
		return null;
	}
}
