<%@ include file="/WEB-INF/views/includes/includes.jsp"%>
<!DOCTYPE html>
<html lang="fr">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>SB Admin 2 - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/metisMenu/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link
	href="<%=request.getContextPath()%>/resources/dist/css/sb-admin-2.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<%@ include file="/WEB-INF/views/menu_top/topMenu.jsp"%>
			<%@ include file="/WEB-INF/views/menu_left/leftMenu.jsp"%>
		</nav>

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header"><spring:message code="article.nouveau"></spring:message></h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>

				<div class="row">
					<div class="lol-lg-12">
						<ol class="breadcrumb">
							<li>
								<a href='<c:url value="/article/nouveau"></c:url>'>
									<i class="fa fa-plus">
										<spring:message code="common.ajouter"></spring:message>
									</i>
								</a>
							</li>
							
							<li><a href="#"><i class="fa fa-upload"> <spring:message code="common.exporter"></spring:message></i></a></li>
							<li><a href="#"><i class="fa fa-download"> <spring:message
											code="common.importer"></spring:message></i></a></li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<spring:message code="article.nouveau"></spring:message>
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<c:url value="/article/enregistrer" var="urlEnregistrer"></c:url>
								<f:form modelAttribute="article" action="${urlEnregistrer }" enctype="multipart/form-data" role="form">
									<f:hidden path="idArticle"/>
									<f:hidden path="photo"/>
                                   <div class="form-group">
                                       <label><spring:message code="common.code"></spring:message></label>
                                       <f:input path="codeArticle" class="form-control" placeholder="Entrer le code ici..."/>
                                   </div>
                                   <div class="form-group">
                                       <label><spring:message code="common.designation"></spring:message></label>
                                       <f:input path="designation" class="form-control" placeholder="Entrer la designation ici..."/>
                                   </div>
                                   <div class="form-group">
                                       <label><spring:message code="common.prixHT"></spring:message></label>
                                       <f:input id="prixUnitHT" path="prixUnitaireHT" class="form-control" placeholder="Entrer votre prixHT ici..."/>
                                   </div>
                                   <div class="form-group">
                                       <label><spring:message code="common.TVA"></spring:message></label>
                                       <f:input id="tauxTVA" path="tauxTva" class="form-control" placeholder="Entrer la TVA ici..."/>
                                   </div>
                                   <div class="form-group">
                                       <label><spring:message code="common.prixTTC"></spring:message></label>
                                       <f:input id="prixUnitTTC" path="prixUnitaireTTC" class="form-control" placeholder="Entrer la TTC ici..."/>
                                   </div>
                                   <div class="form-group">
                                       <label><spring:message code="common.category"></spring:message></label>
											<f:select class="form-control" path="category.idCategory" items="${categories }" itemLabel="code" itemValue="idCategory"></f:select>
                                   </div>
                                   <div class="form-group">
                                         <label><spring:message code="common.photo"></spring:message></label>
                                            <input type="file" name = "file"/>
                                        </div>
                                  
                                   <div class="panel-footer">
                                   	<button type="submit" class="btn btn-block btn-primary">
                                   		<i class="fa fa-save">&nbsp;
                                   			<spring:message code="common.enregistrer"></spring:message>
                                   		</i></button>
                                   	<a href='<c:url value="/article/"></c:url>' class="btn btn-block btn-danger">
                                   		<i class="fa fa-arrow-left">&nbsp;
                                   			<spring:message code="common.annuler"></spring:message>
                                   		</i>
                                   	</a>
                                   </div>
                                   
                                 </f:form>
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

	<!-- jQuery -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/metisMenu/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<%=request.getContextPath()%>/resources/dist/js/sb-admin-2.js"></script>
	
	<!-- My Custom JavaScript files -->
	<script src="<%=request.getContextPath()%>/resources/javascript/article.js"></script>

</body>

</html>
