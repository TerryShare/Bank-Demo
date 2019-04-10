<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>网上银行后台系统</title>
    <link href="${pageContext.request.contextPath}/admin/bootstrap.css" rel="stylesheet" />
    <link href="${pageContext.request.contextPath}/admin/base.css" rel="stylesheet" />
</head>
<body style="min-height:800px; height: auto">
    <div class="container-fluid">

        <nav class="navbar navbar-default row no-yj  navbar-fixed-top">
            <div class="container-fluid">
                <div class="navbar-header">
                         <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#nav-list-left" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
                    <a class="navbar-brand" href="#">网上银行管理系统</a>
                </div>
				<!-- 头部左侧 -->
                <div class="collapse navbar-collapse pull-right" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                      
                     
                        <li><a class="dropdown-toggle" data-toggle="dropdown" href="#" style="height: 50px">
							<span class="pull-left nav-username">管理员</span></a>

                            <ul class="dropdown-menu dropdown-menu-right clearfix" style="padding-top: 0px">
                                <li class="user-li-head"><span>
                                    <p></p>
                                   
                                    <p class="text-center"><small><span>欢迎登陆</span></small></p>
                                </li>
                                <li style="padding: 10px 20px; padding-bottom: 20px">

                                    <div class="" style="padding: 20px 40px; padding-bottom: 10px">
                                        <a href="tzlogin" class="btn btn-default btn-flat no-yj">注销</a>
                                    </div>
                                </li>
                                </ul>
                        </li>
                    </ul>


                </div>



            </div>
        </nav>
        
    
        <div class="row" style="margin-top:70px">
            <div class="  nav-left col-md-2 no-padding" id="nav-list-left">
                <div class="">
                    <img src="${pageContext.request.contextPath}/admin/user/demos.jpg" class="" />
                </div>

                <div class="nav-list" >
                    <ul>
                        <li>
                            <a href="yh">用户管理</a>
                        </li>
                        <li>
                            <a href="tzsh">卡片审核</a>
                        </li>
                        <li>
                        	<a href="tzgl">卡片管理</a>
                        </li>
                         <li>
                            <a href="tzzd">账单管理</a>
                        </li>                                               
                    </ul>
                </div>
            </div>

            <div class="main-right  col-md-10 col-md-offset-2">

                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">导航条</div>
                        <div class="panel-body">
                            <ol class="breadcrumb">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Library</a></li>
                                <li class="active">Data</li>
                            </ol>
                        </div>
                    </div>
                </div>


                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">分页</div>
                        <div class="panel-body">
                            <nav>
                                <ul class="pagination">
                                    <li>
                                        <a href="#" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li>
                                        <a href="#" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            输入框
                        </div>
                        <div class="panel-body">

                            <div class="col-md-6">

                                <div class="input-group">
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">Go!</button>
                                    </span>
                                    <input type="text" class="form-control" placeholder="Search for..." />
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Search for..." />
                                    <span class="input-group-btn">
                                        <button class="btn btn-default" type="button">Go!</button>
                                    </span>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon" id="basic-addon1">@</span>
                                    <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1" />
                                </div>
                                <br />
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2" />
                                    <span class="input-group-addon" id="basic-addon2">@example.com</span>
                                </div>
                                <br />
                                <div class="input-group">
                                    <span class="input-group-addon">$</span>
                                    <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)" />
                                    <span class="input-group-addon">.00</span>
                                </div>
                                <br />
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action <span class="caret"></span></button>
                                        <ul class="dropdown-menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li role="separator" class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                    <input type="text" class="form-control" aria-label="..." />
                                </div>
                                <br />
                                <div class="input-group">
                                    <input type="text" class="form-control" aria-label="..." />
                                    <div class="input-group-btn">
                                        <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Action <span class="caret"></span></button>
                                        <ul class="dropdown-menu dropdown-menu-right">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li role="separator" class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>



                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default ">
                        <div class="panel-heading">表单</div>
                        <div class="panel-body">
                            <form>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">邮箱</label>
                                    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">密码</label>
                                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">File input</label>
                                    <input type="file" id="exampleInputFile" />
                                    <p class="help-block">帮助提示</p>
                                </div>
                                <div class="checkbox">
                                    <label>
                                        <input type="checkbox" />
                                        记住me
                                    </label>
                                </div>
                                <button type="submit" class="btn btn-default">提交</button>
                            </form>
                        </div>
                    </div>

                </div>
                 <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">按钮</div>
                        <div class="panel-body">
                            
                                <a class="btn btn-default" href="#" role="button">Link</a>
                                <button class="btn btn-default" type="submit">Button</button>

                                <button type="button" class="btn btn-default">（默认样式）Default</button>

                                <button type="button" class="btn btn-primary">（首选项）Primary</button>


                                <button type="button" class="btn btn-success">（成功）Success</button>


                                <button type="button" class="btn btn-info">（一般信息）Info</button>
                            


                            <button type="button" class="btn btn-warning">（警告）Warning</button>

                            <button type="button" class="btn btn-danger">（危险）Danger</button>


                            <button type="button" class="btn btn-link">（链接）Link</button>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            提示框
                        </div>
                        <div class="panel-body">
                            <div class="alert alert-success" role="alert">
                                <a href="#" class="alert-link">...</a>
                            </div>
                            <div class="alert alert-info" role="alert">
                                <a href="#" class="alert-link">...</a>
                            </div>
                            <div class="alert alert-warning" role="alert">
                                <a href="#" class="alert-link">...</a>
                            </div>
                            <div class="alert alert-danger" role="alert">
                                <a href="#" class="alert-link">...</a>
                            </div>
                        </div>
                    </div>
                </div>
               
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            标签
                        </div>
                        <div class="panel-body">
                            <span class="label label-default">Default</span>
                            <span class="label label-primary">Primary</span>
                            <span class="label label-success">Success</span>
                            <span class="label label-info">Info</span>
                            <span class="label label-warning">Warning</span>
                            <span class="label label-danger">Danger</span>
                        </div>
                        <div class="panel-footer">
                            底部
                        </div>
                    </div>
                </div>

                <div class="col-md-6">
                    <div class="panel panel-default panel-2">
                        <div class="panel-heading">
                            面板2
                        </div>
                        <div class="panel-body">
                            恩
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="panel panel-default">

                        <div class="panel-body">
                            默认无面板头
                        </div>
                    </div>

                </div>
                <div class="col-md-12">
                    <div class="panel panel-default no-yj">

                        <div class="panel-body">
                            默认无面板头(去掉圆角)
                        </div>
                    </div>
                </div>

                <div class="col-md-12">
                    <div class="panel panel-default panel-3">

                        <div class="panel-body">
                            面板3
                        </div>
                    </div>

                </div>
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            表格
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered tb-bg">
                                <thead>
                                    <tr>
                                        <td>序号</td>
                                        <td>名称</td>
                                        <td>年龄</td>
                                        <td>性别</td>
                                        <td>住址</td>
                                        <td>QQ</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>小易</td>
                                        <td>21</td>
                                        <td>男</td>
                                        <td>china</td>
                                        <td>123456</td>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="panel panel-default ">
                        <div class="panel-heading">
                            表格
                        </div>
                        <div class="panel-body">
                            <table class="table table-bordered tb-hover">
                                <thead>
                                    <tr>
                                        <td>序号</td>
                                        <td>名称</td>
                                        <td>年龄</td>
                                        <td>性别</td>
                                        <td>住址</td>
                                        <td class="text-center">操作</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>小易</td>
                                        <td>21</td>
                                        <td>男</td>
                                        <td>china</td>
                                        <td class=" text-center"><a href="#"><i class="glyphicon glyphicon-search"></i></a>&nbsp;&nbsp;<a href="#"><i class="glyphicon glyphicon-edit"></i></a></td>
                                    </tr>
                                       <tr>
                                        <td>1</td>
                                        <td>小易</td>
                                        <td>21</td>
                                        <td>男</td>
                                        <td>china</td>
                                          <td class=" text-center"><a href="#"><i class="glyphicon glyphicon-search"></i></a>&nbsp;&nbsp;<a href="#"><i class="glyphicon glyphicon-edit"></i></a></td>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            表格
                        </div>
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <td>序号</td>
                                        <td>名称</td>
                                        <td>年龄</td>
                                        <td>性别</td>
                                        <td>住址</td>
                                        <td>QQ</td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>小易</td>
                                        <td>21</td>
                                        <td>男</td>
                                        <td>china</td>
                                        <td>123456</td>
                                    </tr>
                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>


    </div>
    <script src="http://cdn.bootcss.com/jquery/1.11.2/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function () {
            $(".dropdownMenu").dropdown();
            $(".nav-left-dropdown>a").click(function () {


                if ($(this).attr("d") != 1 && $(this).attr("d") != undefined) {
                    $(this).removeClass("nav-left-dropdown-a");
                    $this = $(this);
                    $(this).next("ul").slideUp(300, function () { $this.removeClass("nav-left-bottrom-border"); $this.removeClass("nav-left-dropdown-ul") });

                    $(this).attr("d", "1");

                } else {
                    $(this).addClass("nav-left-dropdown-a");
                    $(this).addClass("nav-left-bottrom-border");
                    $(this).next("ul").addClass("nav-left-dropdown-ul").slideDown(300);
                    $(this).attr("d", "2");

                }


            })
        });

    </script>
</body>
</html>

