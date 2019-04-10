<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<title>个人网上银行 - 个人信息</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport' />

<!--[if lt IE 9]>
    <script src='${pageContext.request.contextPath}/assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/bootstrap/bootstrap.css'
	media='all' rel='stylesheet' type='text/css' />
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/bootstrap/bootstrap-responsive.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery ui -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css'
	media='all' rel='stylesheet' type='text/css' />
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / switch buttons -->
<link
	href='${pageContext.request.contextPath}/${pageContext.request.contextPath}/assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / xeditable -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/xeditable/bootstrap-editable.css'
	media='all' rel='stylesheet' type='text/css' />
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / wysihtml5 (wysywig) -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jquery file upload -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/jquery_fileupload/jquery.fileupload-ui.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / full calendar -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/fullcalendar/fullcalendar.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / select2 -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/select2/select2.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / mention -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/mention/mention.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / tabdrop (responsive tabs) -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/tabdrop/tabdrop.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / jgrowl notifications -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datatables -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/datatables/bootstrap-datatable.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / dynatrees (file trees) -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/dynatree/ui.dynatree.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / color picker -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / datetime picker -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / daterange picker) -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / flags (country flags) -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/flags/flags.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / slider nav (address book) -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/slider_nav/slidernav.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / fuelux (wizard) -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/fuelux/wizard.css'
	media='all' rel='stylesheet' type='text/css' />
<!-- / flatty theme -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/light-theme.css'
	id='color-settings-body-color' media='all' rel='stylesheet'
	type='text/css' />
<!-- / demo -->
<link
	href='${pageContext.request.contextPath}/assets/stylesheets/demo.css'
	media='all' rel='stylesheet' type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body class='contrast-red '>
	<style type="text/css">
table {
	border-collapse: collapse;
	border: solid 1px #ccc;
	width: 600px;
}

td {
	border: solid 1px #ccc;
	font-size: 12px;
	height: 30px;
	padding-left: 10px;
}

input {
	font-size: 12px;
	width: 500px;
	height: 23px;
	border: none;
}

textarea {
	width: 98%;
	height: 200px;
	border: none;
}

.main {
	margin: 0 auto;
	width: 600px;
}

.d {
	background-color: #066;
	color: #fff;
	border: none;
	width: 200px;
	height: 30px;
	cursor: pointer;
}

