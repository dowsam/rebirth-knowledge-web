package cn.com.rebirth.knowledge.web.service;

import java.util.*;

import org.springframework.stereotype.*;
import org.springframework.transaction.annotation.*;

import cn.com.rebirth.knowledge.commons.entity.system.*;
import cn.com.rebirth.persistence.service.*;

import com.google.common.collect.*;

@Service
@Transactional
public class SysGroupService extends BaseService {
	public List<SimpleJsonEntity> toSimpleList(List<SysGroupEntity> groupEntities) {
		List<SimpleJsonEntity> list = null;
		if (null != groupEntities) {
			list = Lists.newArrayList();
			for (SysGroupEntity sysGroupEntity : groupEntities) {
				SimpleJsonEntity simpleGroupEntity = new SimpleJsonEntity();
				simpleGroupEntity.setId(sysGroupEntity.getId());
				simpleGroupEntity.setName(sysGroupEntity.getGroupName());
				list.add(simpleGroupEntity);
			}
		}
		return list;
	}
}
