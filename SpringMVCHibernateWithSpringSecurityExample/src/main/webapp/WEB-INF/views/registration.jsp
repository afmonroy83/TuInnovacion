<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>User Registration Form</title>
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
                <a class="navbar-brand" href="index.html">Tu<span>Innovación</span></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="oi oi-menu"></span> Menu
                </button>

                <div class="collapse navbar-collapse" id="ftco-nav">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active"><a href="index.html" class="nav-link">Inicio</a></li>
                        <li class="nav-item"><a href="about.html" class="nav-link">Quienes somos</a></li>
                        <li class="nav-item"><a href="editUsers.jsp" class="nav-link">Inscribete</a></li>
                        <li class="nav-item"><a href="contact.html" class="nav-link">Contactanos</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <section class="hero-wrap hero-wrap-2 js-fullheight" style=" background-image: url('<c:url value='/static/images/image_6.jpg' />');" data-stellar-background-ratio="0.5">

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
        
            <div class="well lead">Registra el usuario</div>
            <form:form method="POST" modelAttribute="user" class="form-horizontal">
                <form:input type="hidden" path="id" id="id"/>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="firstName">Nombre</label>
                        <div class="col-md-7">
                            <form:input type="text" path="firstName" id="firstName" class="form-control input-sm"/>
                            <div class="has-error">
                                <form:errors path="firstName" class="help-inline"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="lastName">Apellido</label>
                        <div class="col-md-7">
                            <form:input type="text" path="lastName" id="lastName" class="form-control input-sm" />
                            <div class="has-error">
                                <form:errors path="lastName" class="help-inline"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="ssoId">Nombre de usuario</label>
                        <div class="col-md-7">
                            <c:choose>
                                <c:when test="${edit}">
                                    <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" disabled="true"/>
                                </c:when>
                                <c:otherwise>
                                    <form:input type="text" path="ssoId" id="ssoId" class="form-control input-sm" />
                                    <div class="has-error">
                                        <form:errors path="ssoId" class="help-inline"/>
                                    </div>
                                </c:otherwise>
                            </c:choose>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="password">Contraseña</label>
                        <div class="col-md-7">
                            <form:input type="password" path="password" id="password" class="form-control input-sm" />
                            <div class="has-error">
                                <form:errors path="password" class="help-inline"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="email">Correo</label>
                        <div class="col-md-7">
                            <form:input type="text" path="email" id="email" class="form-control input-sm" />
                            <div class="has-error">
                                <form:errors path="email" class="help-inline"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-group col-md-12">
                        <label class="col-md-3 control-lable" for="userProfiles">Roles</label>
                        <div class="col-md-7">
                            <form:select path="userProfiles" items="${roles}" multiple="true" itemValue="id" itemLabel="type" class="form-control input-sm" />
                            <div class="has-error">
                                <form:errors path="userProfiles" class="help-inline"/>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="row">
                    <div class="form-actions floatRight">
                        <c:choose>
                            <c:when test="${edit}">
                                <input type="submit" value="Update" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
                            </c:when>
                            <c:otherwise>
                                <input type="submit" value="Register" class="btn btn-primary btn-sm"/> or <a href="<c:url value='/list' />">Cancel</a>
                            </c:otherwise>
                        </c:choose>
                    </div>
                </div>
            </form:form>
        </div
    </body>
</html>