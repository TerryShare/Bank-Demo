<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<html>
<head>
    <title>个人网上银行 - 首页</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport' />
    
    <!--[if lt IE 9]>
    <script src='assets/javascripts/html5shiv.js' type='text/javascript'></script>
    <![endif]-->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/bootstrap/bootstrap.css' media='all' rel='stylesheet' type='text/css' />
    <link href='${pageContext.request.contextPath}/assets/stylesheets/bootstrap/bootstrap-responsive.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / jquery ui -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/jquery_ui/jquery-ui-1.10.0.custom.css' media='all' rel='stylesheet' type='text/css' />
    <link href='${pageContext.request.contextPath}/assets/stylesheets/jquery_ui/jquery.ui.1.10.0.ie.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / switch buttons -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/bootstrap_switch/bootstrap-switch.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / xeditable -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/xeditable/bootstrap-editable.css' media='all' rel='stylesheet' type='text/css' />
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / wysihtml5 (wysywig) -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/common/bootstrap-wysihtml5.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / jquery file upload -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/jquery_fileupload/jquery.fileupload-ui.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / full calendar -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/fullcalendar/fullcalendar.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / select2 -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/select2/select2.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / mention -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/mention/mention.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / tabdrop (responsive tabs) -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/tabdrop/tabdrop.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / jgrowl notifications -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/jgrowl/jquery.jgrowl.min.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / datatables -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/datatables/bootstrap-datatable.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / dynatrees (file trees) -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/dynatree/ui.dynatree.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / color picker -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/bootstrap_colorpicker/bootstrap-colorpicker.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / datetime picker -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.min.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / daterange picker) -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / flags (country flags) -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/flags/flags.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / slider nav (address book) -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/slider_nav/slidernav.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / fuelux (wizard) -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/plugins/fuelux/wizard.css' media='all' rel='stylesheet' type='text/css' />
    <!-- / flatty theme -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/light-theme.css' id='color-settings-body-color' media='all' rel='stylesheet' type='text/css' />
    <!-- / demo -->
    <link href='${pageContext.request.contextPath}/assets/stylesheets/demo.css' media='all' rel='stylesheet' type='text/css' />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>
<body class='contrast-red '>
<header>
    <div class='navbar'>
        <div class='navbar-inner'>
            <div class='container-fluid'>
                <a class='brand' href='#'>
                    <i class='icon-heart-empty'></i>
                    <span class='hidden-phone'>个人网上银行系统</span>
                </a>
                <a class='toggle-nav btn pull-left' href='#'>
                    <i class='icon-reorder'></i>
                </a>
                <ul class='nav pull-right'>
                    <li class='dropdown light only-icon'>
                        <a class='dropdown-toggle' data-toggle='dropdown' href='#'>
                            <i class='icon-adjust'></i>
                        </a>
                        <ul class='dropdown-menu color-settings'>
                            <li class='color-settings-body-color'>
                                <div class='color-title'>Body color</div>
                                <a data-change-to='${pageContext.request.contextPath}/assets/stylesheets/light-theme.css' href='#'>
                                    Light
                                    <small>(default)</small>
                                </a>
                                <a data-change-to='${pageContext.request.contextPath}/assets/stylesheets/dark-theme.css' href='#'>
                                    Dark
                                </a>
                                <a data-change-to='${pageContext.request.contextPath}//assets/stylesheets/dark-blue-theme.css' href='#'>
                                    Dark blue
                                </a>
                            </li>
                            <li class='divider'></li>
                            <li class='color-settings-contrast-color'>
                                <div class='color-title'>Contrast color</div>
                                <a href="#" data-change-to="contrast-red"><i class='icon-adjust text-red'></i>
                                    Red
                                    <small>(default)</small>
                                </a>
                                <a href="#" data-change-to="contrast-blue"><i class='icon-adjust text-blue'></i>
                                    Blue
                                </a>
                                <a href="#" data-change-to="contrast-orange"><i class='icon-adjust text-orange'></i>
                                    Orange
                                </a>
                                <a href="#" data-change-to="contrast-purple"><i class='icon-adjust text-purple'></i>
                                    Purple
                                </a>
                                <a href="#" data-change-to="contrast-green"><i class='icon-adjust text-green'></i>
                                    Green
                                </a>
                                <a href="#" data-change-to="contrast-muted"><i class='icon-adjust text-muted'></i>
                                    Muted
                                </a>
                                <a href="#" data-change-to="contrast-fb"><i class='icon-adjust text-fb'></i>
                                    Facebook
                                </a>
                                <a href="#" data-change-to="contrast-dark"><i class='icon-adjust text-dark'></i>
                                    Dark
                                </a>
                                <a href="#" data-change-to="contrast-pink"><i class='icon-adjust text-pink'></i>
                                    Pink
                                </a>
                                <a href="#" data-change-to="contrast-grass-green"><i class='icon-adjust text-grass-green'></i>
                                    Grass green
                                </a>
                                <a href="#" data-change-to="contrast-sea-blue"><i class='icon-adjust text-sea-blue'></i>
                                    Sea blue
                                </a>
                                <a href="#" data-change-to="contrast-banana"><i class='icon-adjust text-banana'></i>
                                    Banana
                                </a>
                                <a href="#" data-change-to="contrast-dark-orange"><i class='icon-adjust text-dark-orange'></i>
                                    Dark orange
                                </a>
                                <a href="#" data-change-to="contrast-brown"><i class='icon-adjust text-brown'></i>
                                    Brown
                                </a>
                            </li>
                        </ul>
                    </li>
                   
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
    <form accept-charset="UTF-8" action="search_results.html" method="get" /><div style="margin:0;padding:0;display:inline"><input name="utf8" type="hidden" value="&#x2713;" /></div>
        <div class='search-wrapper'>
            <input autocomplete="off" class="search-query" id="q" name="q" placeholder="Search..." type="text" value="" />
            <button class="btn btn-link icon-search" name="button" type="submit"></button>
        </div>
    </form>
