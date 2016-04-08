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

<title>鼓楼医院内分泌-护理继教班</title>
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
				<!-- <img alt="img2" src="resources/images/toppicture7.jpg"> -->
			</div>
			<div class="mod mod3">
				<div class="navtitle7"></div>
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
							<a href="scholar_forum.do" target="_self">南大代谢论坛</a>
						</dt>
					</dl>
					<dl class="navM2">
						<dt>
							<a href="scholar_nurse.do" target="_self">护理继教班</a>
						</dt>
					</dl>
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
							当前位置：学术会议&nbsp;&gt;&nbsp; <span>护理继教班</span>
						</div>
					</div>
					<div class="col_news_head1" frag="面板11">
						<ul class="col_metas clearfix" frag="窗口11"
							portletmode="simpleColumnAttri">

							<li class="col_title">
								<h2>护理继教班</h2>
							</li>

						</ul>
					</div>
					<div class="col_news_con" frag="面板6">
						<div class="col_news_list" frag="窗口6" portletmode="simpleList">

							<div class="wp_single wp_column_article" id="wp_column_article">
								<div class="wp_entry">
									<div id="wb_nr">
										<p style="  line-height:2; color:black; font-size:23px; font-weight:bold;">
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp南京市鼓楼医院内分泌科举办国家级继续教育项目活动总结
										</p>
										<p style="  line-height:2; color:black;font-size:16px;">
											</br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;南京市鼓楼医院内分泌科护理组主办的国家级继续教育项目《肥胖及相关代谢性疾病诊疗护理一体化模式的应用及推广》于8月22日在我院科学会堂会议中心成功开办，旨在进一步普及和了解肥胖及相关代谢性疾病诊疗护理一体化模式方面的进展，提高护理人员对内分泌代谢性疾病的规范化管理和教育实践提供解决方案。此次参加学习班的学员共214人，包括本院护理人员87名、南京市各社区及基层医院工作者77名，以及来自镇江、扬州、苏州、无锡等省内多家医院和安徽部分医院工作者近50名。
												上午8点学习班开幕式在热烈的气氛中拉开了序幕，南京市鼓楼医院护理部副主任陈雁出席了开幕式并作开幕式致辞，对此次培训班寄予了厚望。
											</br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本次学习班邀请了南京鼓楼医院内分泌科毕艳主任、冯文煥主任、普外科孙喜太主任、营养科王静主任以及骨代谢疾病领域的专家林华主任，护理部陈雁主任、史婷奇主任等前来授课，此外还特别邀请了江苏省级机关医院护理部莫永珍主任、东南大学附属中大医院大内科鞠昌萍护士长前来授课交流。课程内容精彩纷呈，涉及内分泌代谢领域的新理念及我院内分泌科开展的各项特色活动。专家们精彩的讲课使全体学员受益匪浅，毕艳主任讲授的《代谢性疾病的临床科研思路》大大拓宽了我们护理科研的道路，
												指导我们护理研究的新方向，给予我们新的启示。冯文焕主任以及孙喜太主任的授课向我们展示了肥胖症治疗的最新进展和成效，林华主任作为骨代谢病领域的专家，向我们展示了骨质疏松症最新的临床治疗进展，王静主任生动而形象的向我们演示了如何做好膳食管理与血糖控制。我们的护理专家们则从入院到出院、专科到全院、从医院到社区多角度的分享了糖尿病护理的前沿资讯和最新进展。
											</br>
											&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;由于时间紧，授课内容丰富，学员们很少有课间休息时间，但学员仍然精神饱满，授课后纷纷与讲者互动，会议现场学术氛围活跃热烈。历时一天半的学习班为大家创造了一个互相交流的平台，增进了各医院同行间的技术和经验交流，本次学习班圆满结束并取得了良好的社会效益，对我院的护理工作起到了积极推动作用。
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
