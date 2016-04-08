package gynfm.common.service;

import gynfm.common.service.model.ScholarModel;

import java.util.List;

import javax.annotation.Resource;


@Resource
public interface ScholarService {
	public List<ScholarModel> getAllScholar();
	public ScholarModel getScholarById(int id);

}
