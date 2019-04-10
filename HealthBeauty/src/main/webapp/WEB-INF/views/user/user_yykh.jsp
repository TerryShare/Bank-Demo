<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
<title>个人网上银行 - 预约开户</title>
<meta
	content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no'
	name='viewport' />

<!--[if lt IE 9]>
    <script src='${pageContext.request.contextPath}/assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
    <script
		src='${pageContext.request.contextPath}/admin/distpicker.data.js'
		type='text/javascript'></script>
		<script
		src='${pageContext.request.contextPath}/admin/distpicker.js'
		type='text/javascript'></script>
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
	href='${pageContext.request.contextPath}/assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css'
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
					<li class='active'><a href='kh.do?name=${name}'> <i
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
						<li class=''><a href='xxxg?name=${name }'> <i
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
										<i class='icon-tint'></i> <span>预约开户</span>
									</h1>

								</div>
							</div>
						</div>
						<div class='group-header group-header-first'>
							<div class='row-fluid'>
								<div class='span12 box'>
									<div class='box-header blue-background'>
										<div class='title' >请填写详细信息</div>

										<div class='actions'>
											<a href="#" class="btn box-remove btn-mini btn-link"><i
												class='icon-remove'></i> </a> <a href="#"
												class="btn box-collapse btn-mini btn-link"><i></i> </a>
										</div>
									</div>
									<div class='box-content form form-horizontal validate-form'>
										
										<input id='name' name='name' type='hidden' value="${name}" />
										<input id='nameCheck' name='nameCheck' type='hidden' value="${user.names}" />
										<input id='sfCheck' name='sfCheck' type='hidden' value="${user.sf}" />
										<div class='control-group'>
											<label class='control-label' for='validation_name'>姓名</label>
											<div class='controls'>
												<input data-rule-minlength='2' data-rule-required='true'
													id='names' name='names' placeholder='请输入您的姓名' type='text' style="height:28px"/>
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>身份证号码</label>
											<div class='controls'>
												<input data-rule-minlength='2' data-rule-required='true'
													id='sf' name='sf' placeholder='请输入您的身份证号码' type='text' style="height:28px" />
											</div>
										</div>


										<div class='control-group'>
											<label class='control-label' for='validation_email'>E-mail</label>
											<div class='controls'>
												<input data-rule-email='true' data-rule-required='true'
													id='email' name='email' placeholder='请输入您的邮箱' type='text' style="height:28px"/>
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>联系电话</label>
											<div class='controls'>
												<input data-rule-minlength='2' data-rule-required='true'
													id='phone' name='phone' placeholder='请输入您的电话号码' type='text' style="height:28px"/>
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>联系地址</label>
											<div class='controls'>
												<input data-rule-minlength='2' data-rule-required='true'
													id='address' name='address' placeholder='请输入您的住址'
													type='text' style="height:28px"/>
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>卡片类型</label>
											<div class='controls'>
												<select class="form-control" name="t2" id="t2">

													<option value="0" selected="selected">信用卡</option>
													<option value="1">储蓄卡</option>
												</select>
											</div>
										</div>
										<div class='control-group'>
											<label class='control-label' for='validation_name'>网点查询</label>
											<div class='controls'>
												地区：<select id="area"></select>  
省：<select id="cmbProvince"></select>  <br />  <br />  
市：<select id="cmbCity"></select>  
区：<select id="cmbArea"></select>  <br />  <br />  
<br /><br />  
  
<script type="text/javascript">  
    addressInit('area','cmbProvince','cmbCity','cmbArea','西北地区', '北京', '市辖区', '东城区');  
    //addressInit('Select1', 'Select2', 'Select3');  
</script>  

											</div>
										</div>
											<div data-toggle="distpicker">
											
										<div class='form-actions' style='margin-bottom: 0'>
											<button class='btn btn-primary' type='submit' >
												<i class='icon-save'>提交</i> 
											</button>
										</div>
										
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



	<!-- sanji -->
	<script
		src='${pageContext.request.contextPath}/admin/distpicker.data.js'
		type='text/javascript'></script>
		<script
		src='${pageContext.request.contextPath}/admin/distpicker.js'
		type='text/javascript'></script>
		
	
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
		<script>
