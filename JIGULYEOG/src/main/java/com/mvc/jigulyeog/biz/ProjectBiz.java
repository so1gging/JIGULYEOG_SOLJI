package com.mvc.jigulyeog.biz;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.multipart.MultipartFile;

import com.mvc.jigulyeog.model.dto.OrgDto;
import com.mvc.jigulyeog.model.dto.PageMaker;
import com.mvc.jigulyeog.model.dto.Paging;
import com.mvc.jigulyeog.model.dto.ProjectDto;

public interface ProjectBiz {
	String projectfileUpload(MultipartFile file,HttpServletRequest request);
	boolean projectWrite(ProjectDto project);
	Paging projectPaging(Integer page);
	List<ProjectDto> projectList(Paging paging);
	List<ProjectDto> getArticleOldList(Paging paging);	
	List<ProjectDto> getArticleManyList(Paging paging);
	PageMaker getPageMaker(Paging paging);
	ProjectDto getProjectOne(int pro_num);
	OrgDto getProjectOneOrg(String user_id);
	boolean projectUpdate(ProjectDto project);
	boolean projectDelete(int pro_num);
	Paging projectPagingSearch(Integer page,String keyword);
	List<ProjectDto> projectSearch(Paging paging,String keyword);
}
