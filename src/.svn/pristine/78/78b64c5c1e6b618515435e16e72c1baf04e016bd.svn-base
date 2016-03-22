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
 * AcademicDO entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "academic", catalog = "gynfm")
public class AcademicDO implements java.io.Serializable {

	// Fields

	private Integer id;
	private String title;
	private String content;
	private Date time;
	private String img1;
	private String img2;
	private Integer type;

	// Constructors

	/** default constructor */
	public AcademicDO() {
	}

	/** full constructor */
	public AcademicDO(String title, String content, Date time, String img1,
			String img2, Integer type) {
		this.title = title;
		this.content = content;
		this.time = time;
		this.img1 = img1;
		this.img2 = img2;
		this.type = type;
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

	@Column(name = "img1")
	public String getImg1() {
		return this.img1;
	}

	public void setImg1(String img1) {
		this.img1 = img1;
	}

	@Column(name = "img2")
	public String getImg2() {
		return this.img2;
	}

	public void setImg2(String img2) {
		this.img2 = img2;
	}

	@Column(name = "type")
	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}

}