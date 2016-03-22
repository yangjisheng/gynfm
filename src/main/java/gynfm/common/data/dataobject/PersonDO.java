package gynfm.common.data.dataobject;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;

import static javax.persistence.GenerationType.IDENTITY;

import javax.persistence.Id;
import javax.persistence.Table;

/**
 * PersonDO entity. @author MyEclipse Persistence Tools
 */
@Entity
@Table(name = "person", catalog = "gynfm")
public class PersonDO implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String img;
	private String introdction;
	private String description;
	private Integer type;
	private Integer is_tutor;
	private String tutor_info;
	private Integer order;

	// Constructors

	/** default constructor */
	public PersonDO() {
	}

	/** full constructor */
	public PersonDO(String name, String img, String introdction,
			String description, Integer type,Integer order,Integer is_tutor,String tutor_info) {
		this.name = name;
		this.img = img;
		this.introdction = introdction;
		this.description = description;
		this.type = type;
		this.order = order;
		this.is_tutor = is_tutor;
		this.tutor_info = tutor_info;
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

	@Column(name = "name")
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "img")
	public String getImg() {
		return this.img;
	}

	public void setImg(String img) {
		this.img = img;
	}

	@Column(name = "introdction", length = 65535)
	public String getIntrodction() {
		return this.introdction;
	}

	public void setIntrodction(String introdction) {
		this.introdction = introdction;
	}

	@Column(name = "description", length = 65535)
	public String getDescription() {
		return this.description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Column(name = "type")
	public Integer getType() {
		return this.type;
	}

	public void setType(Integer type) {
		this.type = type;
	}
	@Column(name = "order")
	public Integer getOrder() {
		return this.order;
	}

	public void setOrder(Integer order) {
		this.order = order;
	}

	@Column(name = "is_tutor")
	public Integer getIs_tutor() {
		return this.is_tutor;
	}

	public void setIs_tutor(Integer is_tutor) {
		this.is_tutor = is_tutor;
	}
	@Column(name = "tutor_info")
	public String getTutor_info() {
		return this.tutor_info;
	}

	public void setTutor_info(String tutor_info) {
		this.tutor_info = tutor_info;
	}
}