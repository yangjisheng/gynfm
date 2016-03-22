package gynfm.common.data.dao;

import gynfm.common.data.dataobject.RecruitDO;

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
 * RecruitDO entities. Transaction control of the save(), update() and delete()
 * operations can directly support Spring container-managed transactions or they
 * can be augmented to handle user-managed Spring transactions. Each of these
 * methods provides additional information for how to configure it for the
 * desired type of transaction control.
 * 
 * @see software.demo.data.dataobject.RecruitDO
 * @author MyEclipse Persistence Tools
 */
@Repository
public class RecruitDAO extends HibernateDaoSupport {
	private static final Logger log = LoggerFactory
			.getLogger(RecruitDAO.class);
	// property constants
	public static final String TITLE = "title";
	public static final String CONTENT = "content";
	public static final String IMG1 = "img1";
	public static final String IMG2 = "img2";

	protected void initDao() {
		// do nothing
	}

	public void save(RecruitDO transientInstance) {
		log.debug("saving RecruitDO instance");
		try {
			getHibernateTemplate().save(transientInstance);
			log.debug("save successful");
		} catch (RuntimeException re) {
			log.error("save failed", re);
			throw re;
		}
	}

	public void delete(RecruitDO persistentInstance) {
		log.debug("deleting RecruitDO instance");
		try {
			getHibernateTemplate().delete(persistentInstance);
			log.debug("delete successful");
		} catch (RuntimeException re) {
			log.error("delete failed", re);
			throw re;
		}
	}

	public RecruitDO findById(java.lang.Integer id) {
		log.debug("getting RecruitDO instance with id: " + id);
		try {
			RecruitDO instance = (RecruitDO) getHibernateTemplate().get(
					"software.demo.data.dataobject.RecruitDO", id);
			return instance;
		} catch (RuntimeException re) {
			log.error("get failed", re);
			throw re;
		}
	}

	public List<RecruitDO> findByExample(RecruitDO instance) {
		log.debug("finding RecruitDO instance by example");
		try {
			List<RecruitDO> results = (List<RecruitDO>) getHibernateTemplate()
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
		log.debug("finding RecruitDO instance with property: " + propertyName
				+ ", value: " + value);
		try {
			String queryString = "from RecruitDO as model where model."
					+ propertyName + "= ?";
			return getHibernateTemplate().find(queryString, value);
		} catch (RuntimeException re) {
			log.error("find by property name failed", re);
			throw re;
		}
	}

	public List<RecruitDO> findByTitle(Object title) {
		return findByProperty(TITLE, title);
	}

	public List<RecruitDO> findByContent(Object content) {
		return findByProperty(CONTENT, content);
	}

	public List<RecruitDO> findByImg1(Object img1) {
		return findByProperty(IMG1, img1);
	}

	public List<RecruitDO> findByImg2(Object img2) {
		return findByProperty(IMG2, img2);
	}

	public List findAll() {
		log.debug("finding all RecruitDO instances");
		try {
			String queryString = "from RecruitDO";
			return getHibernateTemplate().find(queryString);
		} catch (RuntimeException re) {
			log.error("find all failed", re);
			throw re;
		}
	}

	public RecruitDO merge(RecruitDO detachedInstance) {
		log.debug("merging RecruitDO instance");
		try {
			RecruitDO result = (RecruitDO) getHibernateTemplate().merge(
					detachedInstance);
			log.debug("merge successful");
			return result;
		} catch (RuntimeException re) {
			log.error("merge failed", re);
			throw re;
		}
	}

	public void attachDirty(RecruitDO instance) {
		log.debug("attaching dirty RecruitDO instance");
		try {
			getHibernateTemplate().saveOrUpdate(instance);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public void attachClean(RecruitDO instance) {
		log.debug("attaching clean RecruitDO instance");
		try {
			getHibernateTemplate().lock(instance, LockMode.NONE);
			log.debug("attach successful");
		} catch (RuntimeException re) {
			log.error("attach failed", re);
			throw re;
		}
	}

	public static RecruitDAO getFromApplicationContext(ApplicationContext ctx) {
		return (RecruitDAO) ctx.getBean("RecruitDODAO");
	}
}