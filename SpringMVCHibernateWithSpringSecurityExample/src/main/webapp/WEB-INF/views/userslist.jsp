<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Lista de usuarios</title>
        <link href="<c:url value='/static/css/bootstrap.css' />" rel="stylesheet"></link>
        <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>

        <link rel="stylesheet" href="<c:url value='/static/css/open-iconic-bootstrap.min.css' />" media="screen">
        <link rel="stylesheet" href="<c:url value='/static/css/animate.css' />" media="screen">

        <link rel="stylesheet" href="<c:url value='/static/css/owl.carousel.min.css' />" media="screen">
        <link rel="stylesheet" href="<c:url value='/static/css/owl.theme.default.min.css' />" media="screen">
        <link rel="stylesheet" href="<c:url value='/static/css/magnific-popup.css' />" media="screen">

        <link rel="stylesheet" href="<c:url value='/static/css/aos.css' />" media="screen">

        <link rel="stylesheet" href="<c:url value='/static/css/ionicons.min.css' />" media="screen">

        <link rel="stylesheet" href="<c:url value='/static/css/bootstrap-datepicker.css' />" media="screen">
        <link rel="stylesheet" href="<c:url value='/static/css/jquery.timepicker.css' />" media="screen">


        <link rel="stylesheet" href="<c:url value='/static/css/flaticon.css' />" media="screen">
        <link rel="stylesheet" href="<c:url value='/static/css/icomoon.css' />" media="screen">
        <link rel="stylesheet" href="<c:url value='/static/css/style.css' />" media="screen">

    </head>

    <body>

        <nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
        <div class="container">
            <a class="navbar-brand" href="index.html"><span><spring:message code="app.title" /></span></a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="oi oi-menu"></span> Menu
            </button>

            <div class="collapse navbar-collapse" id="ftco-nav">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active"><a href="index.html" class="nav-link"><spring:message code="app.nav.home" /></a></li>
                    <li class="nav-item"><a href="about.html" class="nav-link"><spring:message code="app.nav.about" /></a></li>
                    <li class="nav-item"><a href="editUsers.jsp" class="nav-link"><spring:message code="app.nav.join" /></a></li>
                    <li class="nav-item"><a href="contact.html" class="nav-link"><spring:message code="app.nav.contact" /></a></li>
                    <li class="nav-item"><a href="?lang=en" class="nav-link"><spring:message code="app.lang.english" /></a></li>
                    <li class="nav-item"><a href="?lang=es" class="nav-link"><spring:message code="app.lang.spanish" /></a></li>
                </ul>
            </div>
        </div>
    </nav>
    <!-- END nav -->
        <section class="hero-wrap hero-wrap-2 js-fullheight" style=" background-image: url('<c:url value='/static/images/bg_2.jpg' />');" data-stellar-background-ratio="0.1">

            <div class="overlay"></div>
            <div class="container">
                <div class="row no-gutters slider-text js-fullheight align-items-end justify-content-start">
                    <div class="col-md-9 ftco-animate pb-5">
                        <h1 class="mb-3 bread"><strong>LISTA DE USUARIOS</strong>></h1>
                    </div>
                </div>
            </div>
        </section>
        <h1><%@include file="authheader.jsp" %></h1>
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading"><span class="lead"><h2>Lista de Usuarios</h2></span></div>
            <table class="table table-hover">
                <thead>
                    <tr>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Email</th>
                        <th>Nombre de Usuario</th>
                            <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
                            <th width="100"></th>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ADMIN')">
                            <th width="100"></th>
                            </sec:authorize>

                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${users}" var="user">
                        <tr>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.email}</td>
                            <td>${user.ssoId}</td>
                            <sec:authorize access="hasRole('ADMIN') or hasRole('DBA')">
                                <td><a href="<c:url value='/edit-user-${user.ssoId}' />" class="btn btn-success custom-width">edit</a></td>
                            </sec:authorize>
                            <sec:authorize access="hasRole('ADMIN')">
                                <td><a href="<c:url value='/delete-user-${user.ssoId}' />" class="btn btn-danger custom-width">delete</a></td>
                            </sec:authorize>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
        <sec:authorize access="hasRole('ADMIN')">
            <div class="well">
                <a href="<c:url value='/newuser' />" class="">Registrar Nuevo Usuario</a>
            </div>
        </sec:authorize>

    </body>
</html>