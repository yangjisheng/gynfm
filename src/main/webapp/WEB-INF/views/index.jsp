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

<title>鼓楼医院内分泌</title>
<!-- used js-->
<script type="text/javascript" src="resources/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="resources/js/datepicker_lang_HK.js"></script>
<script type="text/javascript" src="resources/js/jquery.sudyNav.js"></script>
<script type="text/javascript" src="resources/js/jquery.datepicker.js"></script>
<script type="text/javascript"
	src="resources/js/jquery.sudy.wp.visitcount.js"></script>
<script language="javascript" src="resources/js/picbase2.js"></script>
<!--used css -->
<link rel="stylesheet" href="resources/css/style.css" type="text/css"
	media="all" />
</head>

<body>
	<!-- 头部 -->
	<jsp:include page="component/head.jsp"></jsp:include>
	<!-- 内容区域 -->
	<div class="wrapper" id="container">
		<div class="inner">
			<div class="mod mod1">
				<div class="ml" frag="面板3">
					<div class="ml_m0" frag="面板100">
						<div class="post post-0 mbox" frag="窗口16">
							<div class="tt1"></div>
							<div class="con1">
								<div id="wp_news_w16">

									<ul class="wp_article_list">

										<li class="list_item i1">
											<div class="fields pr_fields">
												<a href="http://www.njglyy.com/jyzn/4.asp" target="_Blank"><img src="resources/images/index/yyzn.jpg"
													style="width:230px" /></a>
											</div>
										</li>
										<li class="list_item i2">
											<div class="fields pr_fields">
												<a href="http://www.njglyy.com/jyzn/4.asp" target="_Blank"><img src="resources/images/index/yygh.jpg"
													style="width:230px;height: inherit;" /></a>
											</div>
										</li>
										<li class="list_item i3">
											<div class="fields pr_fields">
												<a href="http://www.njglyy.com/jyzn/3.asp" target="_Blank"><img src="resources/images/index/jzlc.jpg"
													style="width:230px;height: inherit;" /></a>
											</div>
										</li>
										<li class="list_item i4">
											<div class="fields pr_fields">
												<a href="http://www.njglyy.com/jyzn/1.asp" target="_Blank"><img src="resources/images/index/yybj.jpg"
													style="width:230px;height: inherit;" /></a>
											</div>
										</li>
										<!--
	 <li class="list_item i11"> 
         <div class="fields pr_fields"> 
             <span class='Article_Index'>11</span> 
             <span class='Article_Title'><a href="javascript:if(confirm('http://219.219.114.101/g_server/Tdxlwb/index.aspx  \n\nكτݾϞרԃ Teleport Ultra Ђ՘, ӲΪ ̼ˇһٶԲܲ·޶΢ҿѻʨ׃Ϊ̼քǴʼַ֘քַ֘c  \n\nţЫ՚ؾϱǷʏղߪ̼?'))window.location='http://219.219.114.101/g_server/Tdxlwb/index.aspx'" tppabs="http://219.219.114.101/g_server/Tdxlwb/index.aspx" target='_blank' title='同等学力申请硕士学位报名系统' alt='同等学力申请硕士学位报名系统'>同等学力申请硕士学位报名系统</a></span> 
         </div> 
         <div class="fields ex_fields"> 
              
         </div> 
     </li> 
     -->
									</ul>
								</div>
								<div>
									<!--<a href="javascript:if(confirm('http://114.212.160.5:8002/yjs/  \n\n���ļ��޷��� Teleport Ultra ����, ��Ϊ ����һ�����·���ⲿ������Ϊ�����ʼ��ַ�ĵ�ַ��  \n\n�����ڷ������ϴ���?'))window.location='http://114.212.160.5:8002/yjs/'" tppabs="http://114.212.160.5:8002/yjs/"><img src="images/bsxzdc.jpg" tppabs="http://219.219.115.21/_upload/tpl/00/4d/77/template77/images/bsxzdc.jpg" /></a>-->
								</div>
							</div>
						</div>
					</div>
					<!-- 搜做框
					<div class="ml_m1" frag="面板101">
						<div class="post post-1 mbox" frag="窗口17">
							<div class="con2">
								<form method="POST" action="#" target="_blank"
									onsubmit="if ($('#keyword').val() === '请输入关键字') { $('#keyword').val(''); }">
									<div class="wp_search">
										<table>
											<tr>
												<td height="25px"><input id="keyword" name="keyword"
													style="width: 150px" class="keyword" type="text"
													value="请输入关键字"
													onfocus="if (this.value === '请输入关键字') { this.value = ''; }"
													onblur="if (this.value === '') { this.value = '请输入关键字'; }" />
												</td>
												<td><input name="btnsearch" class="search"
													type="submit" value="" /></td>
											</tr>
										</table>
									</div>
								</form>
							</div>
						</div>
					</div>
					-->
					<!-- 园内站点
					<div class="ml_m2" frag="面板102">
						<div class="post post-2 mbox" frag="窗口18">
							<div class="tt2"></div>
							<div class="con3">
								<select style="width:250px;" onChange="w18_openLink(this)"
									class="w18_openLink">
									<option value="" selected>--院内站点--</option>
									<option value="">————————————</option>
									<option value="http://med.nju.edu.cn/">南京大学医学院</option>
									<option value="science/lcsy1.asp/">鼓楼医院国家药物临床试验机构</option>
									<option value="http://mail.njglyy.com/">鼓楼医院邮箱</option>
									<option value="http://www.njglyy.com/glyyhfb">鼓楼医院廉政网</option>
									<option value="http://11.1.23.118:8090">鼓楼医院图书馆</option>
									<option value="http://www.glyyxyk.com/">鼓楼医院血液科网站</option>
									<option value="http://www.nanjingoncology.com/">鼓楼医院肿瘤网</option>
									<option value="http://www.njglzx.com/">鼓楼医院整形网</option>
									<option value="http://www.jspcc.com/">江苏PCC(子宫颈癌的预防)项目网站</option>
									<option value="http://www.sosscoliosis.com">鼓楼医院脊柱侧弯网</option>
								</select>
								<script language=javascript>
									function w18_openLink(obj) {
										var v = obj.value;
										if (v != "") {
											window.open(v);
											obj.blur();
										}
										obj.selectedIndex = 0;
									}
								</script>
							</div>
						</div>
					</div>
					-->
					<!--  院外站点
					<div class="ml_m3" frag="面板103">
						<div class="post post-3 mbox" frag="窗口19">
							<div class="tt3"></div>
							<div class="con3">
								<select style="width:250px;" onChange="w19_openLink(this)"
									class="w19_openLink">
									<option value="" selected>--院外链接--</option>
									<option value="">————————————</option>
									<option value="http://med.nju.edu.cn/">南京大学医学院</option>
									<option value="science/lcsy1.asp/">鼓楼医院国家药物临床试验机构</option>
									<option value="http://mail.njglyy.com/">鼓楼医院邮箱</option>
									<option value="http://www.njglyy.com/glyyhfb">鼓楼医院廉政网</option>
									<option value="http://11.1.23.118:8090">鼓楼医院图书馆</option>
									<option value="http://www.glyyxyk.com/">鼓楼医院血液科网站</option>
									<option value="http://www.nanjingoncology.com/">鼓楼医院肿瘤网</option>
									<option value="http://www.njglzx.com/">鼓楼医院整形网</option>
									<option value="http://www.jspcc.com/">江苏PCC(子宫颈癌的预防)项目网站</option>
									<option value="http://www.sosscoliosis.com">鼓楼医院脊柱侧弯网</option>
								</select>
								<script language=javascript>
									function w19_openLink(obj) {
										var v = obj.value;
										if (v != "") {
											window.open(v);
											obj.blur();
										}
										obj.selectedIndex = 0;
									}
								</script>
							</div>
						</div>
						<div frag="窗口1">
							<div id="wp_news_w1"></div>
						</div>
					</div>-->
				</div>
			</div>
			<div class="mod mod2">
				<div class="mc" frag="面板4">
					<div class="mc_m0" frag="面板105">
						<div class="post post-4 mbox" frag="窗口4">
							<div class="tt4">
								<h3 class="tit">
									<span class="title" frag="标题">科室快讯</span>
								</h3>
								<div class="more_btn" frag="按钮" type="更多">
									<a href="#" class="w4_more"><span class="more_text"
										frag="按钮内容">MORE</span></a>
								</div>
							</div>
							<div class="con">
								<div id="wp_news_w4">
									<ul class="wp_article_list">
										<c:forEach items="${newsList}" var="news">
											<li class="list_item ">
												<div class="fields pr_fields">
													<span class='Article_Index'></span> <span
														class='Article_Title'><a href="#" target='_blank'
														title='${news.title }' alt='${news.title }'>${news.title }</a></span>
												</div>
												<div class="fields ex_fields">
													<span class='Article_PublishDate'>${news.time }</span>
												</div>
											</li>
										</c:forEach>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="mc_m1" frag="面板106">
						<div class="post post-5 mbox" frag="窗口5">
							<div class="tt5">
								<h3 class="tit">
									<span class="title" frag="标题">科研动态</span>
								</h3>
								<div class="more_btn" frag="按钮" type="更多">
									<a href="#" class="w5_more"><span class="more_text"
										frag="按钮内容">MORE</span></a>
								</div>
							</div>
							<div class="con">
								<div id="wp_news_w5">
									<ul class="wp_article_list">
										<c:forEach items="${researchList}" var="research">
											<li class="list_item ">
												<div class="fields pr_fields">
													<span class='Article_Index'></span> <span
														class='Article_Title'><a href="#" target='_blank'
														title='${research.title }' alt='${research.title }'>${research.title }</a></span>
												</div>
												<div class="fields ex_fields">
													<span class='Article_PublishDate'>${research.time }</span>
												</div>
											</li>
										</c:forEach>
										<!--
     <li class="list_item i5"> 
         <div class="fields pr_fields"> 
             <span class='Article_Index'>5</span> 
             <span class='Article_Title'><a href="#"  target='_blank' title='2015年xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx指南' alt='2015年xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx指南'>2015年xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx指南</a></span> 
         </div> 
         <div class="fields ex_fields"> 
              
             <span class='Article_PublishDate'>2014-11-10</span> 
              
         </div> 
     </li> 
      
     <li class="list_item i6"> 
         <div class="fields pr_fields"> 
             <span class='Article_Index'>6</span> 
             <span class='Article_Title'><a href="#"  target='_blank' title='2015年xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx指南' alt='2015年xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx指南'>2015年xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx指南</a></span> 
         </div> 
         <div class="fields ex_fields"> 
              
             <span class='Article_PublishDate'>2014-11-10</span> 
              
         </div> 
     </li> 
      -->
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="clear"></div>
			</div>
			<div class="clear"></div>
		</div>
		<!-- 图片滚动 -->
		<jsp:include page="component/picSwitch.jsp"></jsp:include>
	</div>
	<jsp:include page="component/foot.jsp"></jsp:include>
</body>
</html>
