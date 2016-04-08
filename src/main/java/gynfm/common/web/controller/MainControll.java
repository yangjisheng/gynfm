package gynfm.common.web.controller;

import gynfm.common.service.AcademicService;
import gynfm.common.service.NewsService;
import gynfm.common.service.PersonService;
import gynfm.common.service.ResearchService;
import gynfm.common.service.ScholarService;
import gynfm.common.service.model.AcademicModel;
import gynfm.common.service.model.NewsModel;
import gynfm.common.service.model.PersonModel;
import gynfm.common.service.model.ResearchModel;
import gynfm.common.service.model.ScholarModel;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/**
 * 访问主页
 * @author Mfh
 *
 */
@Controller
public class MainControll {
	@Resource
	NewsService newsService;
	@Resource
	ScholarService scholarService;
	@Resource
	ResearchService researchService;

	@Resource
	PersonService personService;

	@Resource
	AcademicService academicService;  //学术论坛

	
	@RequestMapping(value="/index.do", method = RequestMethod.GET)
	public String showIndex(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		List<NewsModel> newsList = newsService.getAllNews();
		model.addAttribute("newsList", newsList);
		List<ResearchModel> researchList = researchService.getAllResearch();
		model.addAttribute("researchList", researchList);
		return "index";
	}
	
	@RequestMapping(value="/scholar_forum.do", method = RequestMethod.GET)
	public String showScholarForum(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		/*List<ScholarModel> scholarList = scholarService.getAllScholar();
		System.out.println("controller:"+scholarList);
		model.addAttribute("scholarList", scholarList);*/
		List<AcademicModel> academicList = academicService.getAllAcademic();
		model.addAttribute("academicList", academicList);
		return "scholar/scholar_forum";
	}
	
	@RequestMapping(value="/scholar_nurse.do", method = RequestMethod.GET)
	public String showScholarNurse(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		List<ScholarModel> scholarList = scholarService.getAllScholar();
		//System.out.println("controller:"+scholarList);
		model.addAttribute("scholarList", scholarList);
		return "scholar/scholar_nurse";
	}
	
	@RequestMapping(value="/research_research.do", method = RequestMethod.GET)
	public String showResearchResearch(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		List<ResearchModel> researchList = researchService.getAllResearch();
		model.addAttribute("researchList", researchList);
		return "research/research_research";
	}
	
	@RequestMapping(value="/section_introduction.do", method = RequestMethod.GET)
	public String showSectionIntroduction(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "section/section_introduction";
	}
	@RequestMapping(value="/section_feature.do", method = RequestMethod.GET)
	public String showSectionFeature(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "section/section_feature";
	}
	@RequestMapping(value="/team_doctor.do", method = RequestMethod.GET)
	public String showTeamDoctor(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		List doctors=personService.getDoctors();
		model.addAttribute("doctors",doctors);
		return "team/team_doctor";
	}
	@RequestMapping(value="/team_doctor_info.do", method = RequestMethod.GET)
	public String showTeamDoctorInfo(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String doctor_id = request.getParameter("doctor_id");
		PersonModel person = personService.getPersonById(Integer.parseInt(doctor_id));
/*		System.out.println(person);*/		
		model.addAttribute("doctor",person);
		return "team/team_doctor_info";
	}
	
