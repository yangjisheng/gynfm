package gynfm.common.data.dao;

import gynfm.common.data.dataobject.NewsDO;
import gynfm.common.data.dataobject.PersonDO;

import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * A data access object (DAO) providing persistence and search support for
 * PersonDO entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see software.demo.data.dataobject.PersonDO
 * @author MyEclipse Persistence Tools
 */
@Repository
public class PersonDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(PersonDAO.class);
	// property constants
	public static final String NAME = "name";
	public static final String IMG = "img";
	public static final String INTRODCTION = "introdction";
	public static final String DESCRIPTION = "description";
	public static final String TYPE = "type";

	protected void initDao() {
		// do nothing
	}

	public void save(PersonDO transientInstance) {
		log.debug("saving PersonDO instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(PersonDO persistentInstance) {
		log.debug("deleting PersonDO instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public PersonDO findById(java.lang.Integer id) {
		
		log.debug("getting PersonDO instance with id: " + id);
		try {
			String queryString = "from PersonDO as model where model.id = ?";
			return (PersonDO) (getHibernateTemplate().find(queryString, id).get(0));
		} catch (Exception e) { 
			log.error("get failed", e);
			return new PersonDO();
		}
	}

	public List<PersonDO> findByExample(PersonDO instance) {
		log.debug("finding PersonDO instance by example");
		try {
			List<PersonDO> results = (List<PersonDO>) getHibernateTemplate()
					.findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}
	public List findDoctorsByOrder(java.lang.Integer order ) {
		log.debug("finding Doctor instance with order:" + order);
		try {
			String queryString = "from PersonDO as model where model.order=? and type=1";
			return getHibernateTemplate().find(queryString, order);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding PersonDO instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from PersonDO as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<PersonDO> findByName(Object name) {
		return findByProperty(NAME, name);
	}

	public List<PersonDO> findByImg(Object img) {
		return findByProperty(IMG, img);
	}

	public List<PersonDO> findByIntrodction(Object introdction) {
		return findByProperty(INTRODCTION, introdction);
	}

	public List<PersonDO> findByDescription(Object description) {
		return findByProperty(DESCRIPTION, description);
	}

	public List<PersonDO> findByType(Object type) {
		return findByProperty(TYPE, type);
	}

	public List findAll() {
		log.debug("finding all PersonDO instances");
		try {
			String queryString = "from PersonDO";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public PersonDO merge(PersonDO detachedInstance) {
		log.debug("merging PersonDO instance");
		try {
			PersonDO result = (PersonDO) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(PersonDO instance) {
		log.debug("attaching dirty PersonDO instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(PersonDO instance) {
		log.debug("attaching clean PersonDO instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static PersonDAO getFromApplicationContext(ApplicationContext ctx) {
		return (PersonDAO) ctx.getBean("PersonDODAO");
	}
}