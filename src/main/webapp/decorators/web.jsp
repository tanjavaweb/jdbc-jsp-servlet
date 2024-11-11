<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglib.jsp" %>
        <!DOCTYPE html>
        <html lang="en">

        <head>
            <meta charset="UTF-8">
            <meta name="description" content="Ogani Template">
            <meta name="keywords" content="Ogani, unica, creative, html">
            <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <meta http-equiv="X-UA-Compatible" content="ie=edge">
            <title>
                <dec:title default="Trang chủ" />
            </title>


            <!-- Google Font -->
            <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

            <!-- Css Styles -->
            <link href="<c:url value='/template/web/css/bootstrap.min.css' />" rel="stylesheet" type="text/css" media="all" />
            <link href="<c:url value='/template/web/css/font-awesome.min.css' />" rel="stylesheet" type="text/css" media="all" />
            <link href="<c:url value='/template/web/css/elegant-icons.css' />" rel="stylesheet" type="text/css" media="all" />
            <link href="<c:url value='/template/web/css/nice-select.css' />" rel="stylesheet" type="text/css" media="all" />
            <link href="<c:url value='/template/web/css/jquery-ui.min.css' />" rel="stylesheet" type="text/css" media="all" />
            <link href="<c:url value='/template/web/css/owl.carousel.min.css' />" rel="stylesheet" type="text/css" media="all" />
            <link href="<c:url value='/template/web/css/slicknav.min.css' />" rel="stylesheet" type="text/css" media="all" />
            <link href="<c:url value='/template/web/css/style.css' />" rel="stylesheet" type="text/css" media="all" />

            <link href="<c:url value='/template/web/css-form-register/style.css' />" rel="stylesheet" type="text/css" media="all" />
        </head>

        <body>
            <!-- header -->
            <%@ include file="/common/web/header.jsp" %>
                <!-- header -->

                <!-- menu -->
                <%@ include file="/common/web/menu.jsp" %>
                    <!-- menu -->

                    <!-- body -->
                    <div class="container">
                        <dec:body/>
                    </div>
                    <!-- body -->

                    <!-- footer -->
                    <%@ include file="/common/web/footer.jsp" %>
                        <!-- footer -->


                        <!-- Js Plugins -->
                        <script type="text/javascript" src="<c:url value='/template/web/js/jquery-3.3.1.min.js' />"></script>
                        <script type="text/javascript" src="<c:url value='/template/web/js/bootstrap.min.js' />"></script>
                        <script type="text/javascript" src="<c:url value='/template/web/js/jquery.nice-select.min.js' />"></script>
                        <script type="text/javascript" src="<c:url value='/template/web/js/jquery-ui.min.js' />"></script>
                        <script type="text/javascript" src="<c:url value='/template/web/js/jquery.slicknav.js' />"></script>
                        <script type="text/javascript" src="<c:url value='/template/web/js/mixitup.min.js' />"></script>
                        <script type="text/javascript" src="<c:url value='/template/web/js/owl.carousel.min.js' />"></script>
                        <script type="text/javascript" src="<c:url value='/template/web/js/main.js' />"></script>

        </body>

        </html>