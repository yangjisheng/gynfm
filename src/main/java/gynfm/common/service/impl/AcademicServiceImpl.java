package gynfm.common.service.impl;

import gynfm.common.data.dao.AcademicDAO;
import gynfm.common.data.dataobject.AcademicDO;
import gynfm.common.service.AcademicService;
import gynfm.common.service.model.AcademicModel;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class AcademicServiceImpl implements AcademicService {
	@Autowired
	AcademicDAO academicDAO;
	@Override
	public List<AcademicModel> getAllAcademic() {
		List<AcademicDO> academicDOs = academicDAO.findAll();
		List<AcademicModel> academicModels = new ArrayList<AcademicModel>();
		for(AcademicDO academicDO : academicDOs) {
			AcademicModel academicModel = new AcademicModel();
			BeanUtils.copyProperties(academicDO, academicModel);
			academicModels.add(academicModel);
		}
		return academicModels;
	}
	@Override
	public AcademicModel getAcademicById(int id) {
		System.out.println("--------");
		System.out.println(id);
		AcademicModel academicModel = new AcademicModel();
		AcademicDO academicDO = academicDAO.findById(id);
		BeanUtils.copyProperties(academicDO, academicModel);
		
		System.out.println(academicModel);
		return academicModel;
	}

}
