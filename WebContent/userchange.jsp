<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<link rel="stylesheet" type="text/css"
	href="lib/bootstrap/css/bootstrap.css">

<link rel="stylesheet" type="text/css" href="stylesheets/theme.css">
<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.css">

<script src="lib/jquery-1.7.2.min.js" type="text/javascript"></script>

<!-- Demo page code -->

<style type="text/css">
#line-chart {
	height: 300px;
	width: 800px;
	margin: 0px auto;
	margin-top: 1em;
}

.brand {
	font-family: georgia, serif;
}

.brand .first {
	color: #fff;
	font-style: italic;
}

.brand .second {
	color: #fff;
	font-weight: bold; 
}
</style>
<link rel="shortcut icon" href="../assets/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" 
	href="../assets/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" 
	href="../assets/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/apple-touch-icon-57-precomposed.png">
<title>Insert title here</title>
<script src="lib/bootstrap/js/bootstrap.js"></script>
<script type="text/javascript">
	$("[rel=tooltip]").tooltip();
	$(function() {
		$('.demo-cancel-click').click(function() {
			return false;
		});
	});
</script>
</head>
<body>
	<div class="navbar">
		<div class="navbar-inner">
			<ul class="nav pull-right">

				<li id="fat-menu" class="dropdown"><a href="#"
					class="dropdown-toggle" data-toggle="dropdown"> <i
						class="icon-user"></i>${user.name}<i class="icon-caret-down"></i>
				</a>
					<ul class="dropdown-menu">
						<li><a tabindex="-1" href="index.jsp">返回主页</a></li>
						<li class="divider"></li>
						<li><a tabindex="-1" class="visible-phone" href="#">Settings</a></li>
						<li class="divider visible-phone"></li>
						<li><a tabindex="-1" href="logout">注销</a></li>
					</ul></li>
			</ul>
			      <a class="brand" href="/Design/index.jsp"><span class="first">NEFU考试后台系统</span> <span class="second"></span></a>
		</div>
	</div>
	<div class="sidebar-nav">
		<a href="#dashboard-menu" class="nav-header" data-toggle="collapse" ><i
			class="icon-dashboard"></i>用户管理<i class="icon-chevron-up"></i></a>
		<ul id="dashboard-menu" class="nav nav-list collapse in">
			<li><a href="useradd.jsp">用户注册</a></li>
			<!-- a="useradd.jsp"-->
			<li><a href="userchange.jsp">用户修改</a></li>
			<!-- a="userchange.jsp" -->
			<li><a href="listuser/1">权限设置</a></li>
		</ul>

		<a href="#legal-menu" class="nav-header" data-toggle="collapse"><i
			class="icon-legal"></i>监考管理<i class="icon-chevron-up"></i></a>
		<ul id="legal-menu" class="nav nav-list collapse">
			<li><a href="/Design/examadd.jsp">添加监考信息</a></li>
			<li><a href="/Design/examallot/1">监考分配</a></li>
			<li><a href="/Design/listexam/1">查看全部考试信息</a></li>
		</ul>
		
		<a href="#news-menu" class="nav-header" data-toggle="collapse" ><i class="icon-question-sign"></i>任务管理<i class="icon-chevron-up"></i></a>
                  <ul id="news-menu" class="nav nav-list collapse">
                      <li ><a href="page.jsp">发布新任务</a></li> 
                      <li ><a href="page-list.jsp">任务列表</a></li> 
                  </ul>

	</div>
	<div class="content">
		<div class="header">
			<h1 class="page-title">用户修改</h1>
		</div>

		<div class="container-fluid">
			<div class="row-fluid">
				<!-- 这里的内容所对应的是examadd.jsp中的form表单 -->
				<div class="well">
					<ul class="nav nav-tabs">
						<li class="active"><a href="#home" data-toggle="tab">详细信息编辑</a></li>
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane active in" id="home">
							<form id="tab" action="changeuser" method="POST">
								<label>用户名</label> <select value="" class="input-xlarge"
									name="name" id="name"></select> <label>密码</label> <input
									type="text" value="" class="input-xlarge" name="password">
								<label>权限</label> <input type="text" value=""
									class="input-xlarge" name="authority"> <label>介绍</label>
								<input type="text" value="" class="input-xlarge"
									name="introduction"> <label>职称</label> <input
									type="text" value="" class="input-xlarge" name="level">
								<label>电话</label> <input type="text" value=""
									class="input-xlarge" name="tel"><br /> <input
									type="submit" name="tianjiayonghu" value="确认修改">
						</div>
					</div>

				</div>

				<div class="modal small hide fade" id="myModal" tabindex="-1"
					role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-hidden="true">×</button>
						<h3 id="myModalLabel">Delete Confirmation</h3>
					</div>
					<div class="modal-body">

						<p class="error-text">
							<i class="icon-warning-sign modal-icon"></i>Are you sure you want
							to delete the user?
						</p>
					</div>
					<div class="modal-footer">
						<button class="btn" data-dismiss="modal" aria-hidden="true">Cancel</button>
						<button class="btn btn-danger" data-dismiss="modal">Delete</button>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>