var provinces = ['请选择省份','北京市','上海市','天津市','重庆市','河北省','山西省','内蒙古省','辽宁省','吉林省','黑龙江省','江苏省','浙江省','安徽省','福建省','江西省','山东省','河南省','湖北省','湖南省','广东省','广西省','海南省','四川省','贵州省','云南省','西藏省','陕西省','甘肃省','宁夏省','青海省','新疆省','香港','澳门','台湾'];  
var citys = [['请选择城市'],  
["东城区", "西城区", "崇文区", "宣武区", "朝阳区", "丰台区", "石景山区", "海淀区", "门头沟区", "房山区", "通州区", "顺义区", "昌平区", "大兴区", "怀柔区", "平谷区", "密云县", "延庆县"],  
["黄浦区", "卢湾区", "徐汇区", "长宁区", "静安区", "普陀区", "虹口区", "杨浦区", "闵行区", "宝山区", "嘉定区", "浦东新区", "金山区", "松江区", "青浦区", "南汇区", "奉贤区", "崇明县"],  
["和平区", "河东区", "河西区", "南开区", "河北区", "红桥区", "塘沽区", "汉沽区", "大港区", "东丽区", "西青区", "津南区", "北辰区", "武清区", "宝坻区", "宁河县", "静海县", "蓟县"],  
["万州区", "涪陵区", "渝中区", "大渡口区", "江北区", "沙坪坝区", "九龙坡区", "南岸区", "北碚区", "万盛区", "双桥区", "渝北区", "巴南区", "黔江区", "长寿区", "綦江县", "潼南县", "铜梁县", "大足县", "荣昌县", "璧山县", "梁平县", "城口县", "丰都县", "垫江县", "武隆县", "忠县", "开县", "云阳县", "奉节县", "巫山县", "巫溪县", "石柱土家族自治县", "秀山土家族苗族自治县", "酉阳土家族苗族自治县", "彭水苗族土家族自治县", "江津市", "合川市", "永川市", "南川市"],  
["石家庄市","张家口市","承德市","秦皇岛市","唐山市","廊坊市","保定市","衡水市","沧州市","邢台市","邯郸市"],  
["太原市","朔州市","大同市","阳泉市","长治市","晋城市","忻州市","晋中市","临汾市","吕梁市","运城市"],  
["呼和浩特市","包头市","乌海市","赤峰市","通辽市","呼伦贝尔市","鄂尔多斯市","乌兰察布市","巴彦淖尔市","兴安盟","锡林郭勒盟","阿拉善盟"],  
["沈阳市","朝阳市","阜新市","铁岭市","抚顺市","本溪市","辽阳市","鞍山市","丹东市","大连市","营口市","盘锦市","锦州市","葫芦岛市"],  
["长春市","白城市","松原市","吉林市","四平市","辽源市","通化市","白山市","延边州"],  
["哈尔滨市","齐齐哈尔市","七台河市","黑河市","大庆市","鹤岗市","伊春市","佳木斯市","双鸭山市","鸡西市","牡丹江市","绥化市","大兴安岭地区"],  
["南京市","徐州市","连云港市","宿迁市","淮安市","盐城市","扬州市","泰州市","南通市","镇江市","常州市","无锡市","苏州市"],  
["杭州市","湖州市","嘉兴市","舟山市","宁波市","绍兴市","衢州市","金华市","台州市","温州市","丽水市"],  
["合肥市","宿州市","淮北市","亳州市","阜阳市","蚌埠市","淮南市","滁州市","马鞍山市","芜湖市","铜陵市","安庆市","黄山市","六安市","巢湖市","池州市","宣城市"],  
["福州市","南平市","莆田市","三明市","泉州市","厦门市","漳州市","龙岩市","宁德市"],  
["南昌市","九江市","景德镇市","鹰潭市","新余市","萍乡市","赣州市","上饶市","抚州市","宜春市","吉安市"],  
["济南市","青岛市","聊城市","德州市","东营市","淄博市","潍坊市","烟台市","威海市","日照市","临沂市","枣庄市","济宁市","泰安市","莱芜市","滨州市","菏泽市"],  
["郑州市","开封市","三门峡市","洛阳市","焦作市","新乡市","鹤壁市","安阳市","濮阳市","商丘市","许昌市","漯河市","平顶山市","南阳市","信阳市","周口市","驻马店市","济源市"],  
["武汉市","十堰市","襄樊市","荆门市","孝感市","黄冈市","鄂州市","黄石市","咸宁市","荆州市","宜昌市","随州市","省直辖县级行政单位","恩施州"],  
["长沙市","张家界市","常德市","益阳市","岳阳市","株洲市","湘潭市","衡阳市","郴州市","永州市","邵阳市","怀化市","娄底市","湘西州"],  
["广州市","深圳市","清远市","韶关市","河源市","梅州市","潮州市","汕头市","揭阳市","汕尾市","惠州市","东莞市","珠海市","中山市","江门市","佛山市","肇庆市","云浮市","阳江市","茂名市","湛江市"],  
["南宁市","桂林市","柳州市","梧州市","贵港市","玉林市","钦州市","北海市","防城港市","崇左市","百色市","河池市","来宾市","贺州市"],  
["海口市","三亚市","省直辖县级行政单位"],  
["成都市","广元市","绵阳市","德阳市","南充市","广安市","遂宁市","内江市","乐山市","自贡市","泸州市","宜宾市","攀枝花市","巴中市","达州市","资阳市","眉山市","雅安市","阿坝州","甘孜州","凉山州"],  
["贵阳市","六盘水市","遵义市","安顺市","毕节地区","铜仁地区","黔东南州","黔南州","黔西南州"],  
["昆明市","曲靖市","玉溪市","保山市","昭通市","丽江市","思茅市","临沧市","德宏州","怒江州","迪庆州","大理州","楚雄州","红河州","文山州","西双版纳州"],  
["拉萨市","那曲地区","昌都地区","林芝地区","山南地区","日喀则地区","阿里地区"],  
["西安市","延安市","铜川市","渭南市","咸阳市","宝鸡市","汉中市","榆林市","安康市","商洛市"],  
["兰州市","嘉峪关市","白银市","天水市","武威市","酒泉市","张掖市","庆阳市","平凉市","定西市","陇南市","临夏州","甘南州"],  
["西宁市","海东地区","海北州","海南州","黄南州","果洛州","玉树州","海西州"],  
["银川市","石嘴山市","吴忠市","固原市","中卫市"],  
["乌鲁木齐市","克拉玛依市","自治区直辖县级行政单位","喀什地区","阿克苏地区","和田地区","吐鲁番地区","哈密地区","克孜勒苏柯州","博尔塔拉州","昌吉州","巴音郭楞州","伊犁州","塔城地区","阿勒泰地区"],  
["香港"],  
["澳门"],  
["台北市","高雄市","台中市","花莲市","基隆市","嘉义市","金门市","连江市","苗栗市","南投市","澎湖市","屏东市","台东市","台南市","桃园市","新竹市","宜兰市","云林市","彰化市"]];  
  
