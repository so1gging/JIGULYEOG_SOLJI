package com.mvc.jigulyeog.model.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.mvc.jigulyeog.biz.DMBizImpl;
import com.mvc.jigulyeog.model.dto.DMListDto;

@Repository
public class DMDaoImpl implements DMDao{
	Logger logger = LoggerFactory.getLogger(DMBizImpl.class);
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Override
	public List<DMListDto> getDMList(String user_id) {
		logger.info("[ DMDao : getDMList ]");
		List<DMListDto> DMList = new ArrayList<DMListDto>();
		
		try {
			DMList = sqlSession.selectList(NAMESPACE+"dmList",user_id);
		} catch (Exception e) {
			logger.info("[ DMDao error : getDMList ]");
			e.getStackTrace();
		}
		return DMList;
	}

	@Override
	public DMListDto checkDMList(String user_id, String dm_id) {
		logger.info("[ DMDao : checkDMList ]");
		String dm_key=null;
		Map<String,Object> param = new HashMap<String, Object>();
		DMListDto dto = new DMListDto();
		
		try {
			dto = sqlSession.selectOne(NAMESPACE+"checkDMList");
		} catch (Exception e) {
			logger.info("[ DMDao error : checkDMList ]");
			e.getStackTrace();
		}
		
		return dto;
	}

	@Override
	public Boolean addDM(String user_id, String dm_id) {
		logger.info("[ DMDao : checkDMList ]");
		
		
		sqlSession.insert(NAMESPACE+"addDM");
		return null;
	}

}
