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
							当前位置：进修生之家&nbsp;&gt;&nbsp; <span>招生联系方式</span>
						</div>
					</div>
					<div class="col_news_head1" frag="面板11">
						<ul class="col_metas clearfix" frag="窗口11"
							portletmode="simpleColumnAttri">

							<li class="col_title">
								<h2>招生联系方式</h2>
							</li>
							

						</ul>
					</div>
					<div class="col_news_con" frag="面板6">
						<div class="col_news_list" frag="窗口6" portletmode="simpleList">

							<div class="wp_single wp_column_article" id="wp_column_article">
								<div class="wp_entry">
									<div id="wb_nr">
										<p style="  line-height:2; color:black;font-size:16px;">
											<br/>
											</br> 
											<span style="font-weight:bold;">内分泌科进修班具体联系人：</span> <br/>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;沈山梅 邮箱：shanmeishen@126.com
											
											<br/><br/><span style="font-weight:bold;">联系电话：</span> </br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
											025-83304616转61430 （内分泌病房护士站）
									       <br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;025-83304616转61431 （内分泌病房医生）
									       <br/> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;025-83304616转61470 （内分泌病房护士站）

											<br/><br/>
											<span style="font-weight:bold;"><a href="http://www.njglyy.com/human/human2.asp?leibieid=1" target="_blank" style="text-algn:'red'">我院具体详细招生内容请链接鼓楼医院网站（查看鼓楼医院教育处进修生网站内容）</a></span> </br>

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
