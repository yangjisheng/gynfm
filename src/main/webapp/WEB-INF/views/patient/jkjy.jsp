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
<link rel="stylesheet" type="text/css" href="resources/css/simplenews.css" />
<link rel="stylesheet" type="text/css" href="resources/css/table.css"/>
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
				<div class="navtitle6"></div>
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
				
				<a href="hzyd.do?name='jkjy'" target="_self">
						<dl class="navM1">							
								<dt>健康教育</dt>
						</dl>
					</a>
					<a href="hzyd.do?name='lcyjzw' target="_self">
						<dl class="navM1">
								<dt>临床研究招募</dt>							
						</dl>
					</a>
					
					
					
					<a href="hzyd.do?name='kpzs'" target="_self">
						<dl class="navM1">
								<dt>科普知识</dt>	
						</dl>
					</a>
					<a href="hzyd.do?name='tnbxly'" target="_self">
						<dl class="navM1">
								<dt>糖尿病青少年夏令营</dt>	
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
							当前位置：患者园地&nbsp;&gt;&nbsp; <span>健康教育</span>
						</div>
					</div>
					<div class="col_news_head1" frag="面板11">
						<ul class="col_metas clearfix" frag="窗口11"
							portletmode="simpleColumnAttri">

							<li class="col_title">
								<h2>健康教育</h2>
							</li>
							

						</ul>
					</div>
					<div class="col_news_con" frag="面板6">
						<div class="col_news_list" frag="窗口6" portletmode="simpleList">

							<div class="wp_single wp_column_article" id="wp_column_article">
								<div class="wp_entry">
									<div id="wb_nr" style="font-size:16px">
										<p style="  line-height:2; color:black;font-size:16px;">
											<!-- 健康教育表格 -->
											<table>
												<h2 align="center">2015年糖尿病教育大课堂</h2>
												<tbody>
													<tr>
													   <td colspan="6">地点：南京鼓楼医院门诊五楼糖尿病中心会议室（从二楼钢琴厅乘医用南电梯至五楼）</td>
													</tr>
													<tr>
														<td colspan="6">时间：15:00-16:00 &nbsp; &nbsp;&nbsp;联系电话：025-83106666-61430（53459）</td>
													</tr>
													
													<tr>
														<th>时间</th> <th colspan="3">讲课内容</th> <th>讲课人员</th> <th>备注</th>
													</tr>
													
													<tr>
														<td>2015-4-16</td> <td colspan="3">体验式患者教育Maping模式课堂（血糖监测模块）</td> <td>张宁、陆熠</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-4-23</td> <td colspan="3">体验式患者教育Maping模式课堂（饮食体验模块）</td> <td>王静、张宁</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-4-30</td> <td colspan="3">体验式患者教育Maping模式课堂（运动体验模块）</td> <td>张学慧、陆熠</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-5-07</td> <td colspan="3">体验式患者教育Maping模式课堂（胰岛素注射模块）</td> <td>张宁、张学慧</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-5-14</td> <td colspan="3">体验式教育分享交流会</td> <td>冯文焕、张宁</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-5-21</td> <td colspan="3">体验式患者教育Maping模式课堂（血糖监测模块）</td> <td>张宁、陆熠</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-5-28</td> <td colspan="3">体验式患者教育Maping模式课堂（饮食体验模块）</td> <td>王静、张宁</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-6-11</td> <td colspan="3">体验式患者教育Maping模式课堂（运动体验模块）</td> <td>张学慧、陆熠</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-6-25</td> <td colspan="3">体验式患者教育Maping模式课堂（药物治疗模块）</td> <td>冯文焕、计成</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-7-09</td> <td colspan="3">体验式教育分享交流会</td> <td>冯文焕、张宁</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-7-23</td> <td colspan="3">争分夺秒 — 糖尿病急性并发症应对策略</td> <td>毕  艳</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-8-06</td> <td colspan="3">避免截肢，保护好您的双脚</td> <td>沈莉莉</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-8-20</td> <td colspan="3">糖尿病与骨质疏松</td> <td>黄  洪</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-9-03</td> <td colspan="3">糖尿病饮食，您吃对了吗？</td> <td>王  静</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-9-17</td> <td colspan="3">糖尿病最危险的并发症 ——心脑血管疾病</td> <td>程艳冬</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-10-15</td> <td colspan="3">糖尿病患者需要控制血脂吗？（糖尿病患者的血脂管理）</td> <td>陈  炜</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-10-29</td> <td colspan="3">揭开低血糖面纱</td> <td>李  平</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-11-12</td> <td colspan="3">哪种降糖药最好？（口服降糖药的选择）</td> <td>计  成</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-11-26</td> <td colspan="3">化验单您会看吗？（定期检查）</td> <td>沈山梅</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-12-10</td> <td colspan="3">如何保持一双明亮的眼睛——糖尿病与视网膜病变</td> <td>冯文焕</td> <td>备注</td>
													</tr>
													
													<tr>
														<td>2015-12-24</td> <td colspan="3">糖友大联谊</td> <td>冯文焕、张宁</td> <td>备注</td>
													</tr>
													
													<tr>
													   <td colspan="6">凡参加满10次以上糖尿病教育课堂活动的患者，赠送精美礼品一份，并免费眼底检查一次。</td>
													</tr>
													
													<tr>
													   <td colspan="6">所有参加糖尿病教育课堂活动的患者，每次免费血糖及血压监测。</td>
													</tr>
													
												</tbody>
												
											</table>
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
