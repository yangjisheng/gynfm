package gynfm.common.service.model;

import java.util.Date;

public class ResearchModel {
	private int id;
	private String title;
	private String content;
	private Date time;
	private String link;
	private String img;
	/** default constructor */
	public ResearchModel() {
	}
	public ResearchModel(int id, String title, String content, Date time,
			String link, String img) {
		super();
		this.id = id;
		this.title = title;
		this.content = content;
		this.time = time;
		this.link = link;
		this.img = img;
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
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@Override
	public String toString() {
		return "ResearchModel [id=" + id + ", title=" + title + ", content="
				+ content + ", time=" + time + ", link=" + link + ", img="
				+ img + "]";
	}
	
}
