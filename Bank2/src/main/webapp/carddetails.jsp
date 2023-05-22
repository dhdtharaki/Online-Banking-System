<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Card Details</title>
<link href="css/table.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

  <meta charset="ISO-8859-1">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Maxim Bootstrap Template - Index</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="images/favicon.png" rel="icon">
  <link href="images/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="vendor/aos/aos.css" rel="stylesheet">
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
  <link href="vendor/swiper/swiper-bundle.min.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="css/style1.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: Maxim - v4.9.1
  * Template URL: https://bootstrapmade.com/maxim-free-onepage-bootstrap-theme/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="fixed-top d-flex align-items-center">
    <div class="container d-flex justify-content-between">

      <div class="logo">
        <h1><a href="home.jsp">Maxim</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav id="navbar" class="navbar">
        <ul>
          <li><a class="nav-link scrollto active" href="#">Home</a></li>
          <li><a class="nav-link scrollto" href="aboutus.jsp">About</a></li>
          <li><a class="nav-link scrollto" href="services.jsp">Services</a></li>
          <li><a class="nav-link scrollto " href="insertcard.jsp">Payment</a></li>
          <li><a class="nav-link scrollto" href="contactus.jsp">Contact</a></li>
        </ul>
        <i class="bi bi-list mobile-nav-toggle"></i>
      </nav><!-- .navbar -->

    </div>
  </header><!-- End Header -->
</head>
<body style ="background-color: rgb(5, 55, 73)">
<div class=" emp-profile">
<h2><b><i>CARD DETAILS</i></b></h2>
<table align = "center">
<c:forEach var="card" items="${carddetails}">
	<c:set var="cnum" value="${card.cnum}" />
	<c:set var="name" value="${card.name}" />
	<c:set var="nic" value="${card.nic}" />
	<c:set var="email" value="${card.email}" />
	<c:set var="phone" value="${card.phone}" />
	<c:set var="salary" value="${card.salary}" />
	<c:set var="ctype" value="${card.ctype}" />
	<tr>
		<td class="x"><b>Card number</b></td>
		<td class="y">${card.cnum}</td>
	</tr>
	<tr>
		<td class="x"><b>Customer Name</b></td>
		<td class="y">${card.name}</td>
	</tr>
	
	<tr>
		<td class="x"><b>Customer NIC</b></td>
		<td class="y">${card.nic}</td>
	</tr>
	
	<tr>
		<td class="x"><b>Customer Email</b></td>
		<td class="y">${card.email}</td>
	</tr>
	
	<tr>
		<td class="x"><b>Customer Phone</b></td>
		<td class="y">${card.phone}</td>
	</tr>
	
	<tr>
		<td class="x"><b>Customer Salary</b></td>
		<td class="y">${card.salary}</td>
	</tr>
	
	<tr>
		<td class="x"><b>Card Type</b></td>
		<td class="y">${card.ctype}</td>
	</tr>
</c:forEach>
</table>
<center>
<c:url value="updatecard.jsp" var="updatecard">
	<c:param name="cnum" value="${cnum}" />
	<c:param name="name" value="${name}" />
    <c:param name="nic" value="${nic}" />
    <c:param name="email" value="${email}" />
	<c:param name="phone" value="${phone}" />
	<c:param name="salary" value="${salary}" />
	<c:param name="ctype" value="${ctype}" />
	</c:url>
	
<a href="${updatecard}">
<input type="button" name="update"  class = "button" value="Update card details">
</a>

<c:url value="deletecard.jsp" var="deletecard">
	<c:param name="cnum" value="${cnum}" />
	<c:param name="name" value="${name}" />
    <c:param name="nic" value="${nic}" />
    <c:param name="email" value="${email}" />
	<c:param name="phone" value="${phone}" />
	<c:param name="salary" value="${salary}" />
	<c:param name="ctype" value="${ctype}" />
</c:url>

<a href="${deletecard}">
<input type="button" name="delete" class = "button" value="Delete card details">
</a></center>
</div>
</body>
</html>