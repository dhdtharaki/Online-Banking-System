<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
     <title>Card Deleting</title>
     	<meta name="viewport" content="width=device-width, initial-scale=1">
 <link href="css/text.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<%
	String cnum= request.getParameter("cnum");
	String name= request.getParameter("name");
	String nic= request.getParameter("nic");
	String email= request.getParameter("email");
	String phone= request.getParameter("phone");
	String salary= request.getParameter("salary");
	String ctype= request.getParameter("ctype");
%>
<div class="container">
     <header class="heading"> Deleting the card</header><hr></hr>
		<form action="deletecard" method="post">
		
			<div class="col-sm-12">
             <div class="row">
			     <div class="col-xs-4">
          	         <label class="mail">Card Number:</label> </div>
		         <div class="col-xs-8">
		             <input type="text"  name="cnum"  id="cnum" class="form-control " value= "<%= cnum %>" readonly>
             </div>
		      </div>
		 </div>
		<div class="col-sm-12">
             <div class="row">
			     <div class="col-xs-4">
          	         <label class="mail">Card Holder's Name :</label> </div>
		         <div class="col-xs-8">
		             <input type="text"  name="name"  id="fname" class="form-control " value= "<%= name %>" readonly>
             </div>
		      </div>
		 </div>
		 <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="mail" >NIC :</label></div>
			     <div class="col-xs-8"	>	 
			          <input type="text" name="nic"  id="nic" class="form-control" value=<%=nic %> readonly>
		         </div>
		     </div>
		 </div>
	<div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="mail" >Email :</label></div>
			     <div class="col-xs-8"	>	 
			          <input type="text" name="email"  id="email" class="form-control" value =<%=email %> readonly>
		         </div>
		     </div>
		 </div>
		 <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="mail" >Phone Number :</label></div>
			     <div class="col-xs-8"	>	 
			          <input type="text" name="phone"  id="phone" class="form-control"  value= <%=phone %> readonly>
		         </div>
		     </div>
		 </div>
		 <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="mail" >Salary :</label></div>
			     <div class="col-xs-8"	>	 
			          <input type="number" name="salary"  id="email" class="form-control" value =<%=salary %> readonly>
		         </div>
		     </div>
		 </div>
		 <div class="col-sm-12">
		     <div class ="row">
                 <div class="col-xs-4 ">
			       <label class="ctype">Card Type:</label>
				 </div>
			 
			     <div class="col-xs-4 visa">	 
				     <input type="radio" name="ctype"  id="ctype" value=<%=ctype %> checked>VISA
				 </div>
				 
				 <div class="col-xs-4 master">
				     <input type="radio"  name="ctype" id="ctype" value=<%=ctype %> >MASTER
			     </div>
			</div>
		  	 </div>
		        <button class = "sbutton" type="submit">Delete</button>
	<!-- 	<div>
			<label>Card number</label>
			<input type="text" name="cnum" value= "<%= cnum %>" readonly>
		</div>
		<div>
			<label>Name</label>
			<input type="text" name="name" value= "<%= name %>" readonly>
		</div>
		<div>
			<label>NIC Number</label>
			<input type="text" name="nic" value= "<%= nic %>" readonly>
		</div>
		<div>
			<label>Email</label>
			<input type="text" name="email" value= "<%= email %>"  readonly>
		</div>
		<div>
			<label>Phone Number</label>
			<input type="text" name="phone"  value= "<%= phone %>" readonly>
		</div>
		<div>
			<label>Monthly Salary</label>
			<input type="number" name="salary"  value= "<%= salary %>" readonly>
		</div>
		<div>
			<label>Card Type</label>
				<input type="radio" name="ctype"  value= "<%= ctype %>" checked readonly>
				<label >VISA</label>
				<input type="radio" name="ctype" value= "<%= ctype %>"readonly>
				<label>MASTER</label>
		</div>				
		<button type="submit">Delete Card</button>-->
	</form>
	</div>
</body>
</html>