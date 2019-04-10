<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>网上银行后台系统</title>
<link href="${pageContext.request.contextPath}/admin/bootstrap.css"
	rel="stylesheet" />
<link href="${pageContext.request.contextPath}/admin/base.css"
	rel="stylesheet" />
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/fenye.js"></script>
</head>
<body style="min-height: 800px; height: auto" onLoad="goPage(1,2);">
	<div class="container-fluid">

		<nav class="navbar navbar-default row no-yj  navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#nav-list-left"
						aria-expanded="false">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">网上银行管理系统</a>
				</div>
				<!-- 头部左侧 -->
				<div class="collapse navbar-collapse pull-right"
					id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">


						<li><a class="dropdown-toggle" data-toggle="dropdown"
							href="#" style="height: 50px"> <span
								class="pull-left nav-username">管理员</span></a>

							<ul class="dropdown-menu dropdown-menu-right clearfix"
								style="padding-top: 0px">
								<li class="user-li-head"><span>
										<p></p>

										<p class="text-center">
											<small><span>欢迎登陆</span></small>
										</p></li>
								<li style="padding: 10px 20px; padding-bottom: 20px">

									<div class="" style="padding: 20px 40px; padding-bottom: 10px">
										<a href="tzlogin" class="btn btn-default btn-flat no-yj">注销</a>
									</div>
								</li>
							</ul></li>
					</ul>


				</div>



			</div>
		</nav>


		<div class="row" style="margin-top: 70px">
			<div class="  nav-left col-md-2 no-padding" id="nav-list-left">
				<div class="">
					<img src="${pageContext.request.contextPath}/admin/user/demos.jpg"
						class="" />
				</div>

				<div class="nav-list">
					<ul>
						<li><a href="tzindex">用户管理</a></li>
						<li><a href="tzsh">卡片审核</a></li>
						<li><a href="tzkp">卡片管理</a></li>
						<li><a href="tzzd">账单管理</a></li>
					</ul>
				</div>
			</div>

			<div class="main-right  col-md-10 col-md-offset-2">
				
				<div class="col-md-12">
					<div class="panel panel-default">
						<div class="panel-heading">用户列表</div>
						
						<div class="panel-body">
						<form action="tzindex">
                                <div class="input-group">
                                    <input id="names" name="names" type="text" class="form-control" placeholder="Search for..." />
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="submit">Go!</button>
                                       
                                    </span>
                                </div>
                                </form>
							<table class="table">
							
								<thead>
									<tr>
											<td>序号</td>
										<td>用户名</td>
										<td>密码</td>
										<td>真实姓名</td>
										<td>身份证号码</td>
										<td>电话</td>
										<td>联系地址</td>
										<td>注册时间</td>
										<td class="text-center">操作</td>
									</tr>
								</thead>
								<tbody id="list">
									<c:forEach items="${list}" var="list" varStatus="num">
										<tr>
											<td id="id">${list.id}</td>
											<td id="name">${list.name}</td>
											<td id="password">${list.password}</td>
											<td id="names">${list.names}</td>
											<td id="sf">${list.sf}</td>
											<td id="phone">${list.phone}</td>
											<td id="address">${list.address}</td>
											<td id="time">${list.time}</td>
											<td><a href="scyh.do?id=${list.id}" class="btn_a">删除</a></td>
											

										</tr>
									</c:forEach>
								</tbody>

							</table>
							
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
	<script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<script>
		$(document)
				.ready(
						function() {
							$(".dropdownMenu").dropdown();
							$(".nav-left-dropdown>a")
									.click(
											function() {

												if ($(this).attr("d") != 1
														&& $(this).attr("d") != undefined) {
													$(this)
															.removeClass(
																	"nav-left-dropdown-a");
													$this = $(this);
													$(this)
															.next("ul")
															.slideUp(
																	300,
																	function() {
																		$this
																				.removeClass("nav-left-bottrom-border");
																		$this
																				.removeClass("nav-left-dropdown-ul")
																	});

													$(this).attr("d", "1");

												} else {
													$(this)
															.addClass(
																	"nav-left-dropdown-a");
													$(this)
															.addClass(
																	"nav-left-bottrom-border");
													$(this)
															.next("ul")
															.addClass(
																	"nav-left-dropdown-ul")
															.slideDown(300);
													$(this).attr("d", "2");

												}

											})
						});
	</script>
</body>
</html>

