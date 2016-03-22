package gynfm.common.data.dao;

import gynfm.common.data.dataobject.NewsDO;

import java.util.Date;
import java.util.List;

import org.apache.commons.lang.ObjectUtils.Null;
import org.hibernate.LockMode;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.ApplicationContext;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;
import org.springframework.stereotype.Repository;

/**
 * A data access object (DAO) providing persistence and search support for
 * NewsDO entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see software.demo.data.dataobject.NewsDO
 * @author MyEclipse Persistence Tools
 */
@Repository
public class NewsDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory.getLogger(NewsDAO.class);
	// property constants
	public static final String TITLE = "title";
	public static final String CONTENT = "content";
	public static final String IMG1 = "img1";
	public static final String IMG2 = "img2";

	protected void initDao() {
		// do nothing
	}

	public void save(NewsDO transientInstance) {
		log.debug("saving NewsDO instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(NewsDO persistentInstance) {
		log.debug("deleting NewsDO instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public NewsDO findById(Integer id) {
//		log.debug("getting NewsDO instance with id: " + id);
//		try {
//			NewsDO instance = (NewsDO) getHibernateTemplate().get(
//					"software.demo.data.dataobject.NewsDO", id);
//			return instance;
//		} catch (RuntimeException re) {
//			log.error("get failed", re);
//			throw re;
//		}
		log.debug("getting NewsDO instance with id: " + id);
		try {
			String queryString = "from NewsDO as model where model.id = ?";
			return (NewsDO) (getHibernateTemplate().find(queryString, id).get(0));
		} catch (Exception e) { 
			log.error("get failed", e);
			return new NewsDO();
//			throw re;
		}
	}

	public List<NewsDO> findByExample(NewsDO instance) {
		log.debug("finding NewsDO instance by example");
		try {
			List<NewsDO> results = (List<NewsDO>) getHibernateTemplate()
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
		log.debug("finding NewsDO instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from NewsDO as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<NewsDO> findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List<NewsDO> findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}

	public List<NewsDO> findByImg1(Object img1) {
		return findByProperty(IMG1, img1);
	}

	public List<NewsDO> findByImg2(Object img2) {
		return findByProperty(IMG2, img2);
	}

	public List findAll() {
		log.debug("finding all NewsDO instances");
		try {
			String queryString = "from NewsDO";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public NewsDO merge(NewsDO detachedInstance) {
		log.debug("merging NewsDO instance");
		try {
			NewsDO result = (NewsDO) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(NewsDO instance) {
		log.debug("attaching dirty NewsDO instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(NewsDO instance) {
		log.debug("attaching clean NewsDO instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static NewsDAO getFromApplicationContext(ApplicationContext ctx) {
		return (NewsDAO) ctx.getBean("NewsDODAO");
	}
}