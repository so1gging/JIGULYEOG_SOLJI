package com.mvc.jigulyeog.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mvc.jigulyeog.biz.MemberBiz;
import com.mvc.jigulyeog.model.dto.UserDto;


@Controller
public class MemberController {
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberBiz mb;
	
	// Date type error : typeMisMatch
    @InitBinder
    protected void initBinder(WebDataBinder binder){
        DateFormat  dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat,true));
    }
	
	//로그인 페이지로 이동
	@RequestMapping("/loginForm.do")
	public String loginForm(Model model) {
		logger.info("LOGIN FORM");
		return "/member/login";
	}
	
	//로그인
	@RequestMapping(value="/login.do", method=RequestMethod.POST)
	@ResponseBody
	public Map<String,Boolean> ajaxLogin(HttpSession session, @RequestBody UserDto user){
		logger.info("LOGIN");
		
		UserDto res = mb.login(user);
		boolean check = false;
		if(res != null) {
			session.setAttribute("user", res);
			check = true;
		}
		Map<String,Boolean> map = new HashMap<String, Boolean>();
		map.put("check", check);
		
		return map;
	}
	
	//로그아웃
	@RequestMapping("/logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		return "index";
	}
	
	//회원가입 선택 페이지로 이동
	@RequestMapping("/registForm.do")
	public String registForm(Model model) {
		return "/member/join_select";
	}
	
	//유저 회원가입 페이지로 이동
	@RequestMapping("/registUserForm.do")
	public String registUserForm(Model model) {
		return "/member/join_user";
	}
	
	//유저 회원가입
	@RequestMapping("/registUser.do")
	public void registUser(UserDto user, HttpServletRequest request,HttpServletResponse response,@RequestParam("file") MultipartFile file) {
		response.setContentType("text/html; charset=utf-8");
		logger.info("REGISTUSER");
		
		String user_pic = mb.userfileUpload(file, request,user);
		
		if(user_pic != "") {
			user.setUser_pic(user_pic);
			int res = mb.regist_user(user);
			
			if(res>0) {
				try {
					jsResponse("회원가입 성공", "loginForm.do", response);
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else {
				try {
					jsResponse("회원가입 실패", "registUserForm.do", response);
				} catch (IOException e) {
					e.printStackTrace();
				}
			}			
		}else {
			try {jsResponse("이미지를 등록해주세요","registUserForm.do",response);}
			catch (IOException e) {e.printStackTrace();}
		}
	}
	
	//환경단체 회원가입 페이지로 이동
	@RequestMapping("/registOrgForm.do")
	public String registOrgForm(Model model) {
		return "/member/join_org";
	}
	
	//id/pw 찾기 선택 페이지로 이동
	@RequestMapping("/searchForm.do")
	public String searchForm(Model model) {
		return "/member/find_select";
	}
	
	//id 찾기 페이지로 이동
	@RequestMapping("/searchIdForm.do")
	public String searchIdForm(Model model) {
		return "/member/find_id";
	}
	
	//id 찾기
	@RequestMapping("/searchId.do")
	public void searchId(UserDto user, Model model, HttpServletResponse response) {
		response.setContentType("text/html; charset=utf-8");
		logger.info("SEARCH_ID");
		UserDto res = mb.searchId(user);
		if(res != null) {
			try {
				jsResponse("회원님의 아이디는 "+res.getUser_id()+" 입니다", "loginForm.do", response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				jsResponse("찾으시는 계정이 존재하지 않습니다.", "searchIdForm.do", response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
	
	//pw 찾기 페이지로 이동
	@RequestMapping("/searchPwForm.do")
	public String searchPwForm(Model model) {
		return "/member/find_pw";
	}
	
	//pw 찾기
	@RequestMapping("/searchPw.do")
	public void searchPw(UserDto user, Model model, HttpServletResponse response) {
		response.setContentType("text/html; charset=utf-8");
		logger.info("SEARCH_PW");
		UserDto res = mb.searchId(user);
		if(res != null) {
			try {
				jsResponse("회원님의 비밀번호는 "+res.getUser_pw()+" 입니다", "loginForm.do", response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		} else {
			try {
				jsResponse("찾으시는 계정이 존재하지 않습니다.", "searchIdForm.do", response);
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	//idCheck
	@RequestMapping("/idCheck.do")
	@ResponseBody
	public Map idCheck(@RequestBody Map param) {
		String user_id = (String) param.get("user_id");
		logger.info("user_id:"+user_id);
		int res = 0;
		if (mb.idCheck(user_id) != 0) {
			res = 1;
		}
		// id 중복되면 res : 1, 없으면 0
		
		Boolean is = (res==0)?true:false;
		
		Map<String,Boolean> map = new HashMap<String, Boolean>();
		
		map.put("check", is);
		return map;
	}
	
	//nickCheck
	@RequestMapping("/nickCheck.do")
	@ResponseBody
	public Map nickCheck(@RequestBody Map param) {
		String user_nick = (String) param.get("user_nick");
		logger.info("user_nick:"+user_nick);
		int res = 0;
		if (mb.nickCheck(user_nick) != 0) {
			res = 1;
		}
		// id 중복되면 res : 1, 없으면 0
		
		Boolean is = (res==0)?true:false;
		
		Map<String,Boolean> map = new HashMap<String, Boolean>();
		
		map.put("check", is);
		return map;
	}
	
	
	private void jsResponse(String msg,String url,HttpServletResponse response) throws IOException {      
		String s = "<script type='text/javascript' charset='utf-8'>"+
				"alert('"+msg+"');"+
				"location.href='"+url+"';"+
				"</script>";
		PrintWriter out = response.getWriter();
		out.print(s);
  
   }
}
