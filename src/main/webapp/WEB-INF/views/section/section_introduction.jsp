<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>鼓楼医院内分泌-科室介绍</title>
<!-- used js-->
<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-1.7.min.js"></script>
<script type="text/javascript" src="resources/js/datepicker_lang_HK.js"></script>
<script type="text/javascript" src="resources/js/jquery.sudyNav.js"></script>
<script type="text/javascript" src="resources/js/jquery.datepicker.js"></script>
<script type="text/javascript"
	src="resources/js/jquery.sudy.wp.visitcount.js"></script>
<script language="javascript" src="resources/js/picbase2.js"></script>
<!--used css -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css"
	media="all" />
<link rel="stylesheet" type="text/css" href="resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="resources/css/b2c_pub.css" />
<link rel="stylesheet" type="text/css" href="resources/css/b2c.tip.css" />
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<link rel="stylesheet" type="text/css"
	href="resources/css/simplenews.css" />
</head>

<body>

	<!-- 头部 -->
	<jsp:include page="../component/head.jsp"></jsp:include>

	<!-- 内容区域 -->
	<div class="wrapper" id="container">
		<div class="inner">
			<div class="toppicture">
				<!-- <img alt="img2" src="resources/images/toppicture1.jpg"> -->
			</div>
			<div class="mod mod3">
				<div class="navtitle1"></div>
				<!--左侧栏开始-->
				<script>
					$(document).ready(function() {
						$(".mainProNav dl dt").mouseover(function() {
							$(".mainProNav dl").removeClass("dlHover");
							$(this).parent().addClass("dlHover");
						})
						$(".mainProNav").hover(function() {
							$(this).addClass("mainProNavHover");
						}, function() {
							$(this).removeClass("mainProNavHover");
							$(".mainProNav dl").removeClass("dlHover");
						})
					});
				</script>
				<div class="mainProNav">
					<dl class="navM1">
						<dt>
							<a href="section_introduction.do" target="_self">科室介绍</a>
						</dt>
					</dl>
					<dl class="navM2">
						<dt>
							<a href="section_feature.do" target="_self">学科特色</a>
						</dt>
					</dl>
					<div class="leftb">
						<img alt="img1" src="resources/images/leftb.jpg">
					</div>
				</div>

				<div class="clear"></div>
			</div>
			<div class="mod mod2">
				<div class="col_news">
					<div class="r_dh">
						<div class="r_dh_bt">
							当前位置：科室概况&nbsp;&gt;&nbsp; <span>科室介绍</span>
						</div>
					</div>
					<div class="col_news_head1" frag="面板11">
						<ul class="col_metas clearfix" frag="窗口11"
							portletmode="simpleColumnAttri">

							<li class="col_title">
								<h2>科室介绍</h2>
							</li>

						</ul>
					</div>
					<div class="col_news_con" frag="面板6">
						<div class="col_news_list" frag="窗口6" portletmode="simpleList">

							<div class="wp_single wp_column_article" id="wp_column_article">
								<div class="wp_entry">
									<div id="wb_nr">
										<p style="  line-height:2; color:black;font-size:16px;">
											</br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;南京大学医学院附属鼓楼医院内分泌科成立于20世纪80年代。经过三十年来的不断发展，目前本专业是卫生部国家临床重点专科，江苏省代谢性疾病临床诊疗中心，江苏省代谢病医学重点学科，江苏省临床重点专科，南京市内分泌代谢病临床医学中心，国家药品和食品监督管理局药品临床试验基地，卫生部基层医师培训基地，已成为国内较为重要的内分泌代谢病基础和临床研究基地。我科现有床位61张，设有独立的内分泌实验室及研究中心，年收治住院病人2000余人次，年门诊量近10万人次。在编医师18人，其中主任医师3人，副主任医师7人。本学科“以病人为中心，不断提高医疗质量”为宗旨，一直专注于内分泌代谢疾病的临床与基础研究，成立了糖尿病、甲状腺、肾上腺、代谢性骨病、垂体和性腺疾病亚专科，在1型糖尿病再生治疗、2型糖尿病发病机制及临床诊治、肾上腺疾病临床诊治方面的研究水平居国内前列，在糖尿病慢性并发症的诊治、甲状腺疾病、胰腺疾病、性腺疾病、肥胖、糖尿病自我监护和糖尿病宣教方面形成特色。
											</br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;学科带头人朱大龙教授是南京大学、南京医科大学、北京协和医学院博士生导师，国务院特殊津贴获得者，中华医学会糖尿病学分会副主任委员，江苏省医学会糖尿病学会名誉主任委员，江苏省医学会内分泌学会副主任委员，担任多个国内核心期刊及SCI杂志副主编及编委。内分泌学科在学科带头人带领下已经形成了较好的学术梯队，目前有博士生导师2人，硕士生导师5人；江苏省333高层次人才培养工程及江苏省医学重点人才1人，江苏省六大人才高峰2人，南京市医学科技发展杰出青年人才1人，南京市医学重点人才2人。学科在内分泌疾病方面的研究取得了卓有成效的成果，在Diabetes
											Care, Diabetologia,
											JCEM等专业杂志发表SCI论文及国内核心期刊论文三百余篇,承担多项国家自然科学基金等省部级科研项目以及多项独立研究者基金，相关研究获国家科技进步二等奖，江苏省科技进步二等奖，中华医学科技三等奖，江苏省医学科技二等奖，江苏省医学新技术引进奖一等奖，中国胰岛素分泌研究成就奖及新星奖，2012年度中国糖尿病十大研究最具影响力研究奖。
											</br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本学科是南京大学和南京医科大学博士及硕士学位授予点，东南大学及南京中医药大学硕士学位授予点，培养了大批高素质医学人才，长期承担南京大学医学院、南京医科大学、南京中医药大学及中国药科大学内科学及内分泌学的教学工作。同时也是全省及周边地区重要的专科医师教育和培训中心，为全省及周边地区输送了大量专科人才。十一年前，本着推进我国内分泌代谢疾病基础和临床研究的深入开展、构建高水平的国际交流平台的初衷，学科创立了南京大学内分泌代谢论坛；十一年来，论坛茁壮发展，成为国内内分泌代谢学界有影响的学术论坛，总参会人数4000余人次，学员遍布20多个省份。
										</p>
									</div>

								</div>
							</div>

						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
	</div>

	<jsp:include page="../component/foot.jsp"></jsp:include>
</body>
</html>