</div>
<ul class='nav nav-stacked'>
					<li class='active'><a href='sy'> <i class='icon-dashboard'></i>
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
<div class='page-header'>
    <h1 class='pull-left'>
        <i class='icon-dashboard'></i>
        <span>欢迎光临个人网上银行业务平台</span>
    </h1>
    <div class='pull-right'>
       
    </div>
</div>


<div class="main_right col-lg-9 col-md-9 col-sm-9" id="business" style="position: relative;">
					<div class="row">
						<div class="mbnav_cover"></div>
					</div>
					<h1 class="flag" style="display: none;">银行简介<span class="main_share"><img src="../../../images/title_icon.png" /></span></h1>
                                        <!--遍历左侧导航树，栏目名称跟此处隐藏文字（当前栏目的栏目描述）相同，则标红该栏目。-->
                                        
					
                                            
					<h1 class="center" style="border:0">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;公司简介</h1>
					<!--文章标题-->
					<div class="main_subtitle">
						<ul>
							<div class="main_row" style="border-bottom:1px solid #d1d1d1;margin-bottom:26px;padding-bottom:10px">
								
								 <!--判断来源是否为空-->
                                                                          
							</div>
						</ul>
					</div>
					<!--标题-->
					<div class="main_content">
						<div class="main_p">
							<div class=TRS_Editor><p><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本行成立于1987年，是中国改革开放中最早成立的新兴商业银行之一，是中国最早参与国内外金融市场融资的商业银行，并以屡创中国现代金融史上多个第一而蜚声海内外，为中国经济建设做出了积极贡献。2007年4月，本行实现在上海证券交易所和香港联合交易所A+H股同步上市。</h3></p>
