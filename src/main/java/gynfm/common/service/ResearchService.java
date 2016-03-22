package gynfm.common.service;

import gynfm.common.service.model.ResearchModel;

import java.util.List;

public interface ResearchService {
	public List<ResearchModel> getAllResearch();
	public ResearchModel getResearchById(int id);
}
