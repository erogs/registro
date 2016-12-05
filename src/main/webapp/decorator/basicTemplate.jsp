<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/includes/includes.jsp" %>
<%@ page import="pe.gob.inei.registro.web.util.Pagina"%>

<!DOCTYPE html>
<!--[if IE 8]><html class="ie8 no-js" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9 no-js" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en" class="no-js">
<!--<![endif]-->
<!-- start: HEAD -->

<c:set var="PAGINA_PRESENTACION"><jsp:expression>Pagina.PRESENTACION</jsp:expression></c:set>
<c:set var="PAGINA_REGISTRO_UNO"><jsp:expression>Pagina.REGISTRO_UNO</jsp:expression></c:set>
<c:set var="PAGINA_REGISTRO_DOS"><jsp:expression>Pagina.REGISTRO_DOS</jsp:expression></c:set>
<c:set var="PAGINA_FICHA_TECNICA"><jsp:expression>Pagina.REPORTE_UNO</jsp:expression></c:set>
<head>
    <title>INEI - REGISTROS</title>
    <!-- start: META -->
    <meta charset="utf-8" />
    <!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta content="" name="description" />
    <meta content="" name="author" />
    <!-- end: META -->
    <!-- start: MAIN CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/fonts/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/main-responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/iCheck/skins/all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/bootstrap-colorpalette/css/bootstrap-colorpalette.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/perfect-scrollbar/src/perfect-scrollbar.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/theme_light.css" type="text/css" id="skin_color">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/print.css" type="text/css" media="print"/>
    <!--[if IE 7]>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/plugins/font-awesome/css/font-awesome-ie7.min.css">
    <![endif]-->
    <!-- end: MAIN CSS -->
    <!-- start: CSS REQUIRED FOR THIS PAGE ONLY -->
    ${CSS_REQUIRED_FOR_THIS_PAGE_ONLY}
    <!-- end: CSS REQUIRED FOR THIS PAGE ONLY -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/images/favicon.ico" />
    <style>
        .logo-img-hu {
            float: left;
        }
        .pageheader {
            top:0;
            bottom:0;
            max-height:1000px;
            overflow:hidden;
            left: 0;
            right: 0;
            z-index:-1;
            background-image: url("${pageContext.request.contextPath}/assets/images/bannerinei.jpg");
            background-size: 100% auto;
        }
    </style>
    <sitemesh:write property='head'/>
</head>
<!-- end: HEAD -->
<!-- start: BODY -->
<body>
<!-- start: HEADER -->
<div class="navbar navbar-inverse navbar-fixed-top">
    <!-- start: TOP NAVIGATION CONTAINER -->
    <div class="container pageheader">
        <div class="navbar-header">
            <!-- start: RESPONSIVE MENU TOGGLER -->
            <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                <span class="clip-list-2"></span>
            </button>
            <!-- end: RESPONSIVE MENU TOGGLER -->
            <!-- start: LOGO -->
            <img class="logo-img-hu" src="${pageContext.request.contextPath}/assets/images/inei.png" height="50" width="210" alt="">
                <span class="navbar-brand">
                    REGISTROS - INEI
                </span>
            <!--
            <a class="navbar-brand" href="index.html">
                CLIP<i class="clip-clip"></i>ONE
            </a>-->
            <!-- end: LOGO -->
        </div>
        <div class="navbar-tools">
            <!-- start: TOP NAVIGATION MENU -->
            <ul class="nav navbar-right">
                <!-- start: USER DROPDOWN -->
                <%--<li class="current-user">
                    <a class="dropdown-toggle" href="javascript:void(0)">
                        <img src="${pageContext.request.contextPath}/assets/images/avatar-1-small.jpg" class="circle-img" alt="">
                        <span class="username">Erick Gonzales</span>
                    </a>
                </li>--%>
                <!-- end: USER DROPDOWN -->
                <!-- start: PAGE SIDEBAR TOGGLE -->
                <%--<li>
                    <a href="#" data-original-title="Logout" data-placement="bottom" class="btn tooltips"><i class="fa clip-switch"></i></a>
                </li>--%>
                <!-- end: PAGE SIDEBAR TOGGLE -->
            </ul>
            <!-- end: TOP NAVIGATION MENU -->
        </div>
    </div>
    <!-- end: TOP NAVIGATION CONTAINER -->
