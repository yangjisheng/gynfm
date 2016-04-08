package gynfm.common.service;

import gynfm.common.service.model.PersonModel;

import java.util.ArrayList;
import java.util.List;

public interface PersonService {
	public List<PersonModel> getDoctersByOrder(int order);
	public PersonModel getPersonById(int Id);
	public List<ArrayList<PersonModel>> getDoctors();
	/*药剂师*/
	public List<PersonModel> getPharmacist();
	/*营养师*/
	public List<PersonModel> getDietitian();

}
