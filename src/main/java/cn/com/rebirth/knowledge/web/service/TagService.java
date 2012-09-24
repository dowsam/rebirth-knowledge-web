package cn.com.rebirth.knowledge.web.service;

import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import cn.com.rebirth.knowledge.commons.entity.study.*;
import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.persistence.service.*;

@Service
@Transactional
public class TagService extends BaseService {
	public SimpleJsonEntity toJsonEntity(TagEntity tagEntity) {
		SimpleJsonEntity simpleJsonEntity = new SimpleJsonEntity();
		simpleJsonEntity.setId(tagEntity.getId());
		simpleJsonEntity.setName(tagEntity.getTagName());
		return simpleJsonEntity;
	}
}
