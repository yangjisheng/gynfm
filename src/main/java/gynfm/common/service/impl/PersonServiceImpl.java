package gynfm.common.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.googlecode.ehcache.annotations.Cacheable;

import gynfm.common.data.dao.PersonDAO;
import gynfm.common.data.dataobject.PersonDO;
import gynfm.common.service.PersonService;
import gynfm.common.service.model.PersonModel;
@Service
public class PersonServiceImpl implements PersonService {
	@Autowired
	PersonDAO personDAO;
	
	@Override
	public List<PersonModel> getDoctersByOrder(int order) {
		List<PersonModel> personModelList = new ArrayList<PersonModel>();
		List<PersonDO> personDoList = personDAO.findDoctorsByOrder(order);
		for (PersonDO personDO : personDoList) {
			PersonModel personModel = new PersonModel();
			BeanUtils.copyProperties(personDO, personModel);
			personModelList.add(personModel);
		}
		return personModelList;
	}

	@Override
	public PersonModel getPersonById(int Id) {
		PersonModel personModel = new PersonModel();
		PersonDO personDO = personDAO.findById(Id);
		BeanUtils.copyProperties(personDO, personModel);
		return personModel;
	}

	@Cacheable(cacheName = "DOCTOR_CACHE")
	@Override
	public List<ArrayList<PersonModel>> getDoctors() {
		List<ArrayList<PersonModel>> doctors = new ArrayList<ArrayList<PersonModel>>();
		for(int i=1;i<=6;i++)
			doctors.add((ArrayList<PersonModel>) getDoctersByOrder(i));
		return doctors;
	}
	/**
	 * 药剂师type=2
	 */
	@Override
	public List<PersonModel> getPharmacist() {
		List<PersonModel> pharmacists = new ArrayList<PersonModel>();
		List<PersonDO> personDOList = personDAO.findByProperty("type", 2);
		for (PersonDO personDO : personDOList) {
			PersonModel personModel = new PersonModel();
			BeanUtils.copyProperties(personDO, personModel);
			pharmacists.add(personModel);
		}
		return pharmacists;
	}

	@Override
	/**
	 * 营养师type=3
	 */
	public List<PersonModel> getDietitian() {
		List<PersonModel> dietitians = new ArrayList<PersonModel>();
		List<PersonDO> personDOList = personDAO.findByProperty("type", 3);
		for (PersonDO personDO : personDOList) {
			PersonModel personModel = new PersonModel();
			BeanUtils.copyProperties(personDO, personModel);
			dietitians.add(personModel);
		}
		return dietitians;
	}

}
