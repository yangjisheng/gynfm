package gynfm.common.service.impl;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.BeanUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import gynfm.common.data.dao.ResearchDAO;
import gynfm.common.data.dataobject.ResearchDO;
import gynfm.common.service.ResearchService;
import gynfm.common.service.model.ResearchModel;

@Service
public class ResearchServiceImpl implements ResearchService {
	@Autowired
	ResearchDAO researchDAO;
	@Override
	public List<ResearchModel> getAllResearch() {
		List<ResearchModel> researchModels = new ArrayList<ResearchModel>();
		List<ResearchDO> researchDOs = researchDAO.findAll();
		for (ResearchDO researchDO : researchDOs) {
			ResearchModel researchModel = new ResearchModel();
			BeanUtils.copyProperties(researchDO, researchModel);
			researchModels.add(researchModel);
		}
		return researchModels;
		
	}

	@Override
	public ResearchModel getResearchById(int id) {
		ResearchModel researchModel = new ResearchModel();
		ResearchDO researchDO = researchDAO.findById(id);
		BeanUtils.copyProperties(researchDO, researchModel);
		return researchModel;
	}
}
