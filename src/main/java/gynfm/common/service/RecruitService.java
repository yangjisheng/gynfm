package gynfm.common.service;

import gynfm.common.service.model.NewsModel;
import gynfm.common.service.model.RecruitModel;

import java.util.List;

public interface RecruitService {
	public List<RecruitModel>getAllRecruit();
	public RecruitModel getreRecruitById(int id);

}
