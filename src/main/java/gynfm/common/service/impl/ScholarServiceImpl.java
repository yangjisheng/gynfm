package gynfm.common.service.impl;

import gynfm.common.data.dao.ScholarDAO;
import gynfm.common.data.dataobject.ScholarDO;
import gynfm.common.service.ScholarService;
import gynfm.common.service.model.ScholarModel;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class ScholarServiceImpl implements ScholarService {
	@Autowired
	ScholarDAO scholarDAO;
	
	@Override
	public List<ScholarModel> getAllScholar() {
		List<ScholarDO> scholarDOs = scholarDAO.findAll();
		List<ScholarModel> sholarModels = new ArrayList<ScholarModel>();
		for(ScholarDO scholarDO : scholarDOs) {
			ScholarModel scholarModel = new ScholarModel();
			BeanUtils.copyProperties(scholarDO, scholarModel);
			sholarModels.add(scholarModel);
		}
		System.out.println(sholarModels);
		return sholarModels;
	}
	@Override
	public ScholarModel getScholarById(int id) {
		ScholarModel scholarModel = new ScholarModel();
		ScholarDO scholarDO = scholarDAO.findById(id);
		BeanUtils.copyProperties(scholarDO, scholarModel);
		return scholarModel;
	}

}
