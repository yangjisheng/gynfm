package gynfm.common.service;

import gynfm.common.service.model.AcademicModel;
import gynfm.common.service.model.NewsModel;

import java.util.List;

public interface AcademicService {
	public List<AcademicModel>getAllAcademic();
	public AcademicModel getAcademicById(int id);

}
