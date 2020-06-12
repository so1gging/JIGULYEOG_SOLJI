package com.mvc.jigulyeog.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mvc.jigulyeog.biz.DMBiz;
import com.mvc.jigulyeog.model.dto.DMListDto;
import com.mvc.jigulyeog.model.dto.UserDto;

@Controller
public class DMController {
	Logger logger = LoggerFactory.getLogger(DMController.class);
	@Autowired
	DMBiz dmb;
	
	
	// dmList
	@RequestMapping("dmlist.do")
	public String dmList(HttpSession session, Model model) {
		logger.info("[ DMController : dmList ]");
		UserDto user = (UserDto) session.getAttribute("user");
		
		//login chk
		if(user == null) {
			logger.info("[ 잘못된 경로 : 로그인 필수 ]");
			return "redirect:index.do";
		}
		

		List<DMListDto> DMList = dmb.getDMList(user.getUser_id());
		model.addAttribute("DMList",DMList);
			
		return "/dm/dm_list";
	}
	
	// add DM
	@RequestMapping("dmlistadd.do")
	public String dmListAdd(HttpSession session, @RequestParam("add") String dm_id) {
		logger.info("[ DMController : dmListAdd ]");
		UserDto user = (UserDto) session.getAttribute("user");
		//login chk
		if(user == null) {
			logger.info("[ 잘못된 경로 : 로그인 필수 ]");
			return "redirect:index.do";
		}
		
		// [1] 일단 DM리스트에 있는지 확인!
		
		DMListDto meDm = dmb.checkDMList(user.getUser_id(),dm_id);
		Boolean meDmChk = (meDm != null)?true:false; // 있으면 true(전에 DM햇었음.), 없으면 false(처음 이거나 삭제)
		
		// [2] 상대방 DM리스트에 있는지 확인!
		
		DMListDto youDm = dmb.checkDMList(dm_id,user.getUser_id()); 
		Boolean youDmChk = (youDm != null)?true:false; // 있으면 true(전에 DM했었음.), 없으면 false (처음 이거나 삭제)
		
		
		// [1] + [2] ==> (false,false) 나도 처음(삭제 했거나..), 상대방도 처음(삭제 했거나..)
		Boolean addMeDm = dmb.addDM(user.getUser_id(),dm_id);
		
		// [1] + [2] ==> (true,true) 둘다 서로 DM List에 남아있음
		return "";
	}
	
}
