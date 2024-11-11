<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin</title>
<link rel="shortcut icon" href="/template/admin/tefavicon_16.ico"/>
<link rel="bookmark" href="/template/admin/tefavicon_16.ico"/>
<!-- site css -->
<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,800,700,400italic,600italic,700italic,800italic,300italic" rel="stylesheet" type="text/css">

<link href="<c:url value='/template/admin/dist/css/site.min.css' />" rel="stylesheet" type="text/css" media="all"/>

<script type="text/javascript" src="<c:url value='/template/admin/dist/js/site.min.js' />"></script>

</head>
<body>
		<!-- header -->
    <%@ include file="/common/admin/header.jsp" %>
    <!-- header -->
    
    <!-- menu -->
    <%@ include file="/common/admin/menu.jsp" %>
    <!-- menu -->
    
     <!-- body -->
    <div class="container">
    	<dec:body/>
    </div>
    <!-- body -->

	<!-- footer -->
	<%@ include file="/common/admin/footer.jsp" %>
	<!-- footer -->
</body>
</html>