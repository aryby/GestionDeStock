<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="f"%>
<%@ page session="true"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="fmt"%>
<%@ page session="true"%>
<%@ page trimDirectiveWhitespaces="true"%>
<div class="navbar-header">
	<button type="button" class="navbar-toggle" data-toggle="collapse"
		data-target=".navbar-collapse">
		<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
		<span class="icon-bar"></span> <span class="icon-bar"></span>
	</button>
	<a class="navbar-brand" href="javascript:void(0);">Gestion de Stock</a>
</div>
<!-- /.navbar-header -->

<ul class="nav navbar-top-links navbar-right">
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-envelope fa-fw"></i>
			<i class="fa fa-caret-down"></i>
	</a>
		<ul class="dropdown-menu dropdown-messages">
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>Read
						All Messages</strong> <i class="fa fa-angle-right"></i>
			</a></li>
		</ul> <!-- /.dropdown-messages --></li>
	<!-- /.dropdown -->
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
			<i class="fa fa-caret-down"></i>
	</a>
		<ul class="dropdown-menu dropdown-tasks">
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>See
						All Tasks</strong> <i class="fa fa-angle-right"></i>
			</a></li>
		</ul> <!-- /.dropdown-tasks --></li>
	<!-- /.dropdown -->
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
			<i class="fa fa-caret-down"></i>
	</a>
		<ul class="dropdown-menu dropdown-alerts">
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a href="#">
					
			</a></li>
			<li class="divider"></li>
			<li><a class="text-center" href="#"> <strong>See
						All Alerts</strong> <i class="fa fa-angle-right"></i>
			</a></li>
		</ul> <!-- /.dropdown-alerts --></li>
	<!-- /.dropdown -->
	<li class="dropdown"><a class="dropdown-toggle"
		data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
			<i class="fa fa-caret-down"></i>
	</a>
		<ul class="dropdown-menu dropdown-user">
			<li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a></li>
			<li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a></li>
			<li class="divider"></li>
			<c:url value="/changelocale/fr" var="frUrl"/>
			<c:url value="/changelocale/en" var="enUrl"/>
			<li><a href="${frUrl }"><i class="fa fa-globe fa-fw"></i> <spring:message code="locale.fr" /></a></li>
			<li><a href="${enUrl }"><i class="fa fa-globe fa-fw"></i> <spring:message code="locale.en" /></a></li>
			<li class="divider"></li>
			<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>Logout</a></li>
			
			
		</ul> <!-- /.dropdown-user --></li>
	<!-- /.dropdown -->
</ul>