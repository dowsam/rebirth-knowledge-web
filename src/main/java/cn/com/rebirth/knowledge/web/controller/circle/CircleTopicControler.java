package cn.com.rebirth.knowledge.web.controller.circle;

import java.beans.*;
import java.util.*;

import javax.servlet.http.*;
import javax.validation.*;

import org.springframework.beans.factory.annotation.*;
import org.springframework.stereotype.*;
import org.springframework.ui.*;
import org.springframework.util.*;
import org.springframework.validation.*;
import org.springframework.web.bind.*;
import org.springframework.web.bind.annotation.*;

import cn.com.rebirth.commons.exception.*;
import cn.com.rebirth.core.web.controller.*;
import cn.com.rebirth.knowledge.commons.entity.circle.*;
import cn.com.rebirth.knowledge.web.service.circle.*;

@Controller
@RequestMapping("/circleTopic")
public class CircleTopicControler extends AbstractBaseRestController<CircleTopicEntity, Long> {
	private CircleService circleService;

	@InitBinder
	public void InitBinder(WebDataBinder binder) {
		super.initBinder(binder);
		binder.registerCustomEditor(CircleEntity.class, "circle", new PropertyEditorSupport() {
			@Override
			public void setAsText(String text) {
				if (!StringUtils.hasText(text)) {
					return;
				}
				CircleEntity circleEntity = circleService.get(CircleEntity.class, Long.valueOf(text));
				setValue(circleEntity);
			}
		});
	}

	@RequestMapping(method = RequestMethod.GET, value = "new/{id}")
	public String _new(Model model, @PathVariable Long id, HttpServletRequest request, HttpServletResponse response)
			throws RebirthException {
		model.addAttribute("circleId", id);
		return "/circle/topic/createTopic";
	}

	@Override
	public String create(Model model, @Valid CircleTopicEntity entity, BindingResult errors,
			HttpServletRequest request, HttpServletResponse response) throws RebirthException {

		circleService.save(entity);
		return "/circle/circleDetail";
	}

	@RequestMapping(method = RequestMethod.POST, value = "stick")
	public String stickyTopic(@RequestParam("stick") Long[] ids) {
		circleService.setStickyTopic(ids);
		return "circle/circleDetail";
	}

	@RequestMapping(method = RequestMethod.POST, value = "marrow")
	public String marrowTopic(@RequestParam("marrow") Long[] ids) {
		circleService.setMarrowTopic(ids);
		return "circle/circleDeatil";
	}

	@RequestMapping(method = RequestMethod.POST, value = "recycle")
	public String recycle(@RequestParam("recycle") Long[] ids) {
		circleService.recycleTopic(ids);
		return "circle/circleDetail";
	}

	@Override
	public String delete(Model model, @PathVariable Long id, CircleTopicEntity entity, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		circleService.delete(CircleTopicEntity.class, id);
		return "/circle/circleDeatil";
	}

	@Override
	public String batchDelete(Model model, @RequestParam("items") Long[] items, HttpServletRequest request,
			HttpServletResponse response) throws RebirthException {
		List<CircleTopicEntity> list = circleService.findByIds(CircleTopicEntity.class, Arrays.asList(items));
		circleService.delete(list);
		return "circle/circleDeatil";
	}

	@Autowired
	public void setCircleService(CircleService circleService) {
		this.circleService = circleService;
	}
}
