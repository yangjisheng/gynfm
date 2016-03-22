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

<title>鼓楼医院内分泌-专家门诊</title>
<!-- used js-->
<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-1.7.min.js"></script>
<script type="text/javascript" src="resources/js/datepicker_lang_HK.js"></script>
<script type="text/javascript" src="resources/js/jquery.sudyNav.js"></script>
<script type="text/javascript" src="resources/js/jquery.datepicker.js"></script>
<script type="text/javascript" src="resources/js/jquery.sudy.wp.visitcount.js"></script>
<script type="text/javascript" src="resources/js/picbase2.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<!--used css -->

<link rel="stylesheet" href="resources/css/style.css" type="text/css" media="all" />
<link rel="stylesheet" type="text/css" href="resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="resources/css/b2c_pub.css" />
<link rel="stylesheet" type="text/css" href="resources/css/b2c.tip.css" />
<link rel="stylesheet" type="text/css" href="resources/css/default.css" />
<link rel="stylesheet" type="text/css" href="resources/css/simplenews.css" />

<link rel="stylesheet" type="text/css" href="resources/css/team_expert.css" />
</head>

<body>

	<!-- 头部 -->
	<jsp:include page="../component/head.jsp"></jsp:include>

	<!-- 内容区域 -->
	<div class="wrapper" id="container">
		<div class="inner">
							<div class="toppicture">		<img alt="img2"
				src="resources/images/toppicture2.jpg"></div>
				<div class="mod mod3" >
							<div class="navtitle2"></div>
		<!--左侧栏开始-->
		<script>
		$(document).ready(function() {
			$(".mainProNav dl dt").mouseover(function() {
				$(".mainProNav dl").removeClass("dlHover");
				$(this).parent().addClass("dlHover");
			})
			$(".mainProNav").hover(function() {
				$(this).addClass("mainProNavHover");
			},function() {
				$(this).removeClass("mainProNavHover");
				$(".mainProNav dl").removeClass("dlHover");
			})
		});
		</script>
			<div class="mainProNav">
				<dl class="navM1">
					<dt><a href="team_doctor.do"  target="_self">医生</a></dt>
				</dl>
				<dl class="navM2">
					<dt><a href="team_pharmacist.do"  target="_self">临床药师</a></dt>
				</dl>
				<dl class="navM3">
					<dt><a href="team_dietitian.do"  target="_self">临床营养师</a></dt>
				</dl>
				<dl class="navM4">
					<dt><a href="team_expert.do"  target="_self">专家门诊</a></dt>
				</dl>
			<div class="leftb">		<img alt="img1"
				src="resources/images/leftb.jpg"></div>
			</div>

							<div class="clear"></div>
	</div>
			<div class="mod mod2" >
    <div class="col_news">
				<div class="r_dh">
					<div class="r_dh_bt">
						当前位置：医疗团队&nbsp;&gt;&nbsp;
						<span >专家门诊</span>
					</div>
					</div>
      <div class="col_news_head1" frag="面板11">
        <ul class="col_metas clearfix" frag="窗口11" portletmode="simpleColumnAttri">
          
            <li class="col_title">
              <h2>专家门诊</h2>
            </li>
          
        </ul>
      </div>

    </div>
				<div class="clear"></div>
				<div id="content "style="margin-top:20px;">
				<h1 style="text-align: center;">南京大学医学院附属鼓楼医院内分泌科专家门诊一览表</h1>
				<table class="table table-bordered" >
				<thead>
					<tr style="background-color: #7E92CD;">
						
						<th style="width:10%">专家</th>
						<th style="width:40%">职称</th>
						<th style="width:12%">专家门诊时间</th>
						<th style="width:38%">专家门诊地点</th>
					</tr>
				</thead>
				<!-- <tfoot>
					<tr>
						
						<th>专家名称</th>
						<th>职称</th>
						<th>专家门诊时间</th>
						<th>专家门诊地点</th>
					</tr>
				</tfoot> -->
				<tbody>
					<tr class="info"><td class="name">朱大龙</td><td class="zc">内分泌科主任、主任医师、教授,享受国务院特殊津贴</td><td class="time">周二上午</td><td class="location">门诊五楼著名专家会诊中心</td></tr>
					<tr><td class="name" rowspan="2">田成功</td><td class="zc" rowspan="2">主任医师、教授 ，享受国务院特殊津贴</td><td class="time">周一下午</td><td class="location">干部保健中心门诊</td></tr>
																																			<tr><td class="time">周四上午</td><td class="location">门诊五楼著名专家会诊中心</td></tr>
					<tr class="info"><td class="name">周鹏</td><td class="zc">主任医师、副教授</td><td class="time">周五全天</td><td class="location" rowspan="13">门诊三楼四区内分泌专科门诊</td></tr>
					<tr><td class="name" rowspan="2">沈山梅</td><td class="zc" rowspan="2">主任医师、教授</td><td class="time">周二上午</td></tr>
																			<tr><td class="time">周四下午</td><!-- <td class="location">门诊三楼四区内分泌专科门诊</td> --></tr>
					
					<tr class="info"><td class="name" rowspan="3">周士海</td><td class="zc" rowspan="3">副主任医师、副教授</td><td class="time">周一上午</td><!-- <td class="location" rowspan="2">门诊三楼四区内分泌专科门诊</td> --></tr>
																										<tr class="info"><td class="time">周四上午</td></tr>
																										<tr class="info"><td class="time">周五全天</td></tr>
					<tr><td class="name" rowspan="2">冯文焕</td><td class="zc" rowspan="2">副主任医师 、副教授</td><td class="time">周三上午</td></tr>
																				<tr><td class="time">周五上午</td></tr>
					<tr class="info"><td class="name">黄洪</td><td class="zc">副主任医师、副教授</td><td class="time">周三全天</td></tr>
					<tr ><td class="name">毕艳</td><td class="zc">副主任医师 、副教授</td><td class="time">周四全天</td></tr>
					<tr class="info"><td class="name">李丽蓉</td><td class="zc">副主任医师 、副教授</td><td class="time">周二全天</td></tr>
					<tr ><td class="name">童国玉</td><td class="zc">副主任医师、副教授</td><td class="time">周一全天</td></tr>
					<tr class="info"><td class="name">李平</td><td class="zc">副主任医师、副教授</td><td class="time">周一全天</td></tr>
				</tbody>
			</table>
				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>

	<jsp:include page="../component/foot.jsp"></jsp:include>
	
</body>
</html>
