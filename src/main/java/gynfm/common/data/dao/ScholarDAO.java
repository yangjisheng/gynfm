package gynfm.common.data.dao;

import gynfm.common.data.dataobject.ScholarDO;

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
 * ScholarDO entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see software.demo.data.dataobject.ScholarDO
 * @author MyEclipse Persistence Tools
 */
@Repository
public class ScholarDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(ScholarDAO.class);
	// property constants
	public static final String TITLE = "title";
	public static final String CONTENT = "content";
	public static final String IMG1 = "img1";
	public static final String IMG2 = "img2";

	protected void initDao() {
		// do nothing
	}

	public void save(ScholarDO transientInstance) {
		log.debug("saving ScholarDO instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ScholarDO persistentInstance) {
		log.debug("deleting ScholarDO instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ScholarDO findById(java.lang.Integer id) {
		log.debug("getting ScholarDO instance with id: " + id);
		try {
			ScholarDO instance = (ScholarDO) getHibernateTemplate().get(
					"software.demo.data.dataobject.ScholarDO", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<ScholarDO> findByExample(ScholarDO instance) {
		log.debug("finding ScholarDO instance by example");
		try {
			List<ScholarDO> results = (List<ScholarDO>) getHibernateTemplate()
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
		log.debug("finding ScholarDO instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from ScholarDO as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<ScholarDO> findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List<ScholarDO> findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}

	public List<ScholarDO> findByImg1(Object img1) {
		return findByProperty(IMG1, img1);
	}

	public List<ScholarDO> findByImg2(Object img2) {
		return findByProperty(IMG2, img2);
	}

	public List findAll() {
		log.debug("finding all ScholarDO instances");
		try {
			String queryString = "from ScholarDO";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ScholarDO merge(ScholarDO detachedInstance) {
		log.debug("merging ScholarDO instance");
		try {
			ScholarDO result = (ScholarDO) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ScholarDO instance) {
		log.debug("attaching dirty ScholarDO instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ScholarDO instance) {
		log.debug("attaching clean ScholarDO instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ScholarDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ScholarDAO) ctx.getBean("ScholarDODAO");
	}
}