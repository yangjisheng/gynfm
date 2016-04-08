package gynfm.common.service.model;

import java.util.Date;

public class ScholarModel {
	private int id;
	private String title;
	private String content;
	private Date time;
	private String img1;
	private String img2;
	/** default constructor */
	public ScholarModel() {
	}
	public ScholarModel(int id, String title, String content, Date time,
			String img1, String img2) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.time = time;
		this.img1 = img1;
		this.img2 = img2;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getTime() {
		return time;
	}
	public void setTime(Date time) {
		this.time = time;
	}
	public String getImg1() {
		return img1;
	}
	public void setImg1(String img1) {
		this.img1 = img1;
	}
	public String getImg2() {
		return img2;
	}
	public void setImg2(String img2) {
		this.img2 = img2;
	}
	@Override
	public String toString() {
		return "ScholarModel [id=" + id + ", title=" + title + ", content="
				+ content + ", time=" + time + ", img1=" + img1 + ", img2="
				+ img2 + "]";
	}
	
}
