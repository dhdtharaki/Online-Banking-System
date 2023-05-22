<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
     <title>Card Requesting Form</title>
     	<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/text.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body >
<div class="container">
     <header class="heading"> Requesting a card</header><hr></hr>
     <form action="insertcard" method="post">
     
         <div class="col-sm-12">
             <div class="row">
			     <div class="col-xs-4">
          	         <label class="mail">Card Holder's Name :</label> </div>
		         <div class="col-xs-8">
		             <input type="text"  name="name"  id="fname" class="form-control " required>
             </div>
		      </div>
		 </div>
		 <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="mail" >NIC :</label></div>
			     <div class="col-xs-8"	>	 
			          <input type="text" name="nic"  id="nic" class="form-control" required maxlength ='12'>
		         </div>
		     </div>
		 </div>
	<div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="mail" >Email :</label></div>
			     <div class="col-xs-8"	>	 
			          <input type="text" name="email"  id="email" class="form-control" required>
		         </div>
		     </div>
		 </div>
		 <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="mail" >Phone Number :</label></div>
			     <div class="col-xs-8"	>	 
			          <input type="text" name="phone"  id="phone" class="form-control" required maxlength = '10'>
		         </div>
		     </div>
		 </div>
		 <div class="col-sm-12">
		     <div class="row">
			     <div class="col-xs-4">
		             <label class="mail" >Salary :</label></div>
			     <div class="col-xs-8"	>	 
			          <input type="number" name="salary"  id="email" class="form-control" required>
		         </div>
		     </div>
		 </div>
		 <div class="col-sm-12">
		     <div class ="row">
                 <div class="col-xs-4 ">
			       <label class="ctype">Card Type:</label>
				 </div>
			 
			     <div class="col-xs-4 visa">	 
				     <input type="radio" name="ctype"  id="ctype" value="visa" checked>VISA
				 </div>
				 
				 <div class="col-xs-4 master">
				     <input type="radio"  name="ctype" id="ctype" value="master" >MASTER
			     </div>
			
		  	 </div></div>
		         <button class = "sbutton" type="submit">Request Card</button>

	</form>
	</div>
</body>
</html>