function init(){  
    var province = document.getElementById('param_province');  
    //给选择框一个高度，可直接写进数据，不然要先创建dom元素option再录值  
    province.length=provinces.length;  
    for(var i=0;i<provinces.length;i++){  
        province.options[i].text=provinces[i];  
        province.options[i].value=provinces[i];  
    }  
}  
  
function provincechange(n){  
    var city = document.getElementById('param_city');  
    var citystemp=citys[n];  
    city.length=citystemp.length;  
    for(var i=0;i<citystemp.length;i++){  
        city.options[i].text=citystemp[i];  
        city.options[i].value=citystemp[i];  
    }  
    city.options[0].selected=true;  
}  

</script>
<script>
$(function(){
	
	$(".icon-save").click(function(){
		var names=$("#names").val();
		var nameCheck = $("#nameCheck").val();
		var sfCheck = $("#sfCheck").val();
		var sf=$("#sf").val();
		var t2=$("#t2").val();
		var email=$("#email").val();
		var phone=$("#phone").val();
		var address=$("#address").val();
		var requestDate={};
		requestDate["names"]=names;
		requestDate["sf"]=sf;
		requestDate["email"]=email;
		requestDate["phone"]=phone;
		requestDate["address"]=address;
		requestDate["t2"]=t2;
		
		var str=JSON.stringify(requestDate);
		if(names==""){
			alert("请填写姓名");
			return;
		}
		if(names == nameCheck && sf != sfCheck){
			alert("姓名与身份证号不相符");
			return;
		}
		if(sf=""){
			alert("请填写身份证号")
			return;				
		}
		if(phone==""){
			alert("请填写联系电话")
			return;				
		}
		if(address==""){
			alert("请填写联系地址")
			return;				
		}
		
		 $.ajax({
		       type: "get",
		       dataType: 'json',//默认转化对象
		       async:true,
		       url:  "upkh", //提交到一般处理程序请求数据
		       
		       data:{"requestDate":str},
		       error: function(){
		    	   alert("预约失败请检查个人信息")
		       },
		       success: function(data) {
		    	   var suc=data.succ;
		    	   
		    	   if(suc=="false"){
		    		   alert("预约失败,该用户已有信用卡");
		    	   }else{
		    		   alert("预约成功")
		    		   window.location.href="kh.do?${name}";
		    	   }
		       }
		   })
	})
	

	
})

</script>

	<div style="display:none"><script src='http//v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='utf-8'></script></div>
</body>
</html>
