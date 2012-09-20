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
@RequestMapping("/study/music")
public class MusicEntityController extends AbstractBaseRestController<MusicEntity, Long> {

	@Override
	public String _new(Model model, MusicEntity entity, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		return "/study/music/musicEdit";
	}

	@Override
	public String create(Model model, @Valid MusicEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		return null;
	}

	@RequestMapping(method = RequestMethod.POST, value = "publish")
	public String publish(Model model, @Valid MusicEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		return null;
	}
}