</div>
<!-- end: HEADER -->
<!-- start: MAIN CONTAINER -->
<div class="main-container">
    <div class="navbar-content">
        <!-- start: SIDEBAR -->
        <div class="main-navigation navbar-collapse collapse">
            <!-- start: MAIN MENU TOGGLER BUTTON -->
            <div class="navigation-toggler">
                <i class="clip-chevron-left"></i>
                <i class="clip-chevron-right"></i>
            </div>
            <!-- end: MAIN MENU TOGGLER BUTTON -->
            <!-- start: MAIN NAVIGATION MENU -->
            <ul class="main-navigation-menu">
                <li class="<c:if test="${ACTIVE_PAGE eq PAGINA_PRESENTACION}">active</c:if>">
                    <a href="presentacion.html"><i class="clip-home-3"></i>
                        <span class="title"> PRESENTACI&Oacute;N </span><span class="selected"></span>
                    </a>
                </li>
                <li class="<c:if test="${ACTIVE_PAGE eq PAGINA_REGISTRO_UNO or ACTIVE_PAGE eq PAGINA_REGISTRO_DOS}">active open</c:if>">
                    <a href="javascript:void(0)"><i class="clip-screen"></i>
                        <span class="title"> REGISTRO DE INFORMACI&Oacute;N </span><i class="icon-arrow"></i>
                        <span class="selected"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="<c:if test="${ACTIVE_PAGE eq PAGINA_REGISTRO_UNO}">active</c:if>">
                            <a href="registro1.html">
                                <span class="title"> Primer registro </span>
                            </a>
                        </li>
                        <li class="<c:if test="${ACTIVE_PAGE eq PAGINA_REGISTRO_DOS}">active</c:if>">
                            <a href="registro2.html">
                                <span class="title"> Segundo registro </span>
                            </a>
                        </li>
                        <li>
                            <a href="denuncia-delito.html">
                                <span class="title"> Tercer registro </span>
                            </a>
                        </li>
                        <li>
                            <a href="denuncia-delito.html">
                                <span class="title"> Cuarto registro </span>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="<c:if test="${ACTIVE_PAGE eq PAGINA_FICHA_TECNICA}">active open</c:if>">
                    <a href="javascript:void(0)"><i class="clip-pencil"></i>
                        <span class="title"> REPORTES </span><i class="icon-arrow"></i>
                        <span class="selected"></span>
                    </a>
                    <ul class="sub-menu">
                        <li class="<c:if test="${ACTIVE_PAGE eq PAGINA_FICHA_TECNICA}">active</c:if>">
                            <a href="denuncia-delito.html">
                                <span class="title"> Primer Reporte </span>
                            </a>
                            <a href="denuncia-delito.html">
                                <span class="title"> Segundo Reporte </span>
                            </a>
                            <a href="denuncia-delito.html">
                                <span class="title"> Tercer Reporte </span>
                            </a>
                        </li>
                    </ul>
                </li>
            </ul>
            <!-- end: MAIN NAVIGATION MENU -->
        </div>
        <!-- end: SIDEBAR -->
    </div>
    <!-- start: PAGE -->
    <div class="main-content">
        <div class="container">
            <!-- start: PAGE HEADER -->
            <div class="row">
                <div class="col-sm-12">
                    <!-- start: PAGE TITLE & BREADCRUMB -->
                    <ol class="breadcrumb">
                        ${ACTIVE_MENU}
                    </ol>
                    <c:if test="${not empty PAGE_TITLE}">
                        <div class="page-header">
                                ${PAGE_TITLE}
                        </div>
                    </c:if>
                    <!-- end: PAGE TITLE & BREADCRUMB -->
                </div>
            </div>
            <!-- end: PAGE HEADER -->
            <!-- start: PAGE CONTENT -->
            <div class="row">
                <div class="col-md-12">
                    <sitemesh:write property='body'/>
                </div>
            </div>
            <!-- end: PAGE CONTENT -->
        </div>
    </div>
    <!-- end: PAGE -->
</div>
<!-- end: MAIN CONTAINER -->
<!-- start: FOOTER -->
<div class="footer clearfix">
    <div class="footer-inner">
        Copyright &copy; 2015 - INEI.
    </div>
    <div class="footer-items">
        <span class="go-top"><i class="clip-chevron-up"></i></span>
    </div>
</div>
<!-- end: FOOTER -->
<!-- start: MAIN JAVASCRIPTS -->
<!--[if lt IE 9]>
<script src="${pageContext.request.contextPath}/assets/plugins/respond.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/excanvas.min.js"></script>
<script type=src="${pageContext.request.contextPath}/assets/plugins/jQuery-lib/1.10.2/jquery.min.js"></script>
<![endif]-->
<!--[if gte IE 9]><!-->
<script src="${pageContext.request.contextPath}/assets/plugins/jQuery-lib/2.0.3/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/assets/plugins/jquery-ui/jquery-ui-1.10.2.custom.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/blockUI/jquery.blockUI.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/iCheck/jquery.icheck.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/perfect-scrollbar/src/jquery.mousewheel.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/perfect-scrollbar/src/perfect-scrollbar.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/less/less-1.5.0.min.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/jquery-cookie/jquery.cookie.js"></script>
<script src="${pageContext.request.contextPath}/assets/plugins/bootstrap-colorpalette/js/bootstrap-colorpalette.js"></script>
<script src="${pageContext.request.contextPath}/assets/js/main.js"></script>
<!-- end: MAIN JAVASCRIPTS -->
<!-- start: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
${JAVASCRIPT_REQUERID_FOR_THIS_PAGE_ONLY}
<!-- end: JAVASCRIPTS REQUIRED FOR THIS PAGE ONLY -->
<c:choose>
    <c:when test="${not empty JAVASCRIPT_EXECUTE}">
        ${JAVASCRIPT_EXECUTE}
    </c:when>
    <c:otherwise>
        <script>
            jQuery(document).ready(function() {
                Main.init();
            });
        </script>
    </c:otherwise>
</c:choose>
</body>
<!-- end: BODY -->
</html>
