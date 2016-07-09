<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<link href="css/bootstrap-combined.min.css" rel="stylesheet"
	media="screen">

<script type="text/javascript" src="js/common/jquery-2.0.0.min.js"></script>
<script type="text/javascript" src="js/common/bootstrap.min.js"></script>
</head>

<body style="background-color:#F8F8F8">
	 <!--iframe导航页面中跳转加上 target="_parent"，使父页面刷新-->
	<% if (session.getAttribute("users") == null) { %>
	<iframe id="header_nav" src="nav_model/header_nav.jsp" width="100%"
		height="120px" style="border: 0px;" scrolling="no"></iframe>
	<% } else { %>
	<iframe id="header_nav" src="nav_model/header_nav_after.jsp" width="100%"
		height="120px" style="border: 0px;" scrolling="no"></iframe>
	<% }%>
	<div class="container-fluid" 
		style="margin-top:20px; margin-bottom: 50px;">
		<div class="row-fluid">
			<div class="span3">
				<div align="center">
					<img alt="100x100" src=${session.users.UHeader } class="img-circle"
						style="width: 100px;height: 100px" />
					<p class="dl-horizontal" style="margin-top:20px">
						<span><strong>
							 <c:out value="${session.users.UName } " ></c:out> 
						</strong></span>
					</p>
				</div>
				<div class="list-group" style="margin-top:40px">
					<a class="list-group-item active" href="cc!LoadInfo">个人中心</a>
					<div class="list-group-item">
						<a href="cc!LoadInfo">首页</a>
					</div>
					<div class="list-group-item">
						<a href="cc!LoadInfo">账户设置</a>
					</div>
					<div class="list-group-item">
						<a href="cc!LoadInfo">消息</a>
					</div>
				</div>
				<div class="list-group">
					<a class="list-group-item active" href="cb!LoadBillInfo">交易中心</a>
					<div class="list-group-item">
						<a href="cb!LoadBillInfo">我买入的新房</a>
					</div>
					<div class="list-group-item">
						<a href="cb!LoadBillInfo">我买入的二手房</a>
					</div>
					<div class="list-group-item">
						<a href="cb!LoadBillInfo">我租到的房屋</a>
					</div>
					<div class="list-group-item">
						<a href="cb!LoadBillInfo">我卖出的二手房</a>
					</div>
					<div class="list-group-item">
						<a href="cb!LoadBillInfo">我租出的房屋</a>
					</div>
				</div>
				<div class="list-group">
					<a class="list-group-item active" href="cf!LoadFollowInfo">关注中心</a>
					<div class="list-group-item">
						<a href="cf!LoadFollowInfo">我关注的新楼盘</a>
					</div>
					<div class="list-group-item">
						<a href="cf!LoadFollowInfo">我关注的二手房</a>
					</div>
					<div class="list-group-item">
						<a href="cf!LoadFollowInfo">我关注的出租房</a>
					</div>
				</div>
				<div class="list-group">
					<a class="list-group-item active" href="ch!LoadHouseStateInfo">我发布的房屋</a>
					<div class="list-group-item">
						<a href="ch!LoadHouseStateInfo">二手房</a>
					</div>
					<div class="list-group-item">
						<a href="ch!LoadHouseStateInfo">出租房</a>
					</div>
				</div>
			</div>
			<div class="span9">
				<div class="tabbable" id="tabs-397399">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#panel-561578" data-toggle="tab">我买入的新房</a></li>
						<li><a href="#panel-432671" data-toggle="tab">我买入的二手房</a></li>
						<li><a href="#panel-432672" data-toggle="tab">我租过的房屋</a></li>
						<li><a href="#panel-432673" data-toggle="tab">我卖出的二手房</a></li>
						<li><a href="#panel-432674" data-toggle="tab">我租出的房屋</a></li>
					</ul>
					<div class="tab-content">
						<div class="tab-pane active" id="panel-561578">
							<div>
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>买入</span> <br /> <span><strong>卖家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>卖出</span> <br /> <span><strong>买家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租出</span> <br /> <span><strong>房客：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租入</span> <br /> <span><strong>房东：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>5000元／月</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>买入</span> <br /> <span><strong>卖家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div class="pagination" align="right">
								<ul>
									<li><a href="#">上一页</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">下一页</a></li>
								</ul>
							</div>
						</div>
						<div class="tab-pane" id="panel-432671">
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>买入</span> <br /> <span><strong>卖家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>买入</span> <br /> <span><strong>卖家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>买入</span> <br /> <span><strong>卖家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>买入</span> <br /> <span><strong>卖家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>5000元／月</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>买入</span> <br /> <span><strong>卖家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div class="pagination" align="right">
								<ul>
									<li><a href="#">上一页</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">下一页</a></li>
								</ul>
							</div>
						</div>
						<div class="tab-pane" id="panel-432672">
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>卖出</span> <br /> <span><strong>买家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>卖出</span> <br /> <span><strong>买家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>卖出</span> <br /> <span><strong>买家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>卖出</span> <br /> <span><strong>买家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>5000元／月</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>卖出</span> <br /> <span><strong>买家：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div class="pagination" align="right">
								<ul>
									<li><a href="#">上一页</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">下一页</a></li>
								</ul>
							</div>
						</div>
						<div class="tab-pane" id="panel-432673">
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租入</span> <br /> <span><strong>房东：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租入</span> <br /> <span><strong>房东：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租入</span> <br /> <span><strong>房东：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租入</span> <br /> <span><strong>房东：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>5000元／月</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租入</span> <br /> <span><strong>房东：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div class="pagination" align="right">
								<ul>
									<li><a href="#">上一页</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">下一页</a></li>
								</ul>
							</div>
						</div>
						<div class="tab-pane" id="panel-432674">
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租出</span> <br /> <span><strong>房客：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租出</span> <br /> <span><strong>房客：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租出</span> <br /> <span><strong>房客：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租出</span> <br /> <span><strong>房客：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>5000元／月</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div>
								<span><strong>订单号：</strong></span> <span>1234567890</span> <br />
								<span><strong>日期：</strong></span> <span>2016年6月22日</span> <br />
								<span><strong>状态：</strong></span> <span>租出</span> <br /> <span><strong>房客：</strong></span>
								<span>狗逼鑫</span> <br /> <span><strong>成交价格：</strong></span> <span>1000000元</span>
								<br />
							</div>

							<div class="row-fluid">
								<div class="span12">
									<div class="row-fluid" style="background-color: #ECF5FF">
										<div class="span2">
											<img alt="100*100" src="images/house_thumbs/gbx.jpg"
												style="width: 100px;height: 100px" />
										</div>
										<div class="span10">
											房屋名：啊啊啊感动撒 <br /> 价格：5000元/月 <br /> 地区：发生地方撒点 <br />
											房屋简介：aaadfadfasdfasfadsfdsafffaafa <br />
										</div>
									</div>
								</div>
							</div>
							<HR style="border:1 dashed #987cb9" width="100%" color=blue
								SIZE=1></HR>
							<div class="pagination" align="right">
								<ul>
									<li><a href="#">上一页</a></li>
									<li><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#">4</a></li>
									<li><a href="#">5</a></li>
									<li><a href="#">下一页</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--底部导航-->
	 <iframe src="nav_model/footer_nav.html" width="100%" height="325px"
		style="border: 0px;" scrolling="no"></iframe>
</body>

</html>