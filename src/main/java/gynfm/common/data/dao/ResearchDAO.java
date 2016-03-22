package gynfm.common.data.dao;

import gynfm.common.data.dataobject.ResearchDO;

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
 * ResearchDO entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see software.demo.data.dataobject.ResearchDO
 * @author MyEclipse Persistence Tools
 */
@Repository
public class ResearchDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(ResearchDAO.class);
	// property constants
	public static final String TITLE = "title";
	public static final String CONTENT = "content";
	public static final String LINK = "link";
	public static final String IMG = "img";

	protected void initDao() {
		// do nothing
	}

	public void save(ResearchDO transientInstance) {
		log.debug("saving ResearchDO instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(ResearchDO persistentInstance) {
		log.debug("deleting ResearchDO instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public ResearchDO findById(java.lang.Integer id) {
		log.debug("getting ResearchDO instance with id: " + id);
		try {
			ResearchDO instance = (ResearchDO) getHibernateTemplate().get(
					"software.demo.data.dataobject.ResearchDO", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<ResearchDO> findByExample(ResearchDO instance) {
		log.debug("finding ResearchDO instance by example");
		try {
			List<ResearchDO> results = (List<ResearchDO>) getHibernateTemplate()
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
		log.debug("finding ResearchDO instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from ResearchDO as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<ResearchDO> findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List<ResearchDO> findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}

	public List<ResearchDO> findByLink(Object link) {
		return findByProperty(LINK, link);
	}

	public List<ResearchDO> findByImg(Object img) {
		return findByProperty(IMG, img);
	}

	public List findAll() {
		log.debug("finding all ResearchDO instances");
		try {
			String queryString = "from ResearchDO";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public ResearchDO merge(ResearchDO detachedInstance) {
		log.debug("merging ResearchDO instance");
		try {
			ResearchDO result = (ResearchDO) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(ResearchDO instance) {
		log.debug("attaching dirty ResearchDO instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(ResearchDO instance) {
		log.debug("attaching clean ResearchDO instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static ResearchDAO getFromApplicationContext(ApplicationContext ctx) {
		return (ResearchDAO) ctx.getBean("ResearchDODAO");
	}
}