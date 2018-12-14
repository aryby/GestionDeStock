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
<!-- DataTables Responsive CSS -->
<link
	href="<%=request.getContextPath()%>/resources/vendor/datatables-responsive/dataTables.responsive.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/vendor/datatables-plugins/dataTables.bootstrap.css"
	rel="stylesheet">

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
						<h1 class="page-header">
							<fmt:message key="common.category"></fmt:message>
						</h1>
					</div>
				</div>
				<div class="row">
					<div class="lol-lg-12">
						<ol class="breadcrumb">
							<li><a href='<c:url value="/category/nouveau"></c:url>'> <i
									class="fa fa-plus"> <fmt:message key="common.ajouter"></fmt:message>
								</i>
							</a></li>
							<li><a href="#"><i class="fa fa-upload"> <fmt:message
											key="common.exporter"></fmt:message></i></a></li>
							<li><a href="#"><i class="fa fa-download"> <fmt:message
											key="common.importer"></fmt:message></i></a></li>
						</ol>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-primary">
							<div class="panel-heading">
								<fmt:message key="category.liste"></fmt:message>
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<table
									class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th><fmt:message key="common.code"></fmt:message></th>
											<th><fmt:message key="common.designation"></fmt:message></th>
											<th><fmt:message key="common.action"></fmt:message></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach items="${categories }" var="category">
											<tr class="odd gradeX">
												<td>${category.getCode() }</td>
												<td>${category.getDesignation() }</td>
												<td>
												<c:url value="/category/modifier/${category.getIdCategory() }" var="urlModifier">
												</c:url> 
														<a href="${urlModifier } ">
															<i class="fa fa-edit"></i>
														</a> &nbsp;|&nbsp; 
														<a href="javascript:void(0);"	data-toggle="modal" data-target="#modalCategort${category.getIdCategory() }">
															<i class="fa  fa-trash-o"></i>
														</a> 
														<!-- Modal -->
													<div class="modal fade" id="modalCategort${category.getIdCategory() }" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
														aria-hidden="true">
														<div class="modal-dialog">
															<div class="modal-content">
																<div class="modal-header">
																	<button type="button" class="close"	data-dismiss="modal" aria-hidden="true">&times;</button>
																	<h4 class="modal-title" id="myModalLabel"><fmt:message key="common.confirm.suppression"></fmt:message></h4>
																</div>
																<div class="modal-body">
																	<fmt:message key="category.confirm.suppression.msg"></fmt:message>
																</div>
																<div class="modal-footer">
																	<button type="button" class="btn btn-default" data-dismiss="modal">
																		<fmt:message key="common.annuler"></fmt:message></button>
																	<c:url value="/category/supprimer/${category.getIdCategory() }" var="urlSuppression"></c:url>
																	<a href="${urlSuppression }" class="btn btn-danger"><i class="fa fa-trash-o"></i></a>
																</div>
															</div>
															<!-- /.modal-content -->
														</div>
														<!-- /.modal-dialog -->
													</div> <!-- /.modal --></td>
											</tr>
										</c:forEach>


									</tbody>
								</table>

							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
			</div>
			<!-- /#page-wrapper -->

		</div>
		<!-- /#wrapper -->
</div>
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
		<script
			src="<%=request.getContextPath()%>/resources/dist/js/sb-admin-2.js"></script>
		<!-- DataTables JavaScript -->
		<script
			src="<%=request.getContextPath()%>/resources/vendor/datatables/js/jquery.dataTables.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vendor/datatables-plugins/dataTables.bootstrap.min.js"></script>
		<script
			src="<%=request.getContextPath()%>/resources/vendor/datatables-responsive/dataTables.responsive.js"></script>
		<!-- Page-Level Demo Scripts - Tables - Use for reference -->
		<script
			src="<%=request.getContextPath()%>/resources/dist/js/sb-admin-2.js"></script>
		<script>
			$(document).ready(function() {
				$('#dataTables-example').DataTable({
					responsive : true
				});
			});
		</script>
</body>

</html>
