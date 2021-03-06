package gynfm.common.data.dao;

import gynfm.common.data.dataobject.AcademicDO;
import gynfm.common.data.dataobject.NewsDO;

import java.util.Date;
import java.util.List;

import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * A data access object (DAO) providing persistence and search support for
 * AcademicDO entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see software.demo.data.dataobject.AcademicDO
 * @author MyEclipse Persistence Tools
 */
@Repository
public class AcademicDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(AcademicDAO.class);
	// property constants
	public static final String TITLE = "title";
	public static final String CONTENT = "content";
	public static final String IMG1 = "img1";
	public static final String IMG2 = "img2";
	public static final String TYPE = "type";

	protected void initDao() {
		// do nothing
	}

	public void save(AcademicDO transientInstance) {
		log.debug("saving AcademicDO instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(AcademicDO persistentInstance) {
		log.debug("deleting AcademicDO instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public AcademicDO findById(java.lang.Integer id) {
		/*log.debug("getting AcademicDO instance with id: " + id);
		try {
			AcademicDO instance = (AcademicDO) getHibernateTemplate().get(
					"software.demo.data.dataobject.AcademicDO", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}*/
		log.debug("getting AcademicDO instance with id: " + id);
		try {
			String queryString = "from AcademicDO as model where model.id = ?";
			return (AcademicDO) (getHibernateTemplate().find(queryString, id).get(0));
		} catch (Exception e) { 
			log.error("get failed", e);
			return new AcademicDO();
		}
	}

	public List<AcademicDO> findByExample(AcademicDO instance) {
		log.debug("finding AcademicDO instance by example");
		try {
			List<AcademicDO> results = (List<AcademicDO>) getHibernateTemplate()
					.findByExample(instance);
			log.debug("find by example successful, result size: "
					+ results.size());
			return results;
		} catch (RuntimeException re) {
			log.error("find by example failed", re);
			throw re;
		}
	}

	public List findByProperty(String propertyName, Object value) {
		log.debug("finding AcademicDO instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from AcademicDO as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<AcademicDO> findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List<AcademicDO> findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}

	public List<AcademicDO> findByImg1(Object img1) {
		return findByProperty(IMG1, img1);
	}

	public List<AcademicDO> findByImg2(Object img2) {
		return findByProperty(IMG2, img2);
	}

	public List<AcademicDO> findByType(Object type) {
		return findByProperty(TYPE, type);
	}

	public List findAll() {
		log.debug("finding all AcademicDO instances");
		try {
			String queryString = "from AcademicDO";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public AcademicDO merge(AcademicDO detachedInstance) {
		log.debug("merging AcademicDO instance");
		try {
			AcademicDO result = (AcademicDO) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(AcademicDO instance) {
		log.debug("attaching dirty AcademicDO instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(AcademicDO instance) {
		log.debug("attaching clean AcademicDO instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static AcademicDAO getFromApplicationContext(ApplicationContext ctx) {
		return (AcademicDAO) ctx.getBean("AcademicDODAO");
	}
}