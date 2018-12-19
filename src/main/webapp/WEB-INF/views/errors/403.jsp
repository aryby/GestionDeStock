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
<link href="<%=request.getContextPath()%>/resources/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
	<div id="wrapper">
		<nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
		</nav>
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header"><spring:message code="errors.msg.403" /></h1>
						<c:url value="${backUrl }" var="back"></c:url>
						<a href="${back }"><spring:message code="commons.back" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script	src="<%=request.getContextPath()%>/resources/vendor/jquery/jquery.min.js"></script>
	<script	src="<%=request.getContextPath()%>/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script	src="<%=request.getContextPath()%>/resources/vendor/metisMenu/metisMenu.min.js"></script>
	<script	src="<%=request.getContextPath()%>/resources/dist/js/sb-admin-2.js"></script>
</body>
</html>
