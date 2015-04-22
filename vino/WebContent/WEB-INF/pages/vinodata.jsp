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
<script src="js/jquery.min.js"></script>
<style>
body {
	margin: 0;
	font: 13px/2 Arial, Tahoma, "宋体";
	padding: 0;
}
.top {
	height: 25px;
	width: 100%;
	background-color: #F0F0F0;
	border-bottom: 1px solid #b4c3cd;
}

.body_box {
	width: 900px;
	margin-left: auto;
	margin-right: auto;
	background-color: #FCFCFC;
	margin-top: 2px;
}

.user_info {
	margin-left: auto;
	margin-right: auto;
	width: 900px;
	dtne-height: 30px
}
dl{
	margin-left: 10px;
}

dt{
	float: left;
	font-weight: bold;
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
	font-size:14px;
}

.company_detail_title{
	color:#FFFFFF;
	float:left;
	height: 25px;
	text-align: center;
	line-height: 25px;
	font-weight:bold;
	font-size:12px;
}
.company_detail{
	float:left;
	height: 25px;
	text-align: center;
	line-height: 25px;
	font-size:12px;
}
.company_name{
	color: #0066FF;
	//font-weight: bold;
}
a{
	margin-left: 5px;
	margin-right: 5px;
}
.openCo{
	margin-top: 7px;
	height: 20px;
	width: 20px
}
</style>
<script type="text/javascript">
$(window).load(function() {
	$('.openCo').click(function(){
		console.log($(this).parent().html());
		
		var isShow = $(this).parent().parent().parent().find('.isShow').val();
		if(isShow == '0'){
			$(this).parent().find('.openCo').attr('src','img/close.png');
			$(this).parent().parent().parent().find('.zpxx').show(100);
			$(this).parent().parent().parent().find('.isShow').val('1');
		}else{
			$(this).parent().find('.openCo').attr('src','img/open.png');
			$(this).parent().parent().parent().find('.zpxx').hide(100);
			$(this).parent().parent().parent().find('.isShow').val('0');
		}
		
	})
});
</script>
<body>
	<div class='top'>
		<div class='user_info'>用户名：<s:property value="#session.user.userName" /></div>
		
	</div>
	<div class='body_box'>
		<div class='query_box'
			style="height: 150px; width: 100%; background-color: #FCFCFC; border: 1px solid #b4c3cd;">
			<dl style='clear: both; overflow: hidden;'>
				<dt>意向度 :</dt>
					<dd>
						<a href="#">全部</a><a href="#">大于80%</a> <a href="#">80%-40%</a> <a href="#">小于40%</a>
					</dd>
				<dt>区&nbsp;&nbsp;&nbsp;域 :</dt>
					<dd>
						<a href="#">全部</a><a href="#">于洪区</a> <a href="#">铁西区</a> <a href="#">和平区</a>
					</dd>
				<dt>类&nbsp;&nbsp;&nbsp;别 :</dt>
					<dd>
						<a href="#">全部</a><a href="#">写字楼</a> <a href="#">商务中心</a> <a href="#">商住公寓</a>
					</dd>
				<dt>规&nbsp;&nbsp;&nbsp;模 :</dt>
					<dd>
						<a href="#">全部</a><a href="#">于洪区</a> <a href="#">铁西区</a> <a href="#">和平区</a>
					</dd>
				<dt>价&nbsp;&nbsp;&nbsp;格 :</dt>
			</dl>
		</div>
		
		<s:iterator value="list" status="sts">
			<div style="margin-top:2px;width: 100%; background-color: #FFFFFF; min-height: 100px;border-bottom: 1px solid #b4c3cd;margin-bottom: 10px "><!-- border: 1px solid #b4c3cd; -->
				<div style="text-align:center;border-bottom: 2px solid #2894FF">
					<div  style="background-color: #2894FF;width: 90px;color: white;font-weight: bold;border-radius: 8px 8px 0px 0px;margin-left: 5px">
						<span>写字楼</span>
					</div>
				</div>
					<div class='property_info'  >楼盘名称 : <a href="#"><s:property value="proName"/></a></div>
					<div class='property_info'>地段 : <s:property value="section"/> </div>
					<div class='property_info'>区域： <s:property value="regional"/> </div>
					<div class='property_info'>类别：<s:property value="measureArea"/></div>
					<div class='property_info'>面积：<s:property value="measureArea"/>㎡</div>
					<div class='property_info'>平均租金：<s:property value="rent"/>元/㎡/天 </div>
				<div style="clear: both;text-align:center;background-color: #FFFFFF;border-bottom: 1px solid #84C1FF;margin-top: 5px">
					<div  style="background-color: #84C1FF;width: 90px;color: white;font-weight: bold;margin-left: 20px;border-radius: 8px 8px 0px 0px;">
						<span>入住企业信息</span>
					</div>
				</div>
				<div style="float: left;height: 30px;width: 100%;border-bottom: 2px solid #d0d0d0;line-height: 30px">
					<div class="company_info" style="width:20%">公司名称</div>
					<div class="company_info" style="width:7%">公司规模</div>
					<div class="company_info" style="width:10%">公司性质</div>
					<div class="company_info" style="width:20%">公司行业</div>
					<div class="company_info" style="width:10%">注册资本</div>
					<div class="company_info" style="width:10%">承租预算</div>
					<div class="company_info" style="width:10%">联系方式</div>
					<div class="company_info" style="width:10%">意向度</div>
					<div class="company_info" style="width:3%"></div>
				</div>
				
				<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle;">
					<div>
						<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳邦惠投资咨询有限公司</a></div>
						<div style="float:left;width: 7%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >股份制企业</div>
						<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >计算机软件</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >10万元人民币</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >1.3元</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >135674674668</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >70%</div>
						<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
							<img class="openCo" alt="展开招聘信息" src='img/open.png'>
						</div>
					</div>
					<div class="zpxx" style="clear: both;width: 100%;border-bottom: 2px solid #ECF5FF;display:none">
						<input class='isShow' type="hidden" value = '0'/>
						<div style="float: left;height: 25px;width: 100%;border-bottom: 1px solid #ECF5FF ;background-color: #84C1FF">
							<div class="company_detail_title" style="width:30%">招聘信息</div>
							<div class="company_detail_title" style="width:30%">招聘职位</div>
							<div class="company_detail_title" style="width:20%">招聘人数</div>
							<div class="company_detail_title" style="width:20%">发布日期</div>
						</div>
						
						<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
							<div class="company_detail" style="width:30%">程序员实习生</div>
							<div class="company_detail" style="width:30%">全职招聘</div>
							<div class="company_detail" style="width:20%">4人</div>
							<div class="company_detail" style="width:20%">2015-04-21</div>
						</div>
						<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
							<div class="company_detail" style="width:30%">需求分析师</div>
							<div class="company_detail" style="width:30%">全职招聘</div>
							<div class="company_detail" style="width:20%">5人</div>
							<div class="company_detail" style="width:20%">2015-03-13</div>
						</div>
						<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
							<div class="company_detail" style="width:30%">高级软件工程师</div>
							<div class="company_detail" style="width:30%">全职招聘</div>
							<div class="company_detail" style="width:20%">2人</div>
							<div class="company_detail" style="width:20%">2014-12-01</div>
						</div>
					</div>
				
				</div>
				<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
					<div>
						<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">辽宁方与圆影视传媒有限公司</a></div>
						<div style="float:left;width: 7%;height: 30px;text-align: center;line-height: 30px" >20人以下</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >民营</div>
						<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >媒体/出版/影视/文化传播</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >10万元人民币</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >1.3元</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >135674674668</div>
						<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >70%</div>
						<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
							<img class="openCo" alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
						</div>
					</div>
				<div class="zpxx" style="clear: both;width: 100%;border-bottom: 2px solid #ECF5FF;display:none">
						<input class='isShow' type="hidden" value = '0'/>
						<div style="float: left;height: 25px;width: 100%;border-bottom: 1px solid #ECF5FF ;background-color: #84C1FF">
							<div class="company_detail_title" style="width:30%">招聘信息</div>
							<div class="company_detail_title" style="width:30%">招聘职位</div>
							<div class="company_detail_title" style="width:20%">招聘人数</div>
							<div class="company_detail_title" style="width:20%">发布日期</div>
						</div>
						
						<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
							<div class="company_detail" style="width:30%">程序员实习生</div>
							<div class="company_detail" style="width:30%">全职招聘</div>
							<div class="company_detail" style="width:20%">4人</div>
							<div class="company_detail" style="width:20%">2015-04-21</div>
						</div>
						<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
							<div class="company_detail" style="width:30%">需求分析师</div>
							<div class="company_detail" style="width:30%">全职招聘</div>
							<div class="company_detail" style="width:20%">5人</div>
							<div class="company_detail" style="width:20%">2015-03-13</div>
						</div>
						<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
							<div class="company_detail" style="width:30%">高级软件工程师</div>
							<div class="company_detail" style="width:30%">全职招聘</div>
							<div class="company_detail" style="width:20%">2人</div>
							<div class="company_detail" style="width:20%">2014-12-01</div>
						</div>
					</div>
				</div>
				<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳航嘉广告传媒有限公司</a></div>
					<div style="float:left;width: 7%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >民营</div>
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >IT服务(系统/数据/维护)</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >10万元人民币</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >1.3元</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >135674674668</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >54%</div>
					<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
							<img class="openCo" alt="展开招聘信息" src='img/open.png'>
						</div>
				</div>
				
				<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳中砼软件工程有限公司</a></div>
					<div style="float:left;width: 7%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >民营</div>
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >计算机软件</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >10万元人民币</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >1.3元</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >135674674668</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >52%</div>
					<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
							<img class="openCo" alt="展开招聘信息" src='img/open.png'>
						</div>
				</div>
				
				<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳云网科技有限公司</a></div>
					<div style="float:left;width: 7%;height: 30px;text-align: center;line-height: 30px" >100-499人</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >民营</div>
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >互联网/电子商务</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >10万元人民币</div>		
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >1.3元</div>	
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >135674674668</div>		
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >40%</div>
					<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
							<img class="openCo" alt="展开招聘信息" src='img/open.png'>
						</div>
				</div>
				<div style="clear: both;"></div>
			</div>
		</s:iterator>
		<!--  
		
		<div style="margin-top:2px;width: 100%; background-color: #FFFFFF; min-height: 100px;border-bottom: 1px solid #b4c3cd;margin-bottom: 10px ">
			<div style="text-align:center;border-bottom: 2px solid #2894FF">
				<div  style="background-color: #2894FF;width: 90px;color: white;font-weight: bold;border-radius: 8px 8px 0px 0px;margin-left: 5px">
					<span>写字楼</span>
				</div>
			</div>
				<div class='property_info'  >楼盘名称 : <a href="#">市府恒隆广场</a></div>
				<div class='property_info'>地段 : 青年大街附近 或 市府恒隆广场 </div>
				<div class='property_info'>区域： 沈河 一经  </div>
				<div class='property_info'>类别：写字楼 （可注册公司）</div>
				<div class='property_info'>面积：3200㎡</div>
				<div class='property_info'>平均租金：2.19元/㎡/天 </div>
			<div style="clear: both;text-align:center;background-color: #FFFFFF;border-bottom: 1px solid #84C1FF;margin-top: 5px">
				<div  style="background-color: #84C1FF;width: 90px;color: white;font-weight: bold;margin-left: 20px;border-radius: 8px 8px 0px 0px;">
					<span>入住企业信息</span>
				</div>
			</div>
			<div style="float: left;height: 30px;width: 100%;border-bottom: 2px solid #d0d0d0;line-height: 30px">
				<div class="company_info" style="width:30%">公司名称</div>
				<div class="company_info" style="width:17%">公司规模</div>
				<div class="company_info" style="width:20%">公司性质</div>
				<div class="company_info" style="width:20%">公司行业</div>
				<div class="company_info" style="width:10%">意向度</div>
				<div class="company_info" style="width:3%"></div>
			</div>
			
			<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle;">
				<div>
					<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳邦惠投资咨询有限公司</a></div>
					<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >股份制企业</div>
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >计算机软件</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >70%</div>
					<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
						<img class="openCo" alt="展开招聘信息" src='img/open.png'>
					</div>
				</div>
				<div class="zpxx" style="clear: both;width: 100%;border-bottom: 2px solid #ECF5FF;display:none">
					<input class='isShow' type="hidden" value = '0'/>
					<div style="float: left;height: 25px;width: 100%;border-bottom: 1px solid #ECF5FF ;background-color: #84C1FF">
						<div class="company_detail_title" style="width:30%">招聘信息</div>
						<div class="company_detail_title" style="width:30%">招聘职位</div>
						<div class="company_detail_title" style="width:20%">招聘人数</div>
						<div class="company_detail_title" style="width:20%">发布日期</div>
					</div>
					
					<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
						<div class="company_detail" style="width:30%">程序员实习生</div>
						<div class="company_detail" style="width:30%">全职招聘</div>
						<div class="company_detail" style="width:20%">4人</div>
						<div class="company_detail" style="width:20%">2015-04-21</div>
					</div>
					<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
						<div class="company_detail" style="width:30%">需求分析师</div>
						<div class="company_detail" style="width:30%">全职招聘</div>
						<div class="company_detail" style="width:20%">5人</div>
						<div class="company_detail" style="width:20%">2015-03-13</div>
					</div>
					<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
						<div class="company_detail" style="width:30%">高级软件工程师</div>
						<div class="company_detail" style="width:30%">全职招聘</div>
						<div class="company_detail" style="width:20%">2人</div>
						<div class="company_detail" style="width:20%">2014-12-01</div>
					</div>
				</div>
			
			</div>
			<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div>
					<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">辽宁方与圆影视传媒有限公司</a></div>
					<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20人以下</div>
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
					<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >媒体/出版/影视/文化传播</div>
					<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >70%</div>
					<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
						<img class="openCo" alt="展开招聘信息" src='img/open.png' style="margin-top: 7px;">
					</div>
				</div>
			<div class="zpxx" style="clear: both;width: 100%;border-bottom: 2px solid #ECF5FF;display:none">
					<input class='isShow' type="hidden" value = '0'/>
					<div style="float: left;height: 25px;width: 100%;border-bottom: 1px solid #ECF5FF ;background-color: #84C1FF">
						<div class="company_detail_title" style="width:30%">招聘信息</div>
						<div class="company_detail_title" style="width:30%">招聘职位</div>
						<div class="company_detail_title" style="width:20%">招聘人数</div>
						<div class="company_detail_title" style="width:20%">发布日期</div>
					</div>
					
					<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
						<div class="company_detail" style="width:30%">程序员实习生</div>
						<div class="company_detail" style="width:30%">全职招聘</div>
						<div class="company_detail" style="width:20%">4人</div>
						<div class="company_detail" style="width:20%">2015-04-21</div>
					</div>
					<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
						<div class="company_detail" style="width:30%">需求分析师</div>
						<div class="company_detail" style="width:30%">全职招聘</div>
						<div class="company_detail" style="width:20%">5人</div>
						<div class="company_detail" style="width:20%">2015-03-13</div>
					</div>
					<div style="float: left;height: 25px;width: 100%;border-bottom: 2px dotted #ECF5FF ;">
						<div class="company_detail" style="width:30%">高级软件工程师</div>
						<div class="company_detail" style="width:30%">全职招聘</div>
						<div class="company_detail" style="width:20%">2人</div>
						<div class="company_detail" style="width:20%">2014-12-01</div>
					</div>
				</div>
			</div>
			<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳航嘉广告传媒有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >IT服务(系统/数据/维护)</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >54%</div>
				<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
						<img class="openCo" alt="展开招聘信息" src='img/open.png'>
					</div>
			</div>
			
			<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳中砼软件工程有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >20-99人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >计算机软件</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >52%</div>
				<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
						<img class="openCo" alt="展开招聘信息" src='img/open.png'>
					</div>
			</div>
			
			<div style="float: left;min-height: 30px;width: 100%;border-bottom: 1px solid #EEEEEE;vertical-align:middle">
				<div style="float:left;width: 30%;height: 30px;text-align: center;line-height: 30px" ><a class='company_name' href="#">沈阳云网科技有限公司</a></div>
				<div style="float:left;width: 17%;height: 30px;text-align: center;line-height: 30px" >100-499人</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >民营</div>
				<div style="float:left;width: 20%;height: 30px;text-align: center;line-height: 30px" >互联网/电子商务</div>
				<div style="float:left;width: 10%;height: 30px;text-align: center;line-height: 30px" >40%</div>
				<div style="float:left;width: 3%;height: 30px;text-align: center;line-height: 30px;cursor: pointer;" >
						<img class="openCo" alt="展开招聘信息" src='img/open.png'>
					</div>
			</div>
			<div style="clear: both;"></div>
		</div>
		-->
		<div style="width: 100%;height: 50px;margin-bottom: 5px;border-top: 2px solid #d0d0d0;text-align: center;">
			Copyright © 2015 维诺信息技术有限公司
			</br>
			辽ICP备05014984号
		</div>
	</div>
</body>
</html>