	@RequestMapping(value="/team_pharmacist.do", method = RequestMethod.GET)
	public String showTeamPharmacist(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		List<PersonModel> pharmacists = personService.getPharmacist();
		model.addAttribute("pharmacists", pharmacists);
				
		return "team/team_pharmacist";
	}
	@RequestMapping(value="/team_dietitian.do", method = RequestMethod.GET)
	public String showTeamDietitian(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		List<PersonModel> dietitians = personService.getDietitian();
		model.addAttribute("dietitians",dietitians);
		return "team/team_dietitian";
	}
	@RequestMapping(value="/team_expert.do", method = RequestMethod.GET)
	public String showTeamExpert(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "team/team_expert";
	}
	@RequestMapping(value="/research_tutor.do", method = RequestMethod.GET)
	public String showResearchTutor(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "research/research_tutor";
	}
	@RequestMapping(value="/research_master.do", method = RequestMethod.GET)
	public String showResearchMaster(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "research/research_master";
	}
	@RequestMapping(value="/nurse_introduction.do", method = RequestMethod.GET)
	public String showNurseIntroduction(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "nurse/nurse_introduction";
	}
	@RequestMapping(value="/nurse_nurse.do", method = RequestMethod.GET)
	public String showNurseNurse(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "nurse/nurse_nurse";
	}
	@RequestMapping(value="/nurse_angel.do", method = RequestMethod.GET)
	public String showNurseAngel(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "nurse/nurse_angel";
	}
	//进修生之家模块by Jack
	@RequestMapping(value="/student_home.do", method = RequestMethod.GET)
	public String showStudentHome(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String neirong=request.getParameter("neirong");
		//System.out.println("######"+neirong);
		if(neirong.contains("zsxx")){//招生信息
			System.out.println("招生信息");
			return "student/zsxx";
		}
		
		else if(neirong.contains("zszn")){ //招生指南
			return "student/zszn";
		}
		
		else if(neirong.contains("zslxfs")){ //招生联系方式
			return "student/zslxfs";
		}
		//招生指南
		else if(neirong.contains("zhinan1")){//招生指南第一个条目
			System.out.println("第一个指南");
			return "student/zhinan1";
		}
		else if(neirong.contains("zhinan2")){//招生指南第二个条目
			System.out.println("第二个指南");
			return "student/zhinan2";
		}
		
		else return null;
		
	}
	//患者园地 by Jack
	@RequestMapping(value="/hzyd.do", method = RequestMethod.GET)
	public String showPatientResearch(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String neirong=request.getParameter("name");
		//System.out.println("健康教育"+neirong);
		
		if(neirong.contains("jkjy")){ //健康教育
			//System.out.println("健康教育"+neirong);
			return "patient/jkjy";
		}
		else if(neirong.contains("kpzs")){ // 科普知识
			return "patient/kpzs";
		}
		else if(neirong.contains("lcyjzw")){ //临床研究招募
			//System.out.println("临床研究招务：" + neirong);
			return "patient/lcyjzw";
		}
		else if(neirong.contains("tnbxly")){//糖尿病夏令营
			return "patient/tnbxly";
		}
		else return null;
		//return "patient/patient_research";
	}
	//患者园地--- 处理科普知识的下载 by Jack
	@RequestMapping(value="/hzyd_download.do", method = RequestMethod.GET)
	public void hzyd_download(HttpServletRequest request, HttpServletResponse response, ModelMap model) throws IOException {
		// 获取用户下载的文件名称(url地址后追加数据,get)
				//System.out.println("文件下载controller");
				String fileName = request.getParameter("fileName");
				//System.out.println("文件名字"+fileName);
				
				//fileName = new String(fileName.getBytes("ISO8859-1"),"UTF-8");
				
				// 先获取上传目录路径
//				String basePath = "c:"+File.separator+"upload";
				String basePath = request.getSession().getServletContext().getRealPath("/resources/upload");
				// 获取一个文件流
				InputStream in = null;
				try {
					in = new FileInputStream(new File(basePath,fileName));
				} catch (FileNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
				
				/**
				 * 
				 * 设置响应头
				 */
				// 如果文件名是中文，需要进行url编码// 注意：中文名的话，要进行中文编码
				fileName = URLEncoder.encode(fileName, "UTF-8");
				// 设置下载的响应头
				response.setHeader("content-disposition", "attachment;fileName=" + fileName);
				
				// 获取response字节流
				OutputStream out = null;
				try {
					out = response.getOutputStream();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				byte[] b = new byte[1024];
				int len = -1;
				try {
					while ((len = in.read(b)) != -1){
						out.write(b, 0, len);
					}
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				// 关闭
				out.close();
				in.close();
	}
	//患者园地---糖尿病夏令营 
	@RequestMapping(value="/hzyd_picture.do", method = RequestMethod.GET)
	public String hzyd_picture(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		String neirong=request.getParameter("fileName");
		//System.out.println("糖尿病夏令营");
		if(neirong.contains("1")){
			return "patient/picture1";
		}
		else if(neirong.contains("2")){
			return "patient/picture2";
		}
		else if(neirong.contains("3")){
			return "patient/picture3";
		}
		else if(neirong.contains("4")){
			return "patient/picture4";
		}
		else if(neirong.contains("5")){
			return "patient/picture5";
		}
		else if(neirong.contains("6")){
			return "patient/picture6";
		}
		
		else return null;
	}
	
	@RequestMapping(value="/patient_knowledge.do", method = RequestMethod.GET)
	public String showPatientKnowledge(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "patient/patient_knowledge";
	}
	@RequestMapping(value="/patient_diabetes.do", method = RequestMethod.GET)
	public String showPatientDiabetes(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		return "patient/patient_diabetes";
	}
	//代谢论坛详细信息
	@RequestMapping(value="/scholar_forum_detail.do", method = RequestMethod.GET)
	public String showScholarForumDetail(HttpServletRequest request, HttpServletResponse response, ModelMap model) {
		int academicId = Integer.parseInt(request.getParameter("academicId"));
		AcademicModel academicModel = academicService.getAcademicById(academicId);
		System.out.println(academicModel.getTitle());
		model.addAttribute("academicModel", academicModel);
		
		return "scholar/scholar_forum_detail";
	}
}
