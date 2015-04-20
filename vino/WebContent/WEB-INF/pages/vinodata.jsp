<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<!DOCTYPE HTML PUBdtC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<title>维诺科技有限公司</title>
<head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">
</head>
<style>
body {
	margin: 0;
	font: 13px/2 Arial, Tahoma, "宋体";
	padding: 0;
}

.top {
	height: 30px;
	width: 100%;
	background-color: #E0E0E0;
	border-bottom: 1px solid #b4c3cd;
}

.body_box {
	height: 100%;
	width: 900px;
	margin-left: auto;
	margin-right: auto;
	background-color: #97CBFF;
}

.user_info {
	margin-left: auto;
	margin-right: auto;
	width: 900px;
	dtne-height: 30px
}

dt {
	float: left;
	font-weight: bold;
}
dt{
	display: block;
	overflow: hidden;
}
.property_info{
	float:left;
	text-align:left;
	width: 445px;
}
.company_info{
	float:left;
	height: 30px;
	text-align: center;
	line-height: 30px;
	font-weight:bold;
	font-size:15px;
}
.company_name{
	color: #0066FF;
	font-weight: bold;
}
</style>

<body>
	<div class='top'>
		<div class='user_info'>用户名：</div>
	</div>
	<div class='body_box'>
		<div class='query_box'
			style="height: 150px; width: 100%; background-color: #D2E9FF; border: 1px solid #b4c3cd;">
			<dl style='clear: both; overflow: hidden;'>
				<dt>意向度 ：</dt>
					<dd>
					<a href="#">大于80%</a> <a href="#">80%-40%</a> <a href="#">小于40%</a>
					</dd>
				<dt>区域 ：</dt>
					<dd>
						<a href="#">于洪区</a> <a href="#">铁西区</a> <a href="#">和平区</a>
					</dd>
				<dt>类别 ：</dt>
					<dd>
						<a href="#">写字楼</a> <a href="#">商务中心</a> <a href="#">商住公寓</a>
					</dd>
				<dt>规模 ：</dt>
					<dd>
						<a href="#">于洪区</a> <a href="#">铁西区</a> <a href="#">和平区</a>
					</dd>
				<dt>价格 ：</dt>
			</dl>
		</div>

		<div style="width: 100%; background-color: #FFFFFF; min-height: 100px; border: 1px solid #b4c3cd;">
			<div style="text-align: left;background-color: #FF8040">写字楼</div>
				<div class='property_info'  >楼盘名称 : 市府恒隆广场</div>
				<div class='property_info'>地段 : 青年大街附近 或 市府恒隆广场 </div>
				<div class='property_info'>区域： 沈河 一经  </div>
				<div class='property_info'>类别：写字楼 （可注册公司）</div>
				<div class='property_info'>面积：3200㎡</div>
				<div class='property_info'>平均租金：2.19元/㎡/天 </div>
			<div style="clear: both;text-align:left;background-color: #FF8040">入住企业信息</div>
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #000033">
				<div class="company_info" style="width:30%">公司名称</div>
				<div class="company_info" style="width:17%">公司规模</div>
				<div class="company_info" style="width:20%">公司性质</div>
				<div class="company_info" style="width:20%">公司行业</div>
				<div class="company_info" style="width:10%">意向度</div>
				<div class="company_info" style="width:3%"></div>
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳邦惠投资咨询有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >股份制企业</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >计算机软件</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >70%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">辽宁方与圆影视传媒有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20人以下</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >媒体/出版/影视/文化传播</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >70%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳航嘉广告传媒有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >IT服务(系统/数据/维护)</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >54%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳中砼软件工程有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >计算机软件</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >52%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳云网科技有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >100-499人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >互联网/电子商务</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >40%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			<div style="clear: both;"></div>
			
			
			<div style="text-align: left;background-color: #FF8040">写字楼</div>
				<div class='property_info'  >楼盘名称 : 市府恒隆广场</div>
				<div class='property_info'>地段 : 青年大街附近 或 市府恒隆广场 </div>
				<div class='property_info'>区域： 沈河 一经  </div>
				<div class='property_info'>类别：写字楼 （可注册公司）</div>
				<div class='property_info'>面积：3200㎡</div>
				<div class='property_info'>平均租金：2.19元/㎡/天 </div>
			<div style="clear: both;text-align:left;background-color: #FF8040">入住企业信息</div>
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #000033">
				<div class="company_info" style="width:30%">公司名称</div>
				<div class="company_info" style="width:17%">公司规模</div>
				<div class="company_info" style="width:20%">公司性质</div>
				<div class="company_info" style="width:20%">公司行业</div>
				<div class="company_info" style="width:10%">意向度</div>
				<div class="company_info" style="width:3%"></div>
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳邦惠投资咨询有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >股份制企业</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >计算机软件</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >70%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">辽宁方与圆影视传媒有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20人以下</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >媒体/出版/影视/文化传播</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >70%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳航嘉广告传媒有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >IT服务(系统/数据/维护)</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >54%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳中砼软件工程有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >计算机软件</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >52%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			
			<div style="float: left;height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳云网科技有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >100-499人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >互联网/电子商务</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >40%</div>
				<img alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
			</div>
			<div style="clear: both;"></div>
			
			
		</div>
	</div>
</body>
</html>