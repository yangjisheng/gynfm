package gynfm.common.data.dataobject;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * ResearchDO entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "research", catalog = "gynfm")
public class ResearchDO implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private Date time;
	private String link;
	private String img;

	// Constructors

	/** default constructor */
	public ResearchDO() {
	}

	/** full constructor */
	public ResearchDO(String title, String content, Date time, String link,
			String img) {
		this.title = title;
		this.content = content;
		this.time = time;
		this.link = link;
		this.img = img;
	}

	// Property accessors
	@Id
	@GeneratedValue(strategy = IDENTITY)
	@Column(name = "_id", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "title")
	public String getTitle() {
		return this.title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	@Column(name = "content", length = 65535)
	public String getContent() {
		return this.content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	@Temporal(TemporalType.DATE)
	@Column(name = "time", length = 10)
	public Date getTime() {
		return this.time;
	}

	public void setTime(Date time) {
		this.time = time;
	}

	@Column(name = "link")
	public String getLink() {
		return this.link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	@Column(name = "img")
	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

}