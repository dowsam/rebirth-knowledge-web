package cn.com.rebirth.knowledge.web.controller.study;

import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.*;

import cn.com.rebirth.core.web.controller.*;
import cn.com.rebirth.knowledge.commons.entity.study.*;

@Controller
@RequestMapping("/study/wiki")
public class WikiEntityController extends AbstractBaseRestController<WikiEntity, Long> {

}
