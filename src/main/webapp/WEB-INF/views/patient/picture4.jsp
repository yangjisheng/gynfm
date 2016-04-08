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

<!-- 图片展示模块引用 -->
<link type="text/css" rel="stylesheet" href="resources/cssgalleryview.css" />
<script type="text/javascript" src="resources/js/jquery-1.4.min.js"></script>
<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="resources/js/jquery.galleryview-1.1.js"></script>
<script type="text/javascript" src="resources/js/jquery.timers-1.1.2.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#photos').galleryView({
			panel_width: 680,
			panel_height: 300,
			frame_width: 100,
			frame_height: 100
		});
	});
</script>
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
							当前位置：患者园地&nbsp;&gt;&nbsp; <span>糖尿青少年病夏令营</span>
						</div>
					</div>
					<div class="col_news_head1" frag="面板11">
						<ul class="col_metas clearfix" frag="窗口11"
							portletmode="simpleColumnAttri">

							<li class="col_title">
								<h2>糖尿病青少年夏令营</h2>
							</li>
							

						</ul>
					</div>
					<div class="col_news_con" frag="面板6">
						<div class="col_news_list" frag="窗口6" portletmode="simpleList">

							<div class="wp_single wp_column_article" id="wp_column_article">
								<div class="wp_entry">
									<div id="wb_nr" style="font-size:16px">
									
									<!-- 图片展示 -->
									<div>
									<h1 align="center">与食俱进，健康饮食-互动课堂</h1>
									<div id="photos" class="galleryview">
										  <div class="panel">
										     <img  src="resources/images/img4/与食俱进 (1).JPG" /> 
										    
										  </div>
										  
										  <div class="panel">
										     <img src="resources/images/img4/与食俱进 (2).JPG" /> 
										   
										  </div>
										  
										  <ul class="filmstrip">
										    <li><img height="100px" width="100px" src="resources/images/img4/与食俱进 (1).JPG"/></li>
										    <li><img height="100px" width="100px" src="resources/images/img4/与食俱进 (2).JPG"/></li>
										    
										    
										  </ul>
										</div>
										
										<center>
										<script type='text/javascript'> 
												cpro_client='lanrennet2010_cpr';
												cpro_at='text'; 
												cpro_161=4; 
												cpro_flush=4; 
												cpro_w=960; 
												cpro_h=90; 
												cpro_template='text_default_960_90'; 
												cpro_cbd='#86AC5F'; 
												cpro_cbg='#242E37'; 
												cpro_ctitle='#6CA7C7'; 
												cpro_cdesc='#cfe0ee'; 
												cpro_curl='#008000'; 
												cpro_cflush='#ff7b0e'; 
												cpro_uap=1;
												cpro_cad=1;
										</script>
										<script language='JavaScript' type='text/javascript' src='http://cpro.baidu.com/cpro/ui/cp.js'></script>
										</center>
										<div id="tj" style="display:none;"><script src="http://s9.cnzz.com/stat.php?id=1015985&web_id=1015985" language="JavaScript" charset="gb2312"></script></div>
									
									<!--  图片展示-->	
									</div>
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
