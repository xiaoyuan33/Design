<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Bootstrap Admin</title>
<meta content="IE=edge,chrome=1" http-equiv="X-UA-Compatible">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link rel="stylesheet" type="text/css"
	href="/Design/lib/bootstrap/css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="/Design/stylesheets/theme.css">
<link rel="stylesheet" href="/Design/lib/font-awesome/css/font-awesome.css">
<script src="/Design/lib/jquery-1.7.2.min.js" type="/Design/text/javascript"></script>

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
			<h1 class="page-title">已回复消息</h1>
		</div>
		<ul class="breadcrumb">
			<li><a href="/Design/index.jsp">主页</a> <span class="divider">/</span></li>
			<li><a href="/Design/page-list.jsp">回复消息</a> <span class="divider">/</span></li>
			<li class="active"><a href="/Design/page-wacth.jsp">已回复消息</a></li>
		</ul>

		<div class="container-fluid">
			<div class="row-fluid">
				<div class="btn-toolbar">
					<div class="btn-group"></div>
				</div>
				<div class="well">
					<ul class="nav nav-tabs">
					</ul>
					<div id="myTabContent" class="tab-content">
						<div class="tab-pane active in" id="home">
									<b>任务名称</b>
									<p>${currentReplyTask.name}</p>
									<b>任务描述</b>
									<p>${currentReplyTask.introduction}</p>
									<b>截止日期</b>
									<p>${currentReplyTask.deadline}</p>
									<b>是否按时提交</b>
									<p>${ontime}</p>
									<a href="/Design/queryreply">返回</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="/Design/lib/bootstrap/js/bootstrap.js"></script>
	<script type="text/javascript">
		$("[rel=tooltip]").tooltip();
		$(function() {
			$('.demo-cancel-click').click(function() {
				return false;
			});
		});
	</script>
</body>
</html>