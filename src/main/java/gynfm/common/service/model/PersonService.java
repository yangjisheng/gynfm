package gynfm.common.service.model;

import java.util.List;

public interface PersonService {
	public List<PersonModel> getPersonByType(int type);
	public PersonModel getPersonById(int Id);

}
