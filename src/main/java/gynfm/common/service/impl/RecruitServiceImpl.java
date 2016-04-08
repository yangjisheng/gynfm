package gynfm.common.service.impl;

import org.springframework.beans.BeanUtils;
import gynfm.common.data.dao.RecruitDAO;
import gynfm.common.data.dataobject.RecruitDO;
import gynfm.common.service.RecruitService;
import gynfm.common.service.model.RecruitModel;

import java.util.ArrayList;
import java.util.List;

//import net.sf.ehcache.hibernate.management.impl.BeanUtils;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class RecruitServiceImpl implements RecruitService {
	@Autowired
	RecruitDAO recruitDAO;
	@Override
	public List<RecruitModel> getAllRecruit() {
		List<RecruitModel> recruitModelList = new ArrayList<RecruitModel>();
		List<RecruitDO>recruitDoList = recruitDAO.findAll();
		for (RecruitDO recruitDO : recruitDoList) {
			RecruitModel newreModel = new RecruitModel();
			BeanUtils.copyProperties(recruitDO, newreModel);
			recruitModelList.add(newreModel);
		}
		return recruitModelList;
	}

	@Override
	public RecruitModel getreRecruitById(int id) {
		RecruitModel recruitModel = new RecruitModel();
		RecruitDO recruitDO = recruitDAO.findById(id);
		BeanUtils.copyProperties(recruitDO, recruitModel);
		return recruitModel;
	}

}
