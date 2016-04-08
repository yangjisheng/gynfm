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
<%-- <base href="<%=basePath%>"> --%>
<title>鼓楼医院内分泌-进修生之家</title>
<style type="text/css">

	a:link{font-size:18px;color:blue}
	a:visited{font-size:18px;color:gray}
	a:hover{font-size:18px;color:red}
	
</style>


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
				<!-- <img alt="img2" src="resources/images/toppicture5.jpg"> -->
			</div>
			<div class="mod mod3">
				<div class="navtitle5"></div>
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
					<a href="student_home.do?neirong='zsxx'" target="_self">
						<dl class="navM1">
								<dt>招生信息</dt>							
						</dl>
					</a>
					
					<a href="student_home.do?neirong='zszn'" target="_self">
						<dl class="navM1">							
								<dt>招生指南</dt>
						</dl>
					</a>
					
					<a href="student_home.do?neirong='zslxfs'" target="_self">
						<dl class="navM1">
								<dt>招生联系方式</dt>	
						</dl>
					</a>
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
							当前位置：进修生之家&nbsp;&gt;&nbsp; <span>招生信息</span>
						</div>
					</div>
					<div class="col_news_head1" frag="面板11">
						<ul class="col_metas clearfix" frag="窗口11"
							portletmode="simpleColumnAttri">

							<li class="col_title">
								<h2>招生信息</h2>
							</li>
							

						</ul>
					</div>
					<div class="col_news_con" frag="面板6">
						<div class="col_news_list" frag="窗口6" portletmode="simpleList">

							<div class="wp_single wp_column_article" id="wp_column_article">
								<div class="wp_entry">
									<div id="wb_nr" style="font-size:16px">
										<p style="  line-height:2; color:black;font-size:16px;">
											<!-- 标题 -->
											<h3 align="center">鼓楼医院内分泌科进修班招生信息</h3> 
											<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											 1.  进修班招收人数：8-10人/期；
											  
											<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											2.  进修班学习期限：一年、半年.(高年资住院医师、主治医师)
											
											<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											3.  进修班开学时间：每年二期；开学时间：3月底、9月底、8月底（进修1年）

											
											<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											4.  招生条件：
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													政治思想好，具有良好的职业道德和业务水平；
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													本科毕业从事内科临床工作3年；
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													大专毕业从事内科临床工作5年；
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													县级及以上（二级甲等及以上）医院.

											
											<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											5.  进修安排: 专科病房为主；
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													进修半年：安排一周内分泌门诊学习观摩
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													进修一年：安排二周内分泌门诊学习观摩

											<br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											6. 学习内容：
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													全面掌握内分泌代谢性疾病中常见病多发病的诊断及治疗规范；
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													参加每周内分泌科业务学习和专科进修班的课程学习；
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													参加每周内分泌科的疑难病例（或危急重病例）讨论会；
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													参加每周放射影像学科与我科举办的病例读片研讨会；
													<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
													参加如何从临床工作出发撰写核心杂志及SCI论文的培训课程；
													


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