.over {
	background-color: #f60;
	color: #fff;
	border: none;
	width: 200px;
	height: 30px;
	cursor: pointer;
}
</style>
	<header>
		<div class='navbar'>
			<div class='navbar-inner'>
				<div class='container-fluid'>
					<a class='brand' href='index.html'> <i class='icon-heart-empty'></i>
						<span class='hidden-phone'>个人网上银行系统</span>
					</a> <a class='toggle-nav btn pull-left' href='#'> <i
						class='icon-reorder'></i>
					</a>
					<ul class='nav pull-right'>
						<li class='dropdown light only-icon'><a
							class='dropdown-toggle' data-toggle='dropdown' href='#'> <i
								class='icon-adjust'></i>
						</a>
							<ul class='dropdown-menu color-settings'>
								<li class='color-settings-body-color'>
									<div class='color-title'>Body color</div> <a
									data-change-to='${pageContext.request.contextPath}/assets/stylesheets/light-theme.css'
									href='#'> Light <small>(default)</small>
								</a> <a
									data-change-to='${pageContext.request.contextPath}/assets/stylesheets/dark-theme.css'
									href='#'> Dark </a> <a
									data-change-to='${pageContext.request.contextPath}/assets/stylesheets/dark-blue-theme.css'
									href='#'> Dark blue </a>
								</li>
								<li class='divider'></li>
								<li class='color-settings-contrast-color'>
									<div class='color-title'>Contrast color</div> <a href="#"
									data-change-to="contrast-red"><i
										class='icon-adjust text-red'></i> Red <small>(default)</small>
								</a> <a href="#" data-change-to="contrast-blue"><i
										class='icon-adjust text-blue'></i> Blue </a> <a href="#"
									data-change-to="contrast-orange"><i
										class='icon-adjust text-orange'></i> Orange </a> <a href="#"
									data-change-to="contrast-purple"><i
										class='icon-adjust text-purple'></i> Purple </a> <a href="#"
									data-change-to="contrast-green"><i
										class='icon-adjust text-green'></i> Green </a> <a href="#"
									data-change-to="contrast-muted"><i
										class='icon-adjust text-muted'></i> Muted </a> <a href="#"
									data-change-to="contrast-fb"><i class='icon-adjust text-fb'></i>
										Facebook </a> <a href="#" data-change-to="contrast-dark"><i
										class='icon-adjust text-dark'></i> Dark </a> <a href="#"
									data-change-to="contrast-pink"><i
										class='icon-adjust text-pink'></i> Pink </a> <a href="#"
									data-change-to="contrast-grass-green"><i
										class='icon-adjust text-grass-green'></i> Grass green </a> <a
									href="#" data-change-to="contrast-sea-blue"><i
										class='icon-adjust text-sea-blue'></i> Sea blue </a> <a href="#"
									data-change-to="contrast-banana"><i
										class='icon-adjust text-banana'></i> Banana </a> <a href="#"
									data-change-to="contrast-dark-orange"><i
										class='icon-adjust text-dark-orange'></i> Dark orange </a> <a
									href="#" data-change-to="contrast-brown"><i
										class='icon-adjust text-brown'></i> Brown </a>
								</li>
							</ul></li>

						    <li class='dropdown dark user-menu'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <span class='user-name hidden-phone'>${name }</span>
                            <b class='caret'></b>
                        </a>
                        <ul class='dropdown-menu'>
                            <li>
                                <a href='exit'>
                                    <i class='icon-signout'></i>
                                    退出系统
                                </a>
                            </li>
                        </ul>
                    </li>
					</ul>

				</div>
			</div>
		</div>
	</header>
	<div id='wrapper'>
		<div id='main-nav-bg'></div>
		<nav class='' id='main-nav'>
			<div class='navigation'>
				<div class='search'>
					<form accept-charset="UTF-8" action="search_results.html"
						method="get" />
					<div style="margin: 0; padding: 0; display: inline">
						<input name="utf8" type="hidden" value="&#x2713;" />
					</div>
					<div class='search-wrapper'>
						<input autocomplete="off" class="search-query" id="q" name="q"
							placeholder="Search..." type="text" value="" />
						<button class="btn btn-link icon-search" name="button"
							type="submit"></button>
					</div>
					</form>
				</div>
				<ul class='nav nav-stacked'>
					<li class=''><a href='sy'> <i class='icon-dashboard'></i>
							<span>首页</span>
					</a></li>
					<li class=''></li>
					<li class=''><a href='kh.do?name=${name}'> <i
							class='icon-tint'></i> <span>预约开户</span>
					</a></li>
					<li class=''><a href='khxx?name=${name }'> <i
									class='icon-search'></i> <span>开户信息管理</span>
							</a></li>
					<li class=''><a href='payFor?name=${name }'> <i
									class='icon-search'></i> <span>投资理财</span>
							</a></li>
					<li class=''><a href='tzkp?name=${name}'> <i
							class='icon-star'></i> <span>卡片管理</span>
					</a></li>
					<li class=''><a href='zhye?name=${name }'> <i
							class='icon-bar-chart'></i> <span>账户余额</span>
					</a></li>
					<li class=''><a href='cz?name=${name }'> <i
							class='icon-mail-reply'></i> <span>账户充值</span>
					</a></li>
					<li class=''><a href='sj?name=${name }'> <i
							class='icon-mail-reply'></i> <span>手机缴费</span>
					</a></li>
					<li class=''><a href='zz?name=${name }'> <i
							class='icon-mail-reply'></i> <span>在线转账</span>
					</a></li>
						<li class='active'><a href='xxxg?name=${name }'> <i
							class='icon-pencil'></i> <span>个人信息修改</span>
					</a></li>
					<li class=''><a href='sf'> <i class='icon-table'></i> <span>收费标准</span>
					</a></li>
					
					</ul>
					
			</div>
		</nav>
		<section id='content'>
			<div class='container-fluid'>
				<div class='row-fluid' id='content-wrapper'>
					<div class='span12'>
						<div class='row-fluid'>
							<div class='span12'>
								<div class='page-header'>
									<h1 class='pull-left'>
										<i class='icon-pencil'></i> <span>个人信息管理</span>
									</h1>

								</div>
							</div>
						</div>
						<div class='group-header group-header-first'>
							<div class='row-fluid'>
								<div class='span12 box'>
									<div class='box-header blue-background'>
										<div class='title'>请您输入需要修改的信息</div>

										<div class='actions'>
											<a href="#" class="btn box-remove btn-mini btn-link"><i
												class='icon-remove'></i> </a> <a href="#"
												class="btn box-collapse btn-mini btn-link"><i></i> </a>
										</div>
									</div>
									<ul class="nav nav-tabs" id="myTab">
									<li class="active"><a href="#debit" data-toggle="tab">个人信息修改</a></li>
									<li><a href="#credit" data-toggle="tab">登录密码修改</a></li>
									</ul>
									 <div class='tab-content'>
									<div class=' tab-pane active' id='debit'>
									<div class='box-content'>
										<form action='upxx?id=${list.id}'
											class='form form-horizontal validate-form'
											style='margin-bottom: 0;' />
										<input id='id' name='id' type='hidden' value="${list.id}" />
										<div class='control-group'>
											<label class='control-label' for='validation_name'>姓名</label>
											<div class='controls'>
												<label id='names'  data-rule-minlength='2' data-rule-required='true'>${list.names}</label>
												
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>登录账号</label>
											<div class='controls'>
												<label id='name'  data-rule-minlength='2' data-rule-required='true'>${list.name}</label>
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_date'>出生日期</label>
											<div class='controls'>
												<input data-mask='9999-99-99' data-rule-dateiso='true'
													data-rule-required='true' id='birthday' name='birthday'
													placeholder='YYYY-MM-DD' type='text'
													value="${list.birthday}" />
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>身份证号码</label>
											<div class='controls'>
												<input data-rule-minlength='2' data-rule-required='true'
													id='sf' name='sf' placeholder='请输入您的身份证号码' type='text'
													value="${list.sf}" />
											</div>
										</div>


										<div class='control-group'>
											<label class='control-label' for='validation_email'>E-mail</label>
											<div class='controls'>
												<input data-rule-email='true' data-rule-required='true'
													id='email' name='email' placeholder='请输入您的邮箱' type='text'
													value="${list.email}" />
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>联系电话</label>
											<div class='controls'>
												<input data-rule-minlength='2' data-rule-required='true'
													id='phone' name='phone' placeholder='请输入您的电话号码' type='text'
													value="${list.phone}" />
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>联系地址</label>
											<div class='controls'>
												<input data-rule-minlength='2' data-rule-required='true'
													id='address' name='address' placeholder='请输入您的住址'
													type='text' value="${list.address}" />
											</div>
										</div>

										<div class='form-actions' style='margin-bottom: 0'>
											<button class='btn btn-primary' onclick="myFunction()"
												type='submit'>
												<i class='icon-save'></i> 修改
											</button>
										</div>
										</form>
									</div>
									</div>
								
									<div class=' tab-pane' id='credit'>
									<div class='box-content'>
										<form action='uppw?id=${list.id}'
											class='form form-horizontal validate-form'
											style='margin-bottom: 0;' />
										
										<input id='id' name='id' type='hidden' value="${list.id}" />
										<div class='control-group'>
											<label class='control-label' for='validation_name'>登录账号</label>
											<div class='controls'>
												<label data-rule-minlength='2' data-rule-required='true'
													id='name' >${list.name}</label>
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>密码</label>
											<div class='controls'>
												<input data-rule-minlength='2' data-rule-required='true'
													id='password' name='password' placeholder='请输入您的密码'
													type='password' value="${list.password}" />
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>身份证号码</label>
											<div class='controls'>
												<label data-rule-minlength='2' data-rule-required='true'
													id='sf' >${list.sf}</label>
											</div>
										</div>
										<div class='form-actions' style='margin-bottom: 0'>
											<button class='btn btn-primary' onclick="myFunction()"
												type='submit'>
												<i class='icon-save'></i> 修改
											</button>
										</div>
										</form>
									</div>
									</div>
								</div>

							</div>

						</div>


					</div>
				</div>
			</div>
		
	</section>
	</div>
	<script>
		function myFunction() {
			alert("修改成功,请重新登录!");
		}
	</script>
	<!-- / jquery -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/jquery/jquery.min.js'
		type='text/javascript'></script>
	<!-- / jquery mobile events (for touch and slide) -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js'
		type='text/javascript'></script>
	<!-- / jquery migrate (for compatibility with new jquery) -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/jquery/jquery-migrate.min.js'
		type='text/javascript'></script>
	<!-- / jquery ui -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/jquery_ui/jquery-ui.min.js'
		type='text/javascript'></script>
	<!-- / bootstrap -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/bootstrap/bootstrap.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/flot/excanvas.js'
		type='text/javascript'></script>
	<!-- / sparklines -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/sparklines/jquery.sparkline.min.js'
		type='text/javascript'></script>
	<!-- / flot charts -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/flot/flot.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/flot/flot.resize.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/flot/flot.pie.js'
		type='text/javascript'></script>
	<!-- / bootstrap switch -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js'
		type='text/javascript'></script>
	<!-- / fullcalendar -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fullcalendar/fullcalendar.min.js'
		type='text/javascript'></script>
	<!-- / datatables -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/datatables/jquery.dataTables.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js'
		type='text/javascript'></script>
	<!-- / wysihtml5 -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/common/wysihtml5.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/common/bootstrap-wysihtml5.js'
		type='text/javascript'></script>
	<!-- / select2 -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/select2/select2.js'
		type='text/javascript'></script>
	<!-- / color picker -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js'
		type='text/javascript'></script>
	<!-- / mention -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/mention/mention.min.js'
		type='text/javascript'></script>
	<!-- / input mask -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js'
		type='text/javascript'></script>
	<!-- / fileinput -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileinput/bootstrap-fileinput.js'
		type='text/javascript'></script>
	<!-- / modernizr -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/modernizr/modernizr.min.js'
		type='text/javascript'></script>
	<!-- / retina -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/retina/retina.js'
		type='text/javascript'></script>
	<!-- / fileupload -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/tmpl.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/load-image.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/canvas-to-blob.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.iframe-transport.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.fileupload.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.fileupload-fp.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.fileupload-ui.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.fileupload-init.js'
		type='text/javascript'></script>
	<!-- / timeago -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/timeago/jquery.timeago.js'
		type='text/javascript'></script>
	<!-- / slimscroll -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/slimscroll/jquery.slimscroll.min.js'
		type='text/javascript'></script>
	<!-- / autosize (for textareas) -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/autosize/jquery.autosize-min.js'
		type='text/javascript'></script>
	<!-- / charCount -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/charCount/charCount.js'
		type='text/javascript'></script>
	<!-- / validate -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/validate/jquery.validate.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/validate/additional-methods.js'
		type='text/javascript'></script>
	<!-- / naked password -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js'
		type='text/javascript'></script>
	<!-- / nestable -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/nestable/jquery.nestable.js'
		type='text/javascript'></script>
	<!-- / tabdrop -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js'
		type='text/javascript'></script>
	<!-- / jgrowl -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js'
		type='text/javascript'></script>
	<!-- / bootbox -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootbox/bootbox.min.js'
		type='text/javascript'></script>
	<!-- / inplace editing -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/xeditable/bootstrap-editable.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/xeditable/wysihtml5.js'
		type='text/javascript'></script>
	<!-- / ckeditor -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/ckeditor/ckeditor.js'
		type='text/javascript'></script>
	<!-- / filetrees -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/dynatree/jquery.dynatree.min.js'
		type='text/javascript'></script>
	<!-- / datetime picker -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js'
		type='text/javascript'></script>
	<!-- / daterange picker -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_daterangepicker/moment.min.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js'
		type='text/javascript'></script>
	<!-- / max length -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js'
		type='text/javascript'></script>
	<!-- / dropdown hover -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js'
		type='text/javascript'></script>
	<!-- / slider nav (address book) -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/slider_nav/slidernav-min.js'
		type='text/javascript'></script>
	<!-- / fuelux -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/plugins/fuelux/wizard.js'
		type='text/javascript'></script>
	<!-- / flatty theme -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/nav.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/tables.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/theme.js'
		type='text/javascript'></script>
	<!-- / demo -->
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/demo/jquery.mockjax.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/demo/inplace_editing.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/demo/charts.js'
		type='text/javascript'></script>
	<script
		src='${pageContext.request.contextPath}/assets/javascripts/demo/demo.js'
		type='text/javascript'></script>
	<div style="display: none">
		<script src='http//v7.cnzz.com/stat.php?id=155540&web_id=155540'
			language='JavaScript' charset='utf-8'></script>
	</div>
</body>
</html>
