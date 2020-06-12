package com.mvc.jigulyeog.biz;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mvc.jigulyeog.model.dao.DMDao;
import com.mvc.jigulyeog.model.dto.DMListDto;

@Service
public class DMBizImpl implements DMBiz{
	Logger logger = LoggerFactory.getLogger(DMBizImpl.class);
	
	@Autowired
	DMDao dao;
	
	@Override
	public List<DMListDto> getDMList(String user_id) {
		logger.info("[ DMBiz : getDMList ]");

		return dao.getDMList(user_id);
	}

	@Override
	public DMListDto checkDMList(String user_id, String dm_id) {
		logger.info("[ DMBiz : checkDMList ]");

		return dao.checkDMList(user_id,dm_id);
	}

	@Override
	public Boolean addDM(String user_id, String dm_id) {
		logger.info("[ DMBiz : addDM ]");
		

		return dao.addDM(user_id,dm_id);
	}

}
