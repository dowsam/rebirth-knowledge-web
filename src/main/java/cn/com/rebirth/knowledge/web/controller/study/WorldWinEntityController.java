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
@RequestMapping("/study/worldWin")
public class WorldWinEntityController extends AbstractBaseRestController<WorldWinEntity, Long> {
	@Override
	public String _new(Model model, WorldWinEntity entity, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		return "/study/worldWin/worldWinEdit";
	}

	@Override
	public String create(Model model, @Valid WorldWinEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		throw new UnsupportedOperationException("not yet implement");
	}

	//发布
	@RequestMapping(method = RequestMethod.POST, value = "pubilsh")
	public String publish(Model model, @Valid ThemeEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		return null;
	}

	@RequestMapping(method = RequestMethod.PUT, value = "addVideo")
	public ModelAndView addVideo() {
		return null;
	}
}
