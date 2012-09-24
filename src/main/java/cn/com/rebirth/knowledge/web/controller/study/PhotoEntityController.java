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
@RequestMapping("/study/photo")
public class PhotoEntityController extends AbstractBaseRestController<PhotoEntity, Long> {

	@Override
	public String _new(Model model, PhotoEntity entity, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		return "/study/photo/photoEdit";
	}

	@RequestMapping(method = RequestMethod.POST, value = "publish")
	public String publish(Model model, @Valid PhotoEntity entity, BindingResult errors, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		return null;
	}

	@RequestMapping(method = RequestMethod.PUT, value = "uploadPhoto")
	public ModelAndView uploadPhoto() {
		return null;
	}
}