<p><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;本行以建设最佳综合金融服务企业为发展愿景，充分发挥中信集团金融与实业并举的独特竞争优势，坚持“以客为尊”，秉承“平安中信、合规经营、科技立行、服务实体、市场导向、创造价值”的经营理念，向企业客户和机构客户提供公司银行业务、国际业务、金融市场业务、机构业务、投资银行业务、保理业务、托管业务等综合金融解决方案，向个人客户提供零售银行、信用卡、消费金融、财富管理、私人银行、出国金融、电子银行等多元化金融产品及服务，全方位满足企业、机构及个人客户的综合金融服务需求。</h3></p>
<p><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;截至2017年末，本行在国内142个大中城市设有1,435家营业网点，同时下设5 家附属机构，包括中信国际金融控股有限公司、信银（香港）投资有限公司、中信金融租赁有限公司、浙江临安中信村镇银行股份有限公司、中信百信银行股份有限公司。其中，中信国际金融控股有限公司子公司中信银行（国际）有限公司，在香港、澳门、纽约、洛杉矶、新加坡和中国内地设有41 家营业网点。中信百信银行股份有限公司为本行与百度公司发起设立的国内首家具有独立法人资格的直销银行。此外，本行与哈萨克斯坦人民银行等交易方签署了股权交易协议，成为国内首家在哈收购银行的股份制商业银行。</h3></p>
<p><h3>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2017年是本行成立30周年华诞，是具有里程碑意义的一年。30年来，本行坚持服务实体经济，稳健经营，与时俱进。经过30年的发展，本行已成为一家总资产规模超5万亿元、员工人数近6万名，具有强大综合实力和品牌竞争力的金融集团。2017年，本行在英国《银行家》杂志“全球银行品牌500强排行榜”中排名第22位；本行一级资本在英国《银行家》杂志“世界1000家银行排名”中排名第25位；本行获评英国《银行家》杂志2017年度“中国最佳银行”，为中国地区唯一获奖银行。</h3></p>
<p>&nbsp;</p>
<div>&nbsp;</div></div>
                                                       <!--细览附件-->
                                                         <div class="loan_bk archieve_o">
                                                               
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
<!-- / jquery -->
<script src='${pageContext.request.contextPath}/assets/javascripts/jquery/jquery.min.js' type='text/javascript'></script>
<!-- / jquery mobile events (for touch and slide) -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/mobile_events/jquery.mobile-events.min.js' type='text/javascript'></script>
<!-- / jquery migrate (for compatibility with new jquery) -->
<script src='${pageContext.request.contextPath}/assets/javascripts/jquery/jquery-migrate.min.js' type='text/javascript'></script>
<!-- / jquery ui -->
<script src='${pageContext.request.contextPath}/assets/javascripts/jquery_ui/jquery-ui.min.js' type='text/javascript'></script>
<!-- / bootstrap -->
<script src='${pageContext.request.contextPath}/assets/javascripts/bootstrap/bootstrap.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/flot/excanvas.js' type='text/javascript'></script>
<!-- / sparklines -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/sparklines/jquery.sparkline.min.js' type='text/javascript'></script>
<!-- / flot charts -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/flot/flot.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/flot/flot.resize.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/flot/flot.pie.js' type='text/javascript'></script>
<!-- / bootstrap switch -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_switch/bootstrapSwitch.min.js' type='text/javascript'></script>
<!-- / fullcalendar -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fullcalendar/fullcalendar.min.js' type='text/javascript'></script>
<!-- / datatables -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/datatables/jquery.dataTables.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/datatables/jquery.dataTables.columnFilter.js' type='text/javascript'></script>
<!-- / wysihtml5 -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/common/wysihtml5.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/common/bootstrap-wysihtml5.js' type='text/javascript'></script>
<!-- / select2 -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/select2/select2.js' type='text/javascript'></script>
<!-- / color picker -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_colorpicker/bootstrap-colorpicker.min.js' type='text/javascript'></script>
<!-- / mention -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/mention/mention.min.js' type='text/javascript'></script>
<!-- / input mask -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/input_mask/bootstrap-inputmask.min.js' type='text/javascript'></script>
<!-- / fileinput -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileinput/bootstrap-fileinput.js' type='text/javascript'></script>
<!-- / modernizr -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/modernizr/modernizr.min.js' type='text/javascript'></script>
<!-- / retina -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/retina/retina.js' type='text/javascript'></script>
<!-- / fileupload -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/tmpl.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/load-image.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/canvas-to-blob.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.iframe-transport.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.fileupload.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.fileupload-fp.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.fileupload-ui.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fileupload/jquery.fileupload-init.js' type='text/javascript'></script>
<!-- / timeago -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/timeago/jquery.timeago.js' type='text/javascript'></script>
<!-- / slimscroll -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/slimscroll/jquery.slimscroll.min.js' type='text/javascript'></script>
<!-- / autosize (for textareas) -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/autosize/jquery.autosize-min.js' type='text/javascript'></script>
<!-- / charCount -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/charCount/charCount.js' type='text/javascript'></script>
<!-- / validate -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/validate/jquery.validate.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/validate/additional-methods.js' type='text/javascript'></script>
<!-- / naked password -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/naked_password/naked_password-0.2.4.min.js' type='text/javascript'></script>
<!-- / nestable -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/nestable/jquery.nestable.js' type='text/javascript'></script>
<!-- / tabdrop -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/tabdrop/bootstrap-tabdrop.js' type='text/javascript'></script>
<!-- / jgrowl -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/jgrowl/jquery.jgrowl.min.js' type='text/javascript'></script>
<!-- / bootbox -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootbox/bootbox.min.js' type='text/javascript'></script>
<!-- / inplace editing -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/xeditable/bootstrap-editable.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/xeditable/wysihtml5.js' type='text/javascript'></script>
<!-- / ckeditor -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/ckeditor/ckeditor.js' type='text/javascript'></script>
<!-- / filetrees -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/dynatree/jquery.dynatree.min.js' type='text/javascript'></script>
<!-- / datetime picker -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_datetimepicker/bootstrap-datetimepicker.js' type='text/javascript'></script>
<!-- / daterange picker -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_daterangepicker/moment.min.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_daterangepicker/bootstrap-daterangepicker.js' type='text/javascript'></script>
<!-- / max length -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_maxlength/bootstrap-maxlength.min.js' type='text/javascript'></script>
<!-- / dropdown hover -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/bootstrap_hover_dropdown/twitter-bootstrap-hover-dropdown.min.js' type='text/javascript'></script>
<!-- / slider nav (address book) -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/slider_nav/slidernav-min.js' type='text/javascript'></script>
<!-- / fuelux -->
<script src='${pageContext.request.contextPath}/assets/javascripts/plugins/fuelux/wizard.js' type='text/javascript'></script>
<!-- / flatty theme -->
<script src='${pageContext.request.contextPath}/assets/javascripts/nav.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/tables.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/theme.js' type='text/javascript'></script>
<!-- / demo -->
<script src='${pageContext.request.contextPath}/assets/javascripts/demo/jquery.mockjax.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/demo/inplace_editing.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/demo/charts.js' type='text/javascript'></script>
<script src='${pageContext.request.contextPath}/assets/javascripts/demo/demo.js' type='text/javascript'></script>
<div style="display:none"><script src='http//v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>