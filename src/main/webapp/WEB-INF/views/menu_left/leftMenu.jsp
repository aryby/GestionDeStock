<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="fmt"%>

<div class="navbar-default sidebar" role="navigation">
	<div class="sidebar-nav navbar-collapse">
		<ul class="nav" id="side-menu">
			<li class="sidebar-search">
				<div class="input-group custom-search-form">
					<input type="text" class="form-control" placeholder="Rechercher...">
					<span class="input-group-btn">
						<button class="btn btn-default" type="button">
							<i class="fa fa-search"></i>
						</button>
					</span>
				</div> <!-- /input-group -->
			</li>
			<c:url value="/home/" var="home" />
			<li><a href="${home }"><i class="fa fa-dashboard fa-fw"></i>
					<spring:message code="common.dashbord"></spring:message> </a></li>
			<c:url value="/article/" var="article" />
			<li><a href="${article }"><i class="fa fa-dashboard fa-fw"></i>
					<spring:message code="common.article"></spring:message> </a></li>
			<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> <spring:message
						code="common.client"></spring:message><span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<c:url value="/client/" var="client" />
					<li><a href="${client }"><spring:message code="common.client"></spring:message></a></li>
					<c:url value="/commandeclient/" var="cdeclient" />
					<li><a href="${cdeclient }"><spring:message
								code="common.client.commande"></spring:message></a></li>
				</ul> <!-- /.nav-second-level --></li>


			<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> <spring:message
						code="common.fournisseur"></spring:message><span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<c:url value="/fournisseur/" var="fournisseur" />
					<li><a href="${fournisseur }"><spring:message
								code="common.fournisseur"></spring:message></a></li>
					<c:url value="/commandefournisseur/" var="cdefournisseur" />
					<li><a href="${cdefournisseur }"><spring:message
								code="common.fournisseur.commande"></spring:message></a></li>
				</ul> <!-- /.nav-second-level --></li>



			<c:url value="/stock/" var="stock" />
			<li><a href="${stock }"><i class="fa fa-table fa-fw"></i> <spring:message
						code="common.stock"></spring:message></a></li>
			<c:url value="/vente/" var="vente" />
			<li><a href="${vente }"><i class="fa fa-edit fa-fw"></i> <spring:message code="common.vente"></spring:message></a></li>
			<li><a href="#"><i class="fa fa-wrench fa-fw"></i> 
				<spring:message code="common.parametrage"></spring:message><span class="fa arrow"></span></a>
				<ul class="nav nav-second-level">
					<c:url value="/utilisateur/" var="user" />
					<li><a href="${user }"><spring:message code="common.parametrage.utilisateur"></spring:message></a></li>
					<c:url value="/category/" var="category" />
					<li><a href="${category }"><spring:message code="common.parametrage.category"></spring:message></a></li>
				</ul>
		</ul>
	</div>
	<!-- /.sidebar-collapse -->
</div>