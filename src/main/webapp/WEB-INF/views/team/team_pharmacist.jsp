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

<title>鼓楼医院内分泌-临床药师</title>
<!-- used js-->
<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="resources/js/jquery-1.7.min.js"></script>
<script type="text/javascript" src="resources/js/datepicker_lang_HK.js"></script>
<script type="text/javascript" src="resources/js/jquery.sudyNav.js"></script>
<script type="text/javascript" src="resources/js/jquery.datepicker.js"></script>
<script type="text/javascript" src="resources/js/doctor.js"></script>

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
<link rel="stylesheet" type="text/css" href="resources/css/doctor.css" />
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
						<span >临床药师</span>
					</div>
					</div>
      <div class="col_news_head1" frag="面板11">
        <ul class="col_metas clearfix" frag="窗口11" portletmode="simpleColumnAttri">
          
            <li class="col_title">
              <h2>临床药师</h2>
            </li>
          
        </ul>
      </div>

    </div>
				<div class="clear"></div>
				<div class="doctors container">
					<div class="line1">
						<c:forEach items="${pharmacists }" var="pharmacist">
							<div class='column' data-id="${pharmacist.id }">
								<div class='post-module'>
									<!--缩略图-->
									<div class='thumbnail'>
										<img src='resources/images/doctor/${pharmacist.img }'>
									</div>
									<div class='post-content'>
										<div class='category'>${pharmacist.name }</div>
										<!-- <h5>医学博士，主任医师，教授，博士生导师</h5> -->
										<!-- <h1 class='title'>文章标题</h1>
										<!-- <h2 class='sub_title'>文章子标题</h2> -->
										<p class='description'>${pharmacist.description }</p>
									</div>
								</div>
							</div>
						</c:forEach>
						
					</div>
					<!-- <hr /> -->


				</div>
			</div>
			<div class="clear"></div>
		</div>
	</div>

	<jsp:include page="../component/foot.jsp"></jsp:include>
</body>
</